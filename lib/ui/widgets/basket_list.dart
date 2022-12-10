import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/item_basket_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/basket_item.dart';
import 'package:upnati/ui/widgets/main_container.dart';

class BasketList extends StatefulWidget {
  final ValueChanged<bool>? onAllSelectChange;
  final ValueChanged<double>? onAmountChange;
  final ValueChanged<double>? onDeliveryChange;
  final bool isAllSelected;
  final ValueChanged<PagingController>? onInit;
  final BasketListController? controller;
  const BasketList(
      {Key? key,
      this.onAmountChange,
      this.onDeliveryChange,
      this.isAllSelected = false,
      this.onInit,
      this.onAllSelectChange,
      this.controller})
      : super(key: key);

  @override
  State<BasketList> createState() => _BasketListState();
}

class _BasketListState extends State<BasketList> {
  late PagingController<int, ItemBasketResponse> _pageController;
  Map<String, bool> _selectedList = {};
  bool _isAllSelected = true;

  void _selectAll(bool all) {
    setState(() {
      _isAllSelected = all;
      _selectedList = _selectedList.map((key, value) => MapEntry(key, all));
    });
  }

  Map<String, bool> _getAllSelected() {
    return _selectedList;
  }

  void _fetchPage(int pageKey) async {
    // var isloading = context.read<BusinessCubit>().state.maybeWhen(
    //       orElse: () => false,
    //       loading: () => true,
    //     );
    // if (isloading) return;
    await context
        .read<BusinessCubit>()
        .getUserBasket(pageOrder: SortType.DESC.name, size: 10, page: pageKey);
  }

  @override
  void initState() {
    super.initState();
    widget.controller?.selectAll = _selectAll;
    widget.controller?.getAllSelected = _getAllSelected;
    _pageController = PagingController(firstPageKey: 0);
    widget.onInit?.call(_pageController);
    _pageController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    _isAllSelected = widget.isAllSelected;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successBasketResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.items?.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              if (pageBusinessResponse.items?.last == true) {
                _pageController.appendLastPage(
                    pageBusinessResponse.items?.content ??
                        <ItemBasketResponse>[]);
              } else {
                for (var e in (pageBusinessResponse.items?.content ?? [])) {
                  _selectedList[e.id ?? ''] = widget.isAllSelected;
                }
                _pageController.appendPage(
                    pageBusinessResponse.items?.content ?? [],
                    (pageBusinessResponse.items?.pageable?.pageNumber ?? 0) +
                        1);
              }
            }
          },
          error: (error) {
            _pageController.error = error;
          },
        );
      },
      child: PagedListView(
        shrinkWrap: true,
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        pagingController: _pageController,
        // scrollDirection: Axis.horizontal,
        builderDelegate: PagedChildBuilderDelegate<ItemBasketResponse>(
          noItemsFoundIndicatorBuilder: (context) => Center(
            child: Text('אין פריטים בסל ', style: AppTheme.regular(size: 28)),
          ),
          firstPageProgressIndicatorBuilder: (context) => const SpinKitCircle(
            color: AppColors.grayInput,
          ),
          animateTransitions: true,
          transitionDuration: const Duration(milliseconds: 350),
          itemBuilder: (context, item, index) => BasketItem(
            onAmountChange: widget.onAmountChange,
            onDeliveryChange: widget.onDeliveryChange,
            onSelect: (item, selected) {
              _selectedList[item.id ?? ''] = selected;
              if (_selectedList.keys.length ==
                      _pageController.itemList?.length ||
                  !selected) {
                var itemSelected =
                    _selectedList.values.where((element) => element).length ==
                        _pageController.itemList?.length;
                widget.onAllSelectChange?.call(itemSelected);
              }
            },
            item: item,
            isAllSelected: _selectedList[item.id ?? ''] ?? _isAllSelected,
            onRemove: () {
              _pageController.refresh();
            },
          ),
        ),
      ),
    );
  }
}

class BasketHistoryList extends StatefulWidget {
  const BasketHistoryList({Key? key}) : super(key: key);

  @override
  State<BasketHistoryList> createState() => _BasketHistoryListState();
}

class _BasketHistoryListState extends State<BasketHistoryList> {
  late PagingController<int, ItemResponse> _pageController;

  void _fetchPage(int pageKey) async {
    // var isloading = context.read<BusinessCubit>().state.maybeWhen(
    //       orElse: () => false,
    //       loading: () => true,
    //     );
    // if (isloading) return;
    await context.read<BusinessCubit>().getAllUserOrders(
        pageOrder: SortType.DESC.name,
        size: 10,
        page: pageKey,
        param: 'creationDate');
  }

  @override
  void initState() {
    super.initState();
    _pageController = PagingController(firstPageKey: 0);
    _pageController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successPageOrderResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              List<ItemResponse> list = pageBusinessResponse.content
                      ?.map((e) => e.items)
                      .expand<ItemResponse>((element) => element ?? [])
                      .toList() ??
                  [];
              if (pageBusinessResponse.last == true) {
                _pageController.appendLastPage(list);
              } else {
                _pageController.appendPage(
                    list, (pageBusinessResponse.pageable?.pageNumber ?? 0) + 1);
              }
            }
            setState(() {});
          },
          error: (error) {
            _pageController.error = error;
            setState(() {});
          },
        );
      },
      child: _pageController.itemList?.isEmpty == true
          ? Center(
              child:
                  Text('אין היסטורית קניות', style: AppTheme.regular(size: 28)),
            )
          : PagedListView(
              // shrinkWrap: true,
              primary: false,
              // physics: const NeverScrollableScrollPhysics(),
              pagingController: _pageController,
              // scrollDirection: Axis.horizontal,
              builderDelegate: PagedChildBuilderDelegate<ItemResponse>(
                noItemsFoundIndicatorBuilder: (context) => const Center(
                  child: Text('No items found'),
                ),
                itemBuilder: (context, item, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MainContainer(
                    opacity: .36,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 22),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.gray),
                                borderRadius: BorderRadius.circular(5)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: item.imageUrls?.isEmpty == true
                                  ? Container(
                                      color: AppColors.text.withOpacity(.14),
                                      child: Center(
                                        child: Image.asset(
                                          Images.icEmptyBag,
                                          height: 65,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    )
                                  : Image.network(
                                      item.imageUrls?.first ?? '',
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(LocaleKeys.basket_info_acquired.tr(),
                                        style: AppTheme.bold(size: 12)),
                                    Text(
                                        ' 10 בדצמבר 2021 - 12:30', //must be changed date
                                        style: AppTheme.semiLight(size: 10)),
                                  ],
                                ),
                                Text(item.name ?? '',
                                    style: AppTheme.semiLight(size: 14)),
                                Text(item.description?.full ?? '',
                                    maxLines: 2,
                                    style: AppTheme.regular(size: 10)),
                                Text('נעלי מורן', //must be changed category
                                    style: AppTheme.semiLight(size: 10)
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                                Text.rich(
                                  TextSpan(
                                    text: '${item.price?.toStringAsFixed(2)} ',
                                    style: AppTheme.bold(size: 16),
                                    children: [
                                      TextSpan(
                                        text: LocaleKeys.basket_info_nis
                                            .tr(args: ['']),
                                        style: AppTheme.bold(size: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}

class BasketListController {
  void Function(bool all)? selectAll;
  Map<String, bool> Function()? getAllSelected;
}

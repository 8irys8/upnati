import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/item_basket_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/basket_list.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/custom_selector.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class PurchaseHistoryScreen extends StatefulWidget with AutoRouteWrapper {
  final int? selectedTab;

  const PurchaseHistoryScreen({Key? key, this.selectedTab}) : super(key: key);

  @override
  State<PurchaseHistoryScreen> createState() => _PurchaseHistoryScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _PurchaseHistoryScreenState extends State<PurchaseHistoryScreen> {
  int _selectedIndex = 1;
  late PageController _pageController;
  bool selectedItem = true;
  List<ItemBasketResponse> _items = <ItemBasketResponse>[];
  final ValueNotifier<double> _amountNotifier = ValueNotifier(0);
  final ValueNotifier<double> _deliveryNotifier = ValueNotifier(0);
  final ValueNotifier<double> _totalSumNotifier = ValueNotifier(0);
  PagingController? _pagingController;
  bool? _isFetched = false;
  BasketListController? _basketListController = BasketListController();

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedTab ?? 1;
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
          title: Column(
            children: [
              Image.asset(
                Images.icBasketPurple,
                height: 26,
              ),
              const SizedBox(height: 3),
              Text(
                LocaleKeys.basket_info_my_basket.tr(),
                style: AppTheme.bold(size: 13),
              ),
            ],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TabButton(
                      title: LocaleKeys.basket_info_shop_history.tr(),
                      selectedIndex: 0,
                      isLeft: false,
                      selectedPage: _selectedIndex,
                      onPressed: () => _changeIndex(0),
                    ),
                  ),
                  const SizedBox(
                    width: 35,
                  ),
                  Expanded(
                    child: TabButton(
                      title: LocaleKeys.basket_info_my_basket_btn.tr(),
                      selectedIndex: 1,
                      isLeft: true,
                      selectedPage: _selectedIndex,
                      onPressed: () => _changeIndex(1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: _pageController,
                children: [
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 26),
                      child: BasketHistoryList()),
                  //second page
                  BlocListener<BusinessCubit, BusinessState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        successBasketResponse: (basketResponse) {
                          _amountNotifier.value = 0;
                          _deliveryNotifier.value = 0;
                          _totalSumNotifier.value = 0;
                          setState(() {
                            _items = [...basketResponse.items?.content ?? []];
                            _isFetched = true;
                          });
                        },
                      );
                    },
                    child: _items.isEmpty && _isFetched == true
                        ? Center(
                            child: Text('אין פריטים בסל',
                                style: AppTheme.regular(size: 28)),
                          )
                        : SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomSelector(
                                          value: selectedItem,
                                          onTap: () {
                                            setState(() {
                                              selectedItem = !selectedItem;
                                            });
                                            _basketListController?.selectAll
                                                ?.call(selectedItem);
                                            WidgetsBinding.instance
                                                .addPostFrameCallback((_) {
                                              _amountNotifier.value = 0;
                                              _deliveryNotifier.value = 0;
                                              _totalSumNotifier.value = 0;
                                              _pagingController?.refresh();
                                            });
                                          }),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        LocaleKeys.basket_info_all.tr(),
                                        style: AppTheme.semiLight(size: 12),
                                      ),
                                    ],
                                  ),
                                  BasketList(
                                    controller: _basketListController,
                                    onAllSelectChange: (value) {
                                      setState(() {
                                        selectedItem = value;
                                      });
                                    },
                                    isAllSelected: selectedItem,
                                    onInit: (value) =>
                                        _pagingController = value,
                                    onAmountChange: (value) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        _amountNotifier.value =
                                            _amountNotifier.value + value;
                                        _totalSumNotifier.value =
                                            _amountNotifier.value +
                                                _deliveryNotifier.value;
                                      });
                                    },
                                    onDeliveryChange: (value) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        _deliveryNotifier.value =
                                            _deliveryNotifier.value + value;
                                        _totalSumNotifier.value =
                                            _amountNotifier.value +
                                                _deliveryNotifier.value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                            horizontal: 100)
                                        .copyWith(bottom: 10, top: 20),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              LocaleKeys.basket_info_for_payment
                                                  .tr(),
                                              style:
                                                  AppTheme.semiLight(size: 12),
                                            ),
                                            ValueListenableBuilder<double>(
                                                valueListenable:
                                                    _amountNotifier,
                                                builder:
                                                    (context, value, child) {
                                                  return Text.rich(TextSpan(
                                                    text: _items.isEmpty
                                                        ? '0'
                                                        : value
                                                            .toStringAsFixed(2),
                                                    // '${_items.map((e) => (e.amount ?? 0) * (e.price ?? 0)).reduce((value, element) => value + element).toStringAsFixed(2)} ',
                                                    style:
                                                        AppTheme.bold(size: 18),
                                                    children: [
                                                      TextSpan(
                                                        text: LocaleKeys
                                                            .basket_info_nis
                                                            .tr(args: ['']),
                                                        style: AppTheme.bold(
                                                            size: 10),
                                                      ),
                                                    ],
                                                  ));
                                                }),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              LocaleKeys.buy_details_shipping
                                                  .tr(),
                                              style:
                                                  AppTheme.semiLight(size: 12),
                                            ),
                                            ValueListenableBuilder<double>(
                                                valueListenable:
                                                    _deliveryNotifier,
                                                builder:
                                                    (context, value, child) {
                                                  return Text.rich(TextSpan(
                                                    text: _items.isEmpty
                                                        ? '0'
                                                        : value
                                                            .toStringAsFixed(2),
                                                    // '${_items.map((e) => (e.deliveryPrice ?? 0)).reduce((value, element) => value + element).toStringAsFixed(2)} ',
                                                    style:
                                                        AppTheme.bold(size: 18),
                                                    children: [
                                                      TextSpan(
                                                        text: LocaleKeys
                                                            .basket_info_nis
                                                            .tr(args: ['']),
                                                        style: AppTheme.bold(
                                                            size: 10),
                                                      ),
                                                    ],
                                                  ));
                                                }),
                                          ],
                                        ),
                                        const Divider(
                                          height: 5,
                                          color: AppColors.text,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              LocaleKeys.buy_details_total.tr(),
                                              style:
                                                  AppTheme.semiLight(size: 12),
                                            ),
                                            ValueListenableBuilder<double>(
                                                valueListenable:
                                                    _totalSumNotifier,
                                                builder:
                                                    (context, value, child) {
                                                  return Text.rich(TextSpan(
                                                    text: _items.isEmpty
                                                        ? '0'
                                                        : value
                                                            .toStringAsFixed(2),
                                                    // '${_items.map((e) => (e.amount ?? 0) * (e.price ?? 0) + (e.deliveryPrice ?? 0)).reduce((value, element) => value + element).toStringAsFixed(2)} ',
                                                    style:
                                                        AppTheme.bold(size: 18),
                                                    children: [
                                                      TextSpan(
                                                        text: LocaleKeys
                                                            .basket_info_nis
                                                            .tr(args: ['']),
                                                        style: AppTheme.bold(
                                                            size: 10),
                                                      ),
                                                    ],
                                                  ));
                                                }),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  _isFetched == false
                                      ? const SizedBox()
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: CustomButton(
                                            title: LocaleKeys
                                                .basket_info_for_payment
                                                .tr(),
                                            borderRadius: 25,
                                            color: AppColors.darkBlueLight,
                                            innerShadow: true,
                                            onPressed: () {
                                              var orderedItems =
                                                  _basketListController
                                                          ?.getAllSelected
                                                          ?.call() ??
                                                      {};

                                              print(orderedItems);
                                              var map = <dynamic, int>{};
                                              for (var element in _items) {
                                                if (orderedItems[element.id] ==
                                                    false) {
                                                  continue;
                                                }
                                                map[element.id] =
                                                    element.amount ?? 0;
                                              }

                                              context.router.push(
                                                  BuyDetailsScreen(
                                                      order: ItemCollection(
                                                          amount: map)));
                                            },
                                          ),
                                        )
                                ],
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
          ],
        )),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final int selectedIndex;
  final int selectedPage;
  final VoidCallback onPressed;
  final bool? isLeft;
  const TabButton(
      {Key? key,
      required this.title,
      required this.selectedIndex,
      required this.selectedPage,
      required this.onPressed,
      this.isLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: selectedPage == selectedIndex
                ? AppColors.darkBlueLight
                : AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(19),
              topRight: const Radius.circular(19),
              bottomRight: isLeft == true
                  ? const Radius.circular(0)
                  : const Radius.circular(19),
              bottomLeft: isLeft == true
                  ? const Radius.circular(19)
                  : const Radius.circular(0),
            ),
            border: Border.all(color: AppColors.white),
            boxShadow: [
              BoxShadow(
                color: AppColors.text.withOpacity(0.16),
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ]),
        child: Center(
          child: Text(title,
              style: AppTheme.bold(
                  size: 18,
                  color: selectedPage == selectedIndex
                      ? AppColors.white
                      : AppColors.text)),
        ),
      ),
    );
  }
}

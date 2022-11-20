import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/description.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/category_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/list_of_shops.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class MarketPlaceScreen extends StatefulWidget with AutoRouteWrapper {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<BusinessCubit>(
          create: (context) => GetIt.I<BusinessCubit>()),
    ], child: this);
  }
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  final PagingController<int, ItemResponse> _pageController =
      PagingController<int, ItemResponse>(firstPageKey: 0);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getAllItems(
        param: 'creationDate',
        pageOrder: SortType.ASC.name,
        size: 10,
        page: pageKey);
  }

  @override
  void initState() {
    super.initState();
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
    return SideBarWrapper(
      child: Scaffold(
          bottomNavigationBar: const CustomNavigatorBar(),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const SearchField(),
                        const SizedBox(
                          height: 27,
                        ),
                        Container(
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.gray),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child:
                                  Image.asset(Images.cubik, fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.product_info_select_lots.tr(),
                                style: AppTheme.regular(
                                  size: 15,
                                )),
                            GestureDetector(
                              onTap: () =>
                                  context.router.push(const AllShopsScreen()),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 13),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                      bottomLeft: Radius.circular(19)),
                                  color: Color(0xffE1E6ED),
                                ),
                                child: Text(
                                    LocaleKeys.product_info_to_all_shops.tr(),
                                    style: AppTheme.regular(
                                      size: 8,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const SizedBox(
                    height: 100,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListOfShops()),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 37, vertical: 12),
                    child: Text(LocaleKeys.business_register_products.tr(),
                        style: AppTheme.regular(
                          size: 15,
                        )),
                  ),
                  BlocListener<BusinessCubit, BusinessState>(
                    listener: (context, state) {
                      state.whenOrNull(
                        successPageItemResponse: (itemResponse) {
                          if (itemResponse.empty == true) {
                            _pageController.appendLastPage([]);
                          } else {
                            if (itemResponse.last == true) {
                              _pageController
                                  .appendLastPage(itemResponse.content ?? []);
                            } else {
                              _pageController.appendPage(
                                  itemResponse.content ?? [],
                                  (itemResponse.pageable?.pageNumber ?? 0) + 1);
                            }
                          }
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                      ).copyWith(bottom: 24),
                      child: PagedGridView(
                        pagingController: _pageController,
                        primary: false,
                        shrinkWrap: true,
                        builderDelegate:
                            PagedChildBuilderDelegate<ItemResponse>(
                          itemBuilder: (context, item, index) =>
                              AddEmptyProductContainer(
                            item: item,
                            title: item.name,
                            desc: item.description?.full,
                            price: item.price?.toStringAsFixed(2),
                            image: item.imageUrls?.isEmpty == true
                                ? null
                                : item.imageUrls?.first,
                          ),
                          firstPageErrorIndicatorBuilder: (context) =>
                              const Center(
                            child: Text('Error'),
                          ),
                          newPageProgressIndicatorBuilder: (context) =>
                              const Center(
                            child: CircularProgressIndicator(),
                          ),
                          noItemsFoundIndicatorBuilder: (context) =>
                              const Center(
                            child: Text('No items found'),
                          ),
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                          crossAxisSpacing: 37,
                          mainAxisSpacing: 34,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

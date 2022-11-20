import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class ShopHomeScreen extends StatefulWidget with AutoRouteWrapper {
  final BusinessResponse business;
  const ShopHomeScreen({Key? key, required this.business}) : super(key: key);

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => GetIt.I<BusinessCubit>()),
      BlocProvider(create: (context) => GetIt.I<UserCubit>()),
    ], child: this);
  }
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  final PagingController<int, ItemResponse> _pageController =
      PagingController<int, ItemResponse>(firstPageKey: 0);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getAllItemsOfBusiness(
        id: widget.business.id ?? '',
        param: 'price',
        pageOrder: SortType.ASC.name,
        size: 10,
        page: pageKey);
  }

  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUserDetails();
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
        ),
        bottomNavigationBar: CustomNavigatorBar(
            // initialIndex: 0,
            ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // Padding(
              //   padding:
              //       const EdgeInsets.symmetric(horizontal: 45.0, vertical: 8),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Text(LocaleKeys.business_register_products.tr(),
              //           style: AppTheme.regular(size: 14)),
              //       Transform.translate(
              //         offset: const Offset(0, -5),
              //         child: Container(
              //           height: 10,
              //           width: 1,
              //           color: AppColors.text.withOpacity(0.75),
              //         ),
              //       ),
              //       Text(LocaleKeys.business_register_reviews.tr(),
              //           style: AppTheme.regular(
              //               size: 14, color: AppColors.text.withOpacity(0.44))),
              //       Transform.translate(
              //         offset: const Offset(0, -5),
              //         child: Container(
              //           height: 10,
              //           width: 1,
              //           color: AppColors.text.withOpacity(0.75),
              //         ),
              //       ),
              //       Text(LocaleKeys.business_register_about.tr(),
              //           style: AppTheme.regular(
              //               size: 14, color: AppColors.text.withOpacity(0.44))),
              //       Transform.translate(
              //         offset: const Offset(0, -5),
              //         child: Container(
              //           height: 10,
              //           width: 1,
              //           color: AppColors.text.withOpacity(0.75),
              //         ),
              //       ),
              //       Text(LocaleKeys.business_register_policy.tr(),
              //           style: AppTheme.regular(
              //               size: 14, color: AppColors.text.withOpacity(0.44))),
              //     ],
              //   ),
              // ),
              // const Divider(
              //   color: AppColors.gray,
              //   thickness: 0.2,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.business.imageUrls?.isNotEmpty == true
                            ? Image.network(
                                widget.business.imageUrls?.first ?? '',
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              )
                            : Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: const Color(0xffC7C7C7),
                                    border: Border.all(
                                        color:
                                            AppColors.white.withOpacity(.86)),
                                    borderRadius: BorderRadius.circular(150)),
                                child: SvgPicture.asset(
                                  Svgs.icBusinessEmpty,
                                  height: 30,
                                  fit: BoxFit.scaleDown,
                                )),
                        const SizedBox(height: 4),
                        BlocBuilder<UserCubit, UserState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                                successUserStateResponse: (response) =>
                                    response.businessId == widget.business.id
                                        ? GestureDetector(
                                            onTap: () => context.router.push(
                                                MarketDetailScreen(
                                                    businessResponse:
                                                        widget.business)),
                                            child: SvgPicture.asset(
                                                Svgs.icEditGray),
                                          )
                                        : const SizedBox(),
                                orElse: () => const SizedBox());
                          },
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(widget.business.name ?? '',
                                  style: AppTheme.bold(
                                    size: 18,
                                  )),
                              const SizedBox(
                                width: 24,
                              ),
                              // BlocBuilder<UserCubit, UserState>(
                              //   builder: (context, state) {
                              //     return state.maybeWhen(
                              //         successUserStateResponse: (response) =>
                              //             response.businessId ==
                              //                     widget.business.id
                              //                 ? GestureDetector(
                              //                     onTap: () => context.router
                              //                         .push(MarketDetailScreen(
                              //                             businessResponse:
                              //                                 widget.business)),
                              //                     child: SvgPicture.asset(
                              //                         Svgs.icEditGray),
                              //                   )
                              //                 : const SizedBox(),
                              //         orElse: () => const SizedBox());
                              //   },
                              // ),
                            ],
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(Svgs.icStarYellowMarked,
                                  height: 14),
                              const SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset(Svgs.icStarYellowMarked,
                                  height: 14),
                              const SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset(Svgs.icStarYellowMarked,
                                  height: 14),
                              const SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset(Svgs.icStarYellowUnmarked,
                                  height: 14),
                              const SizedBox(
                                width: 3,
                              ),
                              SvgPicture.asset(Svgs.icStarYellowUnmarked,
                                  height: 14),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                  '(234 ${LocaleKeys.business_register_reviews.tr()})',
                                  style: AppTheme.regular(
                                      size: 12, color: AppColors.textGray)),
                            ],
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Container(
                              //   decoration: BoxDecoration(
                              //     color: AppColors.rozeLightbtn,
                              //     borderRadius: BorderRadius.circular(12),
                              //     boxShadow: [
                              //       BoxShadow(
                              //         color: Colors.black.withOpacity(0.16),
                              //         blurRadius: 6,
                              //         offset: const Offset(0, 3),
                              //       ),
                              //     ],
                              //   ),
                              //   child: Padding(
                              //     padding: const EdgeInsets.symmetric(
                              //         horizontal: 8, vertical: 7),
                              //     child: Row(children: [
                              //       SvgPicture.asset(Svgs.icHeartWhite),
                              //       const SizedBox(
                              //         width: 3,
                              //       ),
                              //       Text(
                              //           LocaleKeys
                              //               .business_register_addToFavorites
                              //               .tr(),
                              //           style: AppTheme.regular(
                              //               size: 10, color: AppColors.white))
                              //     ]),
                              //   ),
                              // ),
                              // const SizedBox(
                              //   width: 13,
                              // ),
                              Container(
                                decoration: BoxDecoration(
                                  color: AppColors.darkBlue,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      blurRadius: 6,
                                      offset: const Offset(0, 3),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 7.5),
                                  child: Text(
                                      LocaleKeys
                                          .business_register_contactToStore
                                          .tr(),
                                      style: AppTheme.regular(
                                          size: 10, color: AppColors.white)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    widget.business.description?.full ?? '',
                    textAlign: TextAlign.right,
                    style: AppTheme.regular(
                      size: 12,
                      color: AppColors.textGray,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 13,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 14, left: 37, right: 37),
                child: SearchField(),
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
                          _pageController.appendPage(itemResponse.content ?? [],
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
                    builderDelegate: PagedChildBuilderDelegate<ItemResponse>(
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
                      firstPageErrorIndicatorBuilder: (context) => const Center(
                        child: Text('Error'),
                      ),
                      newPageProgressIndicatorBuilder: (context) =>
                          const Center(
                        child: CircularProgressIndicator(),
                      ),
                      noItemsFoundIndicatorBuilder: (context) => const Center(
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
      ),
    );
  }
}

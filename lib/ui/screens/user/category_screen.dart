import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class CategoryScreen extends StatefulWidget with AutoRouteWrapper {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BusinessCubit>(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigatorBar(
          initialIndex: 1,
        ),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 21),
                const SearchField(),
                const SizedBox(height: 18),
                Text(LocaleKeys.product_info_all_categories.tr(),
                    style: AppTheme.regular(size: 20)),
                const SizedBox(height: 23),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            context.router.push(const CategoryDetailScreen()),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                      bottomLeft: Radius.circular(19)),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.16),
                                      blurRadius: 6,
                                      offset: const Offset(0, 3),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(Images.bodyHealthImg),
                                  const SizedBox(height: 6),
                                  Text(
                                      LocaleKeys
                                          .product_info_body_health_category
                                          .tr(),
                                      style: AppTheme.semiLight(size: 17))
                                ],
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.appliancesImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_electronic_category
                                        .tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.onlineLibraryImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_books_category.tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.clothesImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_clothes_category
                                        .tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.petsImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_animal_category
                                        .tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            context.router.push(const CategoryDetailScreen()),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                      bottomLeft: Radius.circular(19)),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.16),
                                      blurRadius: 6,
                                      offset: const Offset(0, 3),
                                    )
                                  ]),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(Images.kitchenImg),
                                  const SizedBox(height: 6),
                                  Text(
                                      LocaleKeys.product_info_kitchen_category
                                          .tr(),
                                      style: AppTheme.semiLight(size: 17))
                                ],
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.nailPolishImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_beauty_category
                                        .tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(19),
                                    topRight: Radius.circular(19),
                                    bottomLeft: Radius.circular(19)),
                                color: AppColors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(Images.pacifierImg),
                                const SizedBox(height: 6),
                                Text(
                                    LocaleKeys.product_info_soska_category.tr(),
                                    style: AppTheme.semiLight(size: 17))
                              ],
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

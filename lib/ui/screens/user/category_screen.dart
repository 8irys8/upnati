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
  void initState() {
    super.initState();
    context.read<BusinessCubit>().getBusinessCategory();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigatorBar(
          initialIndex: 1,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 21),
                const SearchField(),
                const SizedBox(height: 18),
                Text(LocaleKeys.product_info_all_categories.tr(),
                    style: AppTheme.regular(size: 20)),
                const SizedBox(height: 24),
                Expanded(
                  child: BlocBuilder<BusinessCubit, BusinessState>(
                    builder: (context, state) {
                      // print(state);
                      return state.maybeWhen(
                        orElse: () => const Text('No items found'),
                        successBusinessMap: (mapInfoResponse) {
                          // print(mapInfoResponse);
                          return GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1,
                              crossAxisSpacing: 35,
                              mainAxisSpacing: 30,
                            ),
                            itemBuilder: (context, index) {
                              var cat = mapInfoResponse[index];

                              return GestureDetector(
                                onTap: () => context.router
                                    .push(const CategoryDetailScreen()),
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(19),
                                            topRight: Radius.circular(19),
                                            bottomLeft: Radius.circular(19)),
                                        color: AppColors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black.withOpacity(.16),
                                            blurRadius: 6,
                                            offset: const Offset(0, 3),
                                          )
                                        ]),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.network(
                                          'https://klike.net/uploads/posts/2019-05/1556708032_1.jpg',
                                          height: 70,
                                        ),
                                        // Image.network(cat?.link ?? ''),
                                        const SizedBox(height: 6),
                                        Text(cat?.name ?? '',
                                            style: AppTheme.semiLight(size: 17))
                                      ],
                                    )),
                              );
                            },
                            itemCount: mapInfoResponse.length,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

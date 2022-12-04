import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
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
    context.read<BusinessCubit>().getItemCategory();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: BlocListener<BusinessCubit, BusinessState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (err) {
              if (err is AppExceptions) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(err.message ?? ''),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Something went wrong'),
                  ),
                );
              }
            },
          );
        },
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
                                  onTap: () => context.router.push(
                                      CategoryDetailScreen(category: cat)),
                                  child: Image.network(cat?.imageUrl ?? ''),
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
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/category_model.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class CategoryDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final CategoryModel? category;
  const CategoryDetailScreen({Key? key, this.category}) : super(key: key);

  @override
  State<CategoryDetailScreen> createState() => _CategoryDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _CategoryDetailScreenState extends State<CategoryDetailScreen> {
  final PagingController<int, ItemResponse> _pageController =
      PagingController<int, ItemResponse>(firstPageKey: 0);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getItemsByCategory(
        cat: widget.category?.id ?? '',
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
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 7, left: 37, right: 37),
                child: SearchField(),
              ),
              Text(widget.category?.name ?? '', style: AppTheme.bold(size: 25)),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: BlocListener<BusinessCubit, BusinessState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      error: (err) {
                        if (err.error is AppExceptions) {
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
                        firstPageErrorIndicatorBuilder: (context) =>
                            const Center(
                          child: Text('Error'),
                        ),
                        newPageProgressIndicatorBuilder: (context) =>
                            const Center(
                          child: SpinKitCircle(color: AppColors.darkBlueLight),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

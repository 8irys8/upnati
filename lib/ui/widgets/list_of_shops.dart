import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/description.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/category_container.dart';

class ListOfShops extends StatefulWidget {
  const ListOfShops({Key? key}) : super(key: key);

  @override
  State<ListOfShops> createState() => _ListOfShopsState();
}

class _ListOfShopsState extends State<ListOfShops> {
  final PagingController<int, BusinessResponse> _pageController =
      PagingController<int, BusinessResponse>(firstPageKey: 1);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getAllBusinesses(
        param: 'name', pageOrder: SortType.ASC.name, size: 10, page: pageKey);
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
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successPageBusinessResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              if (pageBusinessResponse.last == true) {
                _pageController.appendLastPage(pageBusinessResponse.content);
              } else {
                _pageController.appendPage(pageBusinessResponse.content,
                    (pageBusinessResponse.pageable?.pageNumber ?? 0) + 1);
              }
            }
          },
        );
      },
      child: PagedListView(
        pagingController: _pageController,
        scrollDirection: Axis.horizontal,
        builderDelegate: PagedChildBuilderDelegate<BusinessResponse>(
          noItemsFoundIndicatorBuilder: (context) => const Center(
            child: Text('No items found'),
          ),
          itemBuilder: (context, item, index) => Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                CategoryContainer(
                    child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 20, 8, 12),
                  child: item.imageUrls?.isEmpty == true
                      ? const SizedBox(
                          height: 40,
                        )
                      : Container(
                          width: 60,
                          height: 54,
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 8,
                            right: 8,
                          ),
                          child: Image.network(
                            item.imageUrls?.first ?? '',
                            // height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                )),
                Positioned(
                    right: -14,
                    top: -4,
                    child: Image.asset(
                      Images.roofImg,
                      height: 38,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridOfShops extends StatefulWidget {
  const GridOfShops({Key? key}) : super(key: key);

  @override
  State<GridOfShops> createState() => _GridOfShopsState();
}

class _GridOfShopsState extends State<GridOfShops> {
  final PagingController<int, BusinessResponse> _pageController =
      PagingController<int, BusinessResponse>(firstPageKey: 1);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getAllBusinesses(
        param: 'name', pageOrder: SortType.ASC.name, size: 10, page: pageKey);
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
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successPageBusinessResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              if (pageBusinessResponse.last == true) {
                _pageController.appendLastPage(pageBusinessResponse.content);
              } else {
                _pageController.appendPage(pageBusinessResponse.content,
                    (pageBusinessResponse.pageable?.pageNumber ?? 0) + 1);
              }
            }
          },
        );
      },
      child: PagedGridView(
        pagingController: _pageController,
        primary: false,
        shrinkWrap: true,
        builderDelegate: PagedChildBuilderDelegate<BusinessResponse>(
          itemBuilder: (context, item, index) => GestureDetector(
            onTap: () => context.router.push(const ShopHomeScreen()),
            child: CategoryContainer(
                withRoof: true,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
                  child: item.imageUrls?.isEmpty == true
                      ? const SizedBox(
                          height: 40,
                        )
                      : Image.network(
                          item.imageUrls?.first ?? '',
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                )),
          ),
          firstPageErrorIndicatorBuilder: (context) => const Center(
            child: Text('Error'),
          ),
          newPageProgressIndicatorBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
          noItemsFoundIndicatorBuilder: (context) => const Center(
            child: Text('No items found'),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 34,
        ),
      ),
    );
  }
}

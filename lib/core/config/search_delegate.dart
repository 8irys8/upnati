import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:upnati/core/config/debouncer.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';

class CustomSearchDelegate extends SearchDelegate {
  final BusinessCubit _businessCubit;

  CustomSearchDelegate(this._businessCubit);

  final Debouncer _debouncer =
      Debouncer(delay: const Duration(milliseconds: 500));

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.text),
        onPressed: () => close(context, null),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.clear,
          color: AppColors.text,
        ),
        onPressed: () => query = '');
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.length < 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'אין תוצאות חיפוש',
                  style: AppTheme.regular(size: 28),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      );
    }

    _debouncer(() {
      _businessCubit.search(query: query, size: 10);
    });

    return BlocListener<BusinessCubit, BusinessState>(
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
        );
      },
      child: BlocBuilder<BusinessCubit, BusinessState>(
          bloc: _businessCubit,
          builder: (context, state) {
            return state.maybeWhen(
                loading: () => const Padding(
                      padding: EdgeInsets.only(left: 16, top: 16),
                      child: SpinKitCircle(
                        color: AppColors.darkBlue,
                        size: 30,
                      ),
                    ),
                successSearchResponse: (search) {
                  if (search.item?.empty == true) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: Text(
                            'אין תוצאות חיפוש',
                            style: AppTheme.regular(size: 28),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: ListView.builder(
                      itemCount: search.item?.numberOfElements ?? 0,
                      itemBuilder: (context, index) {
                        var item = search.item?.content?[index];
                        var name = item?.name ?? '';
                        var image = item?.imageUrls?.first;

                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          child: ListTile(
                            title: Text(name),
                            leading: image != null
                                ? ClipRRect(
                                    borderRadius: BorderRadius.circular(150),
                                    child: Image.network(
                                      image,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Container(
                                    height: 50,
                                    width: 50,
                                    color: Colors.grey,
                                  ),
                            onTap: () {
                              context.router
                                  .push(ProductMainScreen(item: item));
                            },
                          ),
                        );
                      },
                    ),
                  );
                },
                orElse: () => const SizedBox());
          }),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length < 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.search, size: 60, color: AppColors.darkBlue),
                const SizedBox(height: 12),
                Text(
                  'תוצאות החיפוש יהיו גלויות\nאחרי הזנת 2 תווים',
                  style: AppTheme.semiLight(size: 18),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      );
    }

    _debouncer(() {
      _businessCubit.search(query: query, size: 10);
    });

    return BlocBuilder<BusinessCubit, BusinessState>(
        bloc: _businessCubit,
        builder: (context, state) {
          return state.maybeWhen(
              loading: () => const Padding(
                    padding: EdgeInsets.only(left: 16, top: 16),
                    child: SpinKitCircle(
                      color: AppColors.darkBlue,
                      size: 30,
                    ),
                  ),
              error: (_) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Center(
                        child: Text('שגיאה בעת ביצוע הבקשה'),
                      )
                    ],
                  ),
              successSearchResponse: (search) {
                if (search.item?.empty == true) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 50),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(Icons.search,
                                size: 60, color: AppColors.darkBlue),
                            const SizedBox(height: 12),
                            Text(
                              'לא נמצא דבר לפי בקשתך',
                              style: AppTheme.semiLight(size: 18),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }
                if (search.item?.empty == true) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'אין תוצאות חיפוש',
                          style: AppTheme.regular(size: 28),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                }

                return Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: ListView.builder(
                    itemCount: search.item?.numberOfElements ?? 0,
                    itemBuilder: (context, index) {
                      var item = search.item?.content?[index];
                      var name = item?.name ?? '';
                      var image = item?.imageUrls?.first;

                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 10),
                        child: ListTile(
                          title: Text(name),
                          leading: image != null
                              ? ClipRRect(
                                  borderRadius: BorderRadius.circular(150),
                                  child: Image.network(
                                    image,
                                    height: 50,
                                    width: 50,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey,
                                ),
                          onTap: () {
                            context.router.push(ProductMainScreen(item: item));
                          },
                        ),
                      );
                    },
                  ),
                );
              },
              orElse: () => const SizedBox());
        });
  }
}

// import 'package:auto_route/auto_route.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

// import 'package:get_it/get_it.dart';
// import 'package:upnati/core/config/debouncer.dart';
// import 'package:upnati/logic/blocs/business/business_cubit.dart';
// import 'package:upnati/resources/resource.dart';
// import 'package:upnati/ui/screens/product_main_screen.dart';

// //TODO FIX Separate search delegate or create base search delegate

// class CustomSearchDelegate extends SearchDelegate {
//   final BusinessCubit _businessCubit;

//   CustomSearchDelegate(this._businessCubit);

//   final Debouncer _debouncer = Debouncer(delay: Duration(milliseconds: 500));

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () => close(context, null),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     if (query.length < 2) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 50),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'אין תוצאות חיפוש',
//                   style: AppTheme.regular(size: 28),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     }

//     _debouncer(() {
//       _businessCubit.search(query: query, size: 10);
//     });

//     return BlocBuilder<BusinessCubit, BusinessState>(
//         bloc: _businessCubit,
//         builder: (context, state) {
//           return state.maybeWhen(
//               loading: () => const Padding(
//                     padding: EdgeInsets.only(left: 16, top: 16),
//                     child: SpinKitCircle(
//                       color: AppColors.darkBlue,
//                       size: 30,
//                     ),
//                   ),
//               successSearchResponse: (search) {
//                 if (search.hits?.found == 0) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Center(
//                         child: Text(
//                           'אין תוצאות חיפוש',
//                           style: AppTheme.regular(size: 28),
//                           textAlign: TextAlign.center,
//                         ),
//                       )
//                     ],
//                   );
//                 }
//                 return ListView.builder(

//                   itemCount: search.hits?.found,
//                   itemBuilder: (context, index) {
//                     var id = search.hits?.hit?[index].id;
//                     var item = search.hits?.hit?[index];
//                     var name = item?.fields?['name']?.first;
//                     var image = item?.fields?['image']?.first;

//                     return ListTile(
//                       title: Text(name ?? ''),
//                       leading: image != null
//                           ? Image.network(
//                               image,
//                               height: 50,
//                               width: 50,
//                             )
//                           : Container(
//                               height: 50,
//                               width: 50,
//                               color: Colors.grey,
//                             ),
//                       onTap: () {
//                         context.router.push(ProductMainScreen())
//                       },
//                     );
//                   },
//                 );
//               },
//               orElse: () => SizedBox());
//         });
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     if (query.length < 2) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 50),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/imgs/search_icon.png',
//                   fit: BoxFit.contain,
//                   width: 40,
//                   height: 40,
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'Результаты поиска будут видны\nпосле ввода 2 символа',
//                   style: AppTheme.styles.semiBold16
//                       .copyWith(color: AppTheme.colors.blueGray),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     }

//     _debouncer(() {
//       _paymentBloc.add(PaymentEvent.search(text: query));
//     });

//     return BlocBuilder<PaymentBloc, PaymentState>(
//         bloc: _paymentBloc,
//         builder: (context, state) {
//           return state.maybeWhen(
//               loadingSearch: () => Padding(
//                     padding: const EdgeInsets.only(left: 16, top: 16),
//                     child: ShimmerGenerator(count: 6),
//                   ),
//               errorSearch: (_) => Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Center(
//                         child: Text('Ошибка во время выполнения запроса'),
//                       )
//                     ],
//                   ),
//               fetchedSearch: (search) {
//                 if (search.rows?.isEmpty != false) {
//                   return Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         margin: const EdgeInsets.symmetric(vertical: 50),
//                         width: double.infinity,
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/imgs/search_icon.png',
//                               fit: BoxFit.contain,
//                               width: 40,
//                               height: 40,
//                             ),
//                             SizedBox(height: 12),
//                             Text(
//                               'По данному запросу\nничего не найдено',
//                               style: AppTheme.styles.semiBold16
//                                   .copyWith(color: AppTheme.colors.blueGray),
//                               textAlign: TextAlign.center,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }
//                 return BlocListener<ScenarioBloc, ScenarioState>(
//                     bloc: _scenarioBloc,
//                     listener: (context, state) {
//                       state.whenOrNull(
//                           fetchedScenario: (scenario) {
//                             if (_selectedService == null) return;

//                             LoadingOverlay.removeLoadingOverlay();
//                             AutoRouter.of(context).push(PaymentScenarioScreen(
//                                 screen: 0,
//                                 service: _selectedService!,
//                                 prevScreens: [],
//                                 scenario: scenario));
//                           },
//                           loadingScenario: () =>
//                               LoadingOverlay.showLoadingOverlay(context),
//                           errorScenario: (err) {
//                             LoadingOverlay.removeLoadingOverlay();
//                             ExceptionWorker.processException(err,
//                                 context: context);
//                           });
//                     },
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 24.0),
//                       child: ListView.builder(
//                         itemCount: search.rows?.length ?? 0,
//                         itemBuilder: (context, index) {
//                           var item = search.rows?[index];
//                           return PaymentTile(
//                               icon: CachedNetworkImage(
//                                   imageUrl:
//                                       '${GetIt.I<Config>().baseUrlWithoutSlash}${item?.logo}',
//                                   width: 42,
//                                   height: 42),
//                               title: item?.title ?? '',
//                               onTap: () async {
//                                 _selectedService = item;
//                                 var result =
//                                     await IdentLevelUtil.checkIdent(context);
//                                 if (result == true) {
//                                   AutoRouter.of(context).push(
//                                       AccountStatusScreen(
//                                           initTap: 1,
//                                           status: IdentificationStatuses
//                                               .identAnonym));
//                                 } else if (result == false) {
//                                   _scenarioBloc.add(ScenarioEvent.fetchScenario(
//                                       item?.id?.toString() ?? '0'));
//                                 }
//                               });
//                         },
//                       ),
//                     ));
//               },
//               orElse: () => SizedBox());
//         });
//   }
// }

// class HalykSearchSample extends SearchDelegate {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [IconButton(icon: Icon(Icons.clear), onPressed: () => query = '')];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () => close(context, null),
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     if (query.length < 2) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 50),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/imgs/search_icon.png',
//                   fit: BoxFit.contain,
//                   width: 40,
//                   height: 40,
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'По данному запросу\nничего не найдено',
//                   style: AppTheme.styles.semiBold16
//                       .copyWith(color: AppTheme.colors.blueGray),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     }
//     return WillPopScope(
//         onWillPop: () async {
//           LoadingOverlay.removeLoadingOverlay();
//           return true;
//         },
//         child: BlocProvider<TemplateBloc>(
//           create: (context) => GetIt.I<TemplateBloc>(),
//           child: PaymentTemplateList(),
//         ));
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     if (query.length < 2) {
//       return Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             margin: const EdgeInsets.symmetric(vertical: 50),
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/imgs/search_icon.png',
//                   fit: BoxFit.contain,
//                   width: 40,
//                   height: 40,
//                 ),
//                 SizedBox(height: 12),
//                 Text(
//                   'Результаты поиска будут видны\nпосле ввода 2 символа',
//                   style: AppTheme.styles.semiBold16
//                       .copyWith(color: AppTheme.colors.blueGray),
//                   textAlign: TextAlign.center,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       );
//     }
//     return BlocProvider<TemplateBloc>(
//       create: (context) => GetIt.I<TemplateBloc>(),
//       child: PaymentTemplateList(criteria: (item) {
//         if (item.name != null) {
//           var name = item.name!.toLowerCase();
//           return name.contains(query);
//         }
//         return false;
//       }),
//     );
//   }
// }

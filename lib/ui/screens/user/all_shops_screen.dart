import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/list_of_shops.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class AllShopsScreen extends StatefulWidget with AutoRouteWrapper {
  const AllShopsScreen({Key? key}) : super(key: key);

  @override
  State<AllShopsScreen> createState() => _AllShopsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BusinessCubit>(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _AllShopsScreenState extends State<AllShopsScreen> {
  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 21),
                const SearchField(),
                const SizedBox(height: 18),
                Text(LocaleKeys.product_info_stores.tr(),
                    style: AppTheme.regular(size: 20)),
                const SizedBox(height: 16),
                const GridOfShops(),
              ],
            ),
          )),
        ),
      ),
    );
  }
}

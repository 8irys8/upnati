import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/locale_keys.g.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/category_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class AllShopsScreen extends StatefulWidget {
  const AllShopsScreen({Key? key}) : super(key: key);

  @override
  State<AllShopsScreen> createState() => _AllShopsScreenState();
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
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            context.router.push(const ShopHomeScreen()),
                        child: AspectRatio(
                            aspectRatio: 1.3,
                            child: CategoryContainer(
                              withRoof: true,
                              child: Image.asset(Images.bodyHealthImg),
                            )),
                      ),
                    ),
                    const SizedBox(width: 35),
                    Expanded(
                      child: AspectRatio(
                          aspectRatio: 1.3,
                          child: CategoryContainer(
                            withRoof: true,
                            child: Image.asset(Images.appliancesImg),
                          )),
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

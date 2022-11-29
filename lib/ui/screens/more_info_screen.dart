import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class MoreInfoScreen extends StatefulWidget {
  const MoreInfoScreen({Key? key}) : super(key: key);

  @override
  State<MoreInfoScreen> createState() => _MoreInfoScreenState();
}

class _MoreInfoScreenState extends State<MoreInfoScreen> {
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
        bottomNavigationBar: const CustomNavigatorBar(
          initialIndex: 2,
        ),
        body: SingleChildScrollView(
            child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(Images.aboutImg),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          LocaleKeys.onboard_about.tr(),
                          style: AppTheme.regular(
                              size: 16, color: AppColors.darkBlue),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 65,
                    ),
                    Column(
                      children: [
                        Image.asset(Images.girlImg),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          LocaleKeys.onboard_contact_us.tr(),
                          style: AppTheme.regular(
                              size: 16, color: AppColors.darkBlue),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => context.router.push(const PolicyScreen()),
                      child: Column(
                        children: [
                          Image.asset(Images.pencilImg),
                          const SizedBox(
                            height: 8,
                          ),
                          Transform.translate(
                            offset: const Offset(-6, 0),
                            child: Text(
                              LocaleKeys.onboard_policy.tr(),
                              style: AppTheme.regular(
                                  size: 16, color: AppColors.darkBlue),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      onTap: () => context.router.push(const TermsScreen()),
                      child: Column(
                        children: [
                          Image.asset(Images.termsImg),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            LocaleKeys.onboard_terms.tr(),
                            style: AppTheme.regular(
                                size: 16, color: AppColors.darkBlue),
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

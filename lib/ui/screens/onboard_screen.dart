import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/main_container.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  void _showModalBottomSheet() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        barrierColor: AppColors.white.withOpacity(0.9),
        builder: (context) => Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: const BoxDecoration(
                color: AppColors.darkBlueLight,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: SvgPicture.asset(Svgs.icArrowDown)),
                  const SizedBox(height: 34),
                  Text(LocaleKeys.onboard_earn_money.tr(),
                      style:
                          AppTheme.regular(size: 25, color: AppColors.white)),
                  const SizedBox(height: 18),
                  Text(LocaleKeys.onboard_share_app.tr(),
                      textAlign: TextAlign.center,
                      style:
                          AppTheme.regular(size: 18, color: AppColors.white)),
                  const SizedBox(height: 69),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          Images.shareImg,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.onboard_download_from_link.tr(),
                              style: AppTheme.regular(
                                  size: 16, color: AppColors.white),
                            ),
                            Text(
                              LocaleKeys.onboard_receive.tr(),
                              style: AppTheme.bold(
                                  size: 22, color: AppColors.orange),
                            ),
                            Text(
                              LocaleKeys.onboard_on_site.tr(args: ['1']),
                              style: AppTheme.bold(
                                  size: 18, color: AppColors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 69),
                  Text(
                    LocaleKeys.onboard_share_products.tr(),
                    style: AppTheme.regular(size: 18, color: AppColors.white),
                  ),
                  const SizedBox(height: 11),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 64),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(Images.share2Img),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.onboard_buy_from_referral.tr(),
                              style: AppTheme.regular(
                                  size: 16, color: AppColors.white),
                            ),
                            Text(
                              LocaleKeys.onboard_receive.tr(),
                              style: AppTheme.bold(
                                  size: 22, color: AppColors.orange),
                            ),
                            Text(
                              LocaleKeys.onboard_on_site.tr(args: ['5']),
                              style: AppTheme.bold(
                                  size: 18, color: AppColors.white),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 69),
                  Text(LocaleKeys.onboard_for_full_regulation.tr(),
                      style:
                          AppTheme.regular(size: 18, color: AppColors.white)),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomNavigatorBar(),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 30),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                    child: Image.asset(
                  Images.upnatiMain,
                  fit: BoxFit.cover,
                )),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: -12,
                  child: GestureDetector(
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21)),
                              scrollable: true,
                              contentPadding: EdgeInsets.zero,
                              content: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.pop(context),
                                    child: const Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.topRight,
                                          child: Icon(
                                            Icons.close_outlined,
                                            color: Colors.black,
                                            size: 30,
                                          )),
                                    ),
                                  ),
                                  Text(
                                    LocaleKeys.onboard_not_logged_yet.tr(),
                                    style: AppTheme.regular(
                                        size: 22, color: Colors.black),
                                  ),
                                  const SizedBox(height: 38),
                                  GestureDetector(
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 44, vertical: 16),
                                      decoration: BoxDecoration(
                                          color: AppColors.darkBlueLight,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(.16),
                                              blurRadius: 3,
                                              offset: const Offset(0, 1),
                                            ),
                                          ]),
                                      child: Text(
                                          LocaleKeys.onboard_connect_btn.tr(),
                                          style: AppTheme.semi(
                                              size: 16,
                                              color: AppColors.white)),
                                    ),
                                  ),
                                  const SizedBox(height: 30),
                                ],
                              ),
                            )),
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      margin: const EdgeInsets.symmetric(horizontal: 70),
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueLight,
                          borderRadius: BorderRadius.circular(28)),
                      child: Text(
                        LocaleKeys.onboard_desc.tr(),
                        textAlign: TextAlign.center,
                        style:
                            AppTheme.regular(size: 18, color: AppColors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: _showModalBottomSheet,
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.darkBlueLight,
                    borderRadius: BorderRadius.circular(28),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.16),
                          offset: const Offset(0, 3),
                          blurRadius: 6)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(Images.icSpeaker),
                      const SizedBox(width: 8),
                      Text(
                        LocaleKeys.onboard_click_btn.tr(),
                        style:
                            AppTheme.regular(size: 27, color: AppColors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 60),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: MainContainer(
                            child: Center(
                              child: Text(
                                LocaleKeys.onboard_publication.tr(),
                                style: AppTheme.regular(
                                    size: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: MainContainer(
                            child: Center(
                              child: Text(
                                LocaleKeys.onboard_publication.tr(),
                                style: AppTheme.regular(
                                    size: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 28),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: MainContainer(
                            child: Center(
                              child: Text(
                                LocaleKeys.onboard_publication.tr(),
                                style: AppTheme.regular(
                                    size: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: MainContainer(
                            child: Center(
                              child: Text(
                                LocaleKeys.onboard_publication.tr(),
                                style: AppTheme.regular(
                                    size: 18, color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
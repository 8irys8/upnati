import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({Key? key}) : super(key: key);

  @override
  State<UserMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<UserMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigatorBar(
        initialIndex: 0,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            // height: 320,
            alignment: Alignment.topCenter,
            color: AppColors.darkBlueLight,
            child: Transform.translate(
              offset: const Offset(0, 90),
              child: Column(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(150),
                      child: Image.asset(
                        Images.cat,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'אדל  מזרחי',
                    style: AppTheme.bold(size: 18, color: AppColors.white),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 285,
            left: 0,
            right: 0,
            // bottom: 0,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 43, vertical: 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 9),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(color: AppColors.roze)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  Svgs.icProfileRoze,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(LocaleKeys.product_info_personal_info.tr(),
                                    style: AppTheme.regular(
                                        size: 11, color: AppColors.roze)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 9),
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(color: AppColors.roze)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  Svgs.icBagRoze,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(LocaleKeys.product_info_my_products.tr(),
                                    style: AppTheme.regular(
                                        size: 11, color: AppColors.roze)),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                color: AppColors.roze,
                                borderRadius: BorderRadius.circular(22),
                                border: Border.all(color: AppColors.roze),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColors.text.withOpacity(0.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  )
                                ]),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  Svgs.icHeartWhite,
                                ),
                                const SizedBox(
                                  width: 6,
                                ),
                                Text(LocaleKeys.product_info_my_liked.tr(),
                                    style: AppTheme.regular(
                                        size: 11, color: AppColors.white)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

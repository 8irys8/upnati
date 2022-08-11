import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';

class ShopHomeScreen extends StatefulWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            LocaleKeys.business_register_myShop.tr(),
            style: AppTheme.bold(size: 18),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 45.0, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(LocaleKeys.business_register_products.tr(),
                      style: AppTheme.regular(size: 14)),
                  Transform.translate(
                    offset: const Offset(0, -5),
                    child: Container(
                      height: 10,
                      width: 1,
                      color: AppColors.text.withOpacity(0.75),
                    ),
                  ),
                  Text(LocaleKeys.business_register_reviews.tr(),
                      style: AppTheme.regular(
                          size: 14, color: AppColors.text.withOpacity(0.44))),
                  Transform.translate(
                    offset: const Offset(0, -5),
                    child: Container(
                      height: 10,
                      width: 1,
                      color: AppColors.text.withOpacity(0.75),
                    ),
                  ),
                  Text(LocaleKeys.business_register_about.tr(),
                      style: AppTheme.regular(
                          size: 14, color: AppColors.text.withOpacity(0.44))),
                  Transform.translate(
                    offset: const Offset(0, -5),
                    child: Container(
                      height: 10,
                      width: 1,
                      color: AppColors.text.withOpacity(0.75),
                    ),
                  ),
                  Text(LocaleKeys.business_register_policy.tr(),
                      style: AppTheme.regular(
                          size: 14, color: AppColors.text.withOpacity(0.44))),
                ],
              ),
            ),
            const Divider(
              color: AppColors.gray,
              thickness: 0.2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                children: [
                  Image.asset(Images.shushuLogoImg),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('shushu market',
                          style:
                              AppTheme.bold(size: 18, color: AppColors.orange)),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Svgs.icStar, height: 14),
                          const SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset(Svgs.icStar, height: 14),
                          const SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset(Svgs.icStar, height: 14),
                          const SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset(Svgs.icStarEmpty, height: 14),
                          const SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset(Svgs.icStarEmpty, height: 14),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(
                              '( 234 ${LocaleKeys.business_register_reviews.tr()} )',
                              style: AppTheme.regular(
                                  size: 12,
                                  color: AppColors.text.withOpacity(0.64))),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(Svgs.icHeart, height: 14),
                          const SizedBox(
                            width: 6,
                          ),
                          Text(LocaleKeys.business_register_addToFavorites.tr(),
                              style: AppTheme.regular(
                                  size: 10,
                                  color: AppColors.text.withOpacity(0.64))),
                          const SizedBox(
                            width: 13,
                          ),
                          SizedBox(
                            width: 130,
                            child: CustomButton(
                              title: LocaleKeys.business_register_contactToStore
                                  .tr(),
                              color: AppColors.orange,
                              withoutShadow: true,
                              textSize: 10,
                              buttonHeight: 26,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

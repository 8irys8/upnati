import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';

class ShopHomeScreen extends StatefulWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  State<ShopHomeScreen> createState() => _ShopHomeScreenState();
}

class _ShopHomeScreenState extends State<ShopHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: CustomNavigatorBar(
          // initialIndex: 0,
          ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Padding(
            //   padding:
            //       const EdgeInsets.symmetric(horizontal: 45.0, vertical: 8),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text(LocaleKeys.business_register_products.tr(),
            //           style: AppTheme.regular(size: 14)),
            //       Transform.translate(
            //         offset: const Offset(0, -5),
            //         child: Container(
            //           height: 10,
            //           width: 1,
            //           color: AppColors.text.withOpacity(0.75),
            //         ),
            //       ),
            //       Text(LocaleKeys.business_register_reviews.tr(),
            //           style: AppTheme.regular(
            //               size: 14, color: AppColors.text.withOpacity(0.44))),
            //       Transform.translate(
            //         offset: const Offset(0, -5),
            //         child: Container(
            //           height: 10,
            //           width: 1,
            //           color: AppColors.text.withOpacity(0.75),
            //         ),
            //       ),
            //       Text(LocaleKeys.business_register_about.tr(),
            //           style: AppTheme.regular(
            //               size: 14, color: AppColors.text.withOpacity(0.44))),
            //       Transform.translate(
            //         offset: const Offset(0, -5),
            //         child: Container(
            //           height: 10,
            //           width: 1,
            //           color: AppColors.text.withOpacity(0.75),
            //         ),
            //       ),
            //       Text(LocaleKeys.business_register_policy.tr(),
            //           style: AppTheme.regular(
            //               size: 14, color: AppColors.text.withOpacity(0.44))),
            //     ],
            //   ),
            // ),
            // const Divider(
            //   color: AppColors.gray,
            //   thickness: 0.2,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                children: [
                  Image.asset(Images.shushuLogoImg),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('shushu market',
                                style: AppTheme.bold(
                                  size: 18,
                                )),
                            const SizedBox(
                              width: 24,
                            ),
                            SvgPicture.asset(Svgs.icEditGray),
                          ],
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(Svgs.icStarYellowMarked,
                                height: 14),
                            const SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(Svgs.icStarYellowMarked,
                                height: 14),
                            const SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(Svgs.icStarYellowMarked,
                                height: 14),
                            const SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(Svgs.icStarYellowUnmarked,
                                height: 14),
                            const SizedBox(
                              width: 3,
                            ),
                            SvgPicture.asset(Svgs.icStarYellowUnmarked,
                                height: 14),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                                '(234 ${LocaleKeys.business_register_reviews.tr()})',
                                style: AppTheme.regular(
                                    size: 12, color: AppColors.textGray)),
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.rozeLightbtn,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 7),
                                child: Row(children: [
                                  SvgPicture.asset(Svgs.icHeartWhite),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  Text(
                                      LocaleKeys
                                          .business_register_addToFavorites
                                          .tr(),
                                      style: AppTheme.regular(
                                          size: 10, color: AppColors.white))
                                ]),
                              ),
                            ),
                            const SizedBox(
                              width: 13,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.darkBlue,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 7.5),
                                child: Text(
                                    LocaleKeys.business_register_contactToStore
                                        .tr(),
                                    style: AppTheme.regular(
                                        size: 10, color: AppColors.white)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              'חנות כיפית עם פרטים לעיצוב הבית \nמוצרים שחייבים בכל בית וגם מוצרים מיותרים שמקשטים את הבית \nמתוך אהבה גדולה לאומנות ועיצוב.',
              style: AppTheme.regular(
                size: 12,
                color: AppColors.textGray,
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 14, left: 37, right: 37),
              child: SearchField(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
              child: Row(
                children: const [
                  Expanded(
                      child: AddEmptyProductContainer(
                    title: 'מוצרים חדשים',
                    desc:
                        'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סלעציץ רוברט  סט 3 עציצים דגם24  ',
                    price: '350',
                    image: Images.butterfly,
                  )),
                  SizedBox(
                    width: 45,
                  ),
                  Expanded(
                      child: AddEmptyProductContainer(
                    title: 'מוצרים ',
                    image: Images.panda,
                    price: '200',
                    desc:
                        'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סל קש  גובה 24 ',
                  )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
              child: Row(
                children: const [
                  Expanded(
                      child: AddEmptyProductContainer(
                    title: 'מוצרים',
                    image: Images.cat,
                    desc: 'עציץ רוברט  סט 24',
                    price: '1000',
                  )),
                  SizedBox(
                    width: 45,
                  ),
                  Expanded(
                      child: AddEmptyProductContainer(
                    title: 'אייפון 13',
                    desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                    price: '120',
                  )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 9, right: 9, bottom: 36),
              child: Row(
                children: const [
                  Expanded(
                      child: AddEmptyProductContainer(
                    image: Images.cubik,
                    title: 'מוצרים ',
                    price: '10',
                    desc:
                        'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סל קש  גובה 24 ',
                  )),
                  SizedBox(
                    width: 45,
                  ),
                  Expanded(
                      child: AddEmptyProductContainer(
                    title: 'מוצרים חדשים',
                    price: '15',
                    image: Images.minion,
                    desc:
                        'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סלעציץ רוברט  סט 3 עציצים דגם24  ',
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

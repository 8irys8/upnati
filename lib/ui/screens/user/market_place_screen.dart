import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/category_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/search_field.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
          bottomNavigationBar: const CustomNavigatorBar(),
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const SearchField(),
                        const SizedBox(
                          height: 27,
                        ),
                        Container(
                          height: 110,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            border: Border.all(color: AppColors.gray),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(17),
                              child:
                                  Image.asset(Images.cubik, fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(LocaleKeys.product_info_select_lots.tr(),
                                style: AppTheme.regular(
                                  size: 15,
                                )),
                            GestureDetector(
                              onTap: () =>
                                  context.router.push(const AllShopsScreen()),
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 13),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(19),
                                      topRight: Radius.circular(19),
                                      bottomLeft: Radius.circular(19)),
                                  color: Color(0xffE1E6ED),
                                ),
                                child: Text(
                                    LocaleKeys.product_info_to_all_shops.tr(),
                                    style: AppTheme.regular(
                                      size: 8,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CategoryContainer(
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(8, 20, 8, 12),
                                child: Image.asset(
                                  Images.logo4,
                                  height: 43,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                                right: -14,
                                top: -4,
                                child: Image.asset(Images.roofImg, height: 38))
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CategoryContainer(
                                child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 20, 8, 12),
                              child: Image.asset(
                                Images.logo3,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            )),
                            Positioned(
                                right: -14,
                                top: -4,
                                child: Image.asset(Images.roofImg, height: 38))
                          ],
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CategoryContainer(
                                child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 20, 8, 12),
                              child: Image.asset(
                                Images.logo2,
                                height: 40,
                                fit: BoxFit.cover,
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
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CategoryContainer(
                                child: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 20, 8, 12),
                              child: Image.asset(
                                Images.logo1,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            )),
                            Positioned(
                                right: -14,
                                top: -4,
                                child: Image.asset(Images.roofImg, height: 38))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 37, vertical: 12),
                    child: Text(LocaleKeys.business_register_products.tr(),
                        style: AppTheme.regular(
                          size: 15,
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 34),
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
                          width: 37,
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
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, bottom: 34),
                    child: Row(
                      children: const [
                        Expanded(
                            child: AddEmptyProductContainer(
                          title: 'מוצרים חדשים',
                          desc:
                              'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סלעציץ רוברט  סט 3 עציצים דגם24  ',
                          price: '350',
                          image: Images.kelley,
                        )),
                        SizedBox(
                          width: 37,
                        ),
                        Expanded(
                            child: AddEmptyProductContainer(
                          title: 'מוצרים ',
                          image: Images.chico,
                          price: '200',
                          desc:
                              'עציץ רוברט  סט 3 עציצים דגם רוברט  עציץ סינטטי סל קש  גובה 24 ',
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            Images.upnatiLogo,
            height: 36,
          ),
          leading: Transform.translate(
            offset: const Offset(-24, 0),
            child: Container(
              // color: Colors.redAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Svgs.icCategories),
                  // const SizedBox(width: 25),
                  SvgPicture.asset(Svgs.icRing),
                ],
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 10),
              child: Column(
                children: [
                  Text(LocaleKeys.user_info_own_bussiness.tr(),
                      style: AppTheme.regular(size: 10)),
                  SvgPicture.asset(
                    Svgs.icBussinessHome,
                    height: 18,
                    fit: BoxFit.scaleDown,
                  ),
                ],
              ),
            )
          ]),
      backgroundColor: const Color(0xffFBCABD),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  const SizedBox(height: 21),
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.butterfly,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_shoes_category.tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(size: 16)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 28),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.cat,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_music_category.tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(size: 16)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.kelley,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_kitchen_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(
                                        size: 16, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 28),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.panda,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_body_health_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(size: 16)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.chico,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_digital_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(
                                      size: 16,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 28),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.shelfImg,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_beauty_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(
                                        size: 16, color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.shelfImg,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_animal_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(
                                      size: 16,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 28),
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: Image.asset(
                                    Images.cat,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 12,
                                child: Text(
                                    LocaleKeys.product_info_children_category
                                        .tr(),
                                    textAlign: TextAlign.center,
                                    style: AppTheme.regular(
                                      size: 16,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            )),
          ),
          Container(
              width: double.infinity,
              color: AppColors.white,
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 4, 35, 8),
                child: Column(
                  children: [
                    Text(LocaleKeys.user_info_my_account.tr(),
                        style: AppTheme.regular(
                          size: 10,
                        )),
                    const SizedBox(height: 4),
                    SvgPicture.asset(
                      Svgs.icProfile,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

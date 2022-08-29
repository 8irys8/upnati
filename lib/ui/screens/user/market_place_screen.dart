import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            Images.icUpnatiLogoBlue,
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
      backgroundColor: const Color(0xffDEDEDE),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                const SizedBox(height: 21),
                Row(
                  children: [
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          color: AppColors.white,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              Images.butterfly,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 7),
                    Expanded(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          color: AppColors.white,
                          child: Column(
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: double.infinity,
                                  child: Image.asset(
                                    Images.cat,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text('כפכפי עץ לנשים'),
                              Text('450 ש"ח')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
              ],
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

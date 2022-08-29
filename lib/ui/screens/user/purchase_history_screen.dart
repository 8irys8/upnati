import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class PurchaseHistoryScreen extends StatefulWidget {
  const PurchaseHistoryScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseHistoryScreen> createState() => _PurchaseHistoryScreenState();
}

class _PurchaseHistoryScreenState extends State<PurchaseHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              LocaleKeys.user_info_purchases.tr(),
              style: AppTheme.bold(size: 18),
            ),
          ),
          centerTitle: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
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
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gray),
                        borderRadius: BorderRadius.circular(5)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        Images.panda,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(LocaleKeys.basket_info_acquired.tr(),
                              style: AppTheme.bold(size: 12)),
                          Text('10 בדצמבר 2021 - 12:30 ',
                              style: AppTheme.semiLight(size: 12)),
                        ],
                      ),
                      Text('צעצועי פנדה לילדים שלך',
                          style: AppTheme.semi(size: 14)),
                      Text('קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                          style: AppTheme.regular(size: 10)),
                      Text('נעלי מורן',
                          style: AppTheme.semi(size: 10)
                              .copyWith(decoration: TextDecoration.underline)),
                      Text.rich(
                        TextSpan(
                          text: '350 ',
                          style: AppTheme.bold(size: 18),
                          children: [
                            TextSpan(
                              text: LocaleKeys.basket_info_nis.tr(),
                              style: AppTheme.bold(size: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              color: AppColors.gray,
              thickness: 0.3,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gray),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      Images.kelley,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(LocaleKeys.basket_info_acquired.tr(),
                              style: AppTheme.bold(size: 12)),
                          Text('10 בדצמבר 2021 - 12:30 ',
                              style: AppTheme.semiLight(size: 12)),
                        ],
                      ),
                      Text('צעצועי פנדה לילדים שלך',
                          style: AppTheme.semi(size: 14)),
                      Text('קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                          style: AppTheme.regular(size: 10)),
                      Text('נעלי מורן',
                          style: AppTheme.semi(size: 10)
                              .copyWith(decoration: TextDecoration.underline)),
                      Text.rich(
                        TextSpan(
                          text: '350 ',
                          style: AppTheme.bold(size: 18),
                          children: [
                            TextSpan(
                              text: LocaleKeys.basket_info_nis.tr(),
                              style: AppTheme.bold(size: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              color: AppColors.gray,
              thickness: 0.3,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 105,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.gray),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      Images.minion,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(LocaleKeys.basket_info_acquired.tr(),
                              style: AppTheme.bold(size: 12)),
                          Text('10 בדצמבר 2021 - 12:30 ',
                              style: AppTheme.semiLight(size: 12)),
                        ],
                      ),
                      Text('צעצועי פנדה לילדים שלך',
                          style: AppTheme.semi(size: 14)),
                      Text('קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                          style: AppTheme.regular(size: 10)),
                      Text('נעלי מורן',
                          style: AppTheme.semi(size: 10)
                              .copyWith(decoration: TextDecoration.underline)),
                      Text.rich(
                        TextSpan(
                          text: '350 ',
                          style: AppTheme.bold(size: 18),
                          children: [
                            TextSpan(
                              text: LocaleKeys.basket_info_nis.tr(),
                              style: AppTheme.bold(size: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              color: AppColors.gray,
              thickness: 0.3,
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color(0xffDBDBDB),
                        border: Border.all(color: AppColors.gray),
                        borderRadius: BorderRadius.circular(5)),
                    child: Image.asset(
                      Images.bagImage,
                      fit: BoxFit.scaleDown,
                      height: 53,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(LocaleKeys.basket_info_acquired.tr(),
                              style: AppTheme.bold(size: 12)),
                          Text('10 בדצמבר 2021 - 12:30 ',
                              style: AppTheme.semiLight(size: 12)),
                        ],
                      ),
                      Text('צעצועי פנדה לילדים שלך',
                          style: AppTheme.semi(size: 14)),
                      Text('קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                          style: AppTheme.regular(size: 10)),
                      Text('נעלי מורן',
                          style: AppTheme.semi(size: 10)
                              .copyWith(decoration: TextDecoration.underline)),
                      Text.rich(
                        TextSpan(
                          text: '350 ',
                          style: AppTheme.bold(size: 18),
                          children: [
                            TextSpan(
                              text: LocaleKeys.basket_info_nis.tr(),
                              style: AppTheme.bold(size: 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            const Divider(
              color: AppColors.gray,
              thickness: 0.3,
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              LocaleKeys.user_info_messages.tr(),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Text('3${LocaleKeys.user_info_unread_messages.tr()}',
                  style: AppTheme.regular(size: 8)),
            ),
            const SizedBox(height: 5),
            Container(
              color: const Color(0xffBDBDBD),
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.gray),
                          borderRadius: BorderRadius.circular(150)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset(
                          Images.butterfly,
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
                            Text('UP STORE',
                                style: AppTheme.regular(size: 10).copyWith(
                                    decoration: TextDecoration.underline)),
                            Text('ממליצה על ',
                                style: AppTheme.bold(
                                    size: 12, color: AppColors.red)),
                          ],
                        ),
                        Text('עד 50% הנחה בחניות האלקטרוניקה',
                            style: AppTheme.semi(size: 12)),
                        Text('10 בדצמבר 2021 - 12:30',
                            style: AppTheme.semiLight(size: 10)),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(Svgs.icBackIcon)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              color: const Color(0xffBDBDBD),
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.gray),
                          borderRadius: BorderRadius.circular(150)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset(
                          Images.cat,
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
                            Text('נעלי מורן',
                                style: AppTheme.regular(size: 10).copyWith(
                                    decoration: TextDecoration.underline)),
                            Text('שלח לך תודה על רכישה ומשלוח',
                                style: AppTheme.bold(
                                  size: 12,
                                )),
                          ],
                        ),
                        Text('כפכפי עץ לנשים | 450 ש"ח',
                            style: AppTheme.semi(size: 14)),
                        Text('10 בדצמבר 2021 - 12:30',
                            style: AppTheme.semiLight(size: 10)),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(Svgs.icBackIcon)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              color: const Color(0xffE5E5E5),
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: const Color(0xffB3B3B3),
                            border: Border.all(color: AppColors.white),
                            borderRadius: BorderRadius.circular(150)),
                        child: SvgPicture.asset(
                          Svgs.icUserEmpty,
                          height: 30,
                          fit: BoxFit.scaleDown,
                        )),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('נעלי מורן',
                                style: AppTheme.regular(size: 10).copyWith(
                                    decoration: TextDecoration.underline)),
                            Text('שלח לך תודה על רכישה ומשלוח',
                                style: AppTheme.bold(
                                  size: 12,
                                )),
                          ],
                        ),
                        Text('כפכפי עץ לנשים | 450 ש"ח',
                            style: AppTheme.semi(size: 14)),
                        Text('10 בדצמבר 2021 - 12:30',
                            style: AppTheme.semiLight(size: 10)),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(Svgs.icBackIcon)
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Container(
              color: const Color(0xffE5E5E5),
              padding: const EdgeInsets.symmetric(vertical: 11),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            color: const Color(0xffB3B3B3),
                            border: Border.all(color: AppColors.white),
                            borderRadius: BorderRadius.circular(150)),
                        child: SvgPicture.asset(
                          Svgs.icBusinessEmpty,
                          height: 30,
                          fit: BoxFit.scaleDown,
                        )),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('נעלי מורן',
                                style: AppTheme.regular(size: 10).copyWith(
                                    decoration: TextDecoration.underline)),
                            Text('שלח לך תודה על רכישה ומשלוח',
                                style: AppTheme.bold(
                                  size: 12,
                                )),
                          ],
                        ),
                        Text('כפכפי עץ לנשים | 450 ש"ח',
                            style: AppTheme.semi(size: 14)),
                        Text('10 בדצמבר 2021 - 12:30',
                            style: AppTheme.semiLight(size: 10)),
                      ],
                    ),
                    const Spacer(),
                    SvgPicture.asset(Svgs.icBackIcon)
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

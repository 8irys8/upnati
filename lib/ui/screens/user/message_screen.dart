import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/main_container.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  bool? isRead = false;

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Image.asset(
                Images.icBellBlue,
                height: 26,
              ),
              Text(
                LocaleKeys.user_info_messages.tr(),
                style: AppTheme.bold(size: 13),
              ),
            ],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SafeArea(
            child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              TabBar(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 60,
                  ),
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3.0,
                      color: Color(0xff3DB8C1),
                    ),
                    insets:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                  ),
                  tabs: [
                    Tab(
                        child: Text.rich(
                      TextSpan(
                          text: '${LocaleKeys.user_info_known.tr()} ',
                          style: AppTheme.regular(size: 16),
                          children: [
                            TextSpan(
                                text: '2',
                                style: AppTheme.regular(
                                    size: 16, color: AppColors.red))
                          ]),
                    )),
                    Tab(
                        child: Text.rich(
                      TextSpan(
                          text: '${LocaleKeys.user_info_client.tr()} ',
                          style: AppTheme.regular(size: 16),
                          children: [
                            TextSpan(
                                text: '3',
                                style: AppTheme.regular(
                                    size: 16, color: AppColors.red))
                          ]),
                    ))
                  ]),
              Expanded(
                child: TabBarView(children: [
                  ListView.builder(
                      padding:
                          const EdgeInsets.only(top: 4, left: 27, right: 27),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 25),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(150)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('UP STORE',
                                              style: AppTheme.regular(size: 10)
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)),
                                          Text('ממליצה על ',
                                              style: AppTheme.bold(
                                                  size: 12,
                                                  color: AppColors.red)),
                                        ],
                                      ),
                                      Text('עד 50% הנחה בחניות האלקטרוניקה',
                                          style: AppTheme.semi(size: 14)),
                                      Text('10 בדצמבר 2021 - 12:30',
                                          style: AppTheme.semiLight(size: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  //second page
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27)
                        .copyWith(top: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 25),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(150)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('UP STORE',
                                              style: AppTheme.regular(size: 10)
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)),
                                          Text('ממליצה על ',
                                              style: AppTheme.bold(
                                                  size: 12,
                                                  color: AppColors.red)),
                                        ],
                                      ),
                                      Text('עד 50% הנחה בחניות האלקטרוניקה',
                                          style: AppTheme.semi(size: 14)),
                                      Text('10 בדצמבר 2021 - 12:30',
                                          style: AppTheme.semiLight(size: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 25),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 52,
                                    width: 52,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.gray),
                                        borderRadius:
                                            BorderRadius.circular(150)),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('UP STORE',
                                              style: AppTheme.regular(size: 10)
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)),
                                          Text('ממליצה על ',
                                              style: AppTheme.bold(
                                                  size: 12,
                                                  color: AppColors.red)),
                                        ],
                                      ),
                                      Text('עד 50% הנחה בחניות האלקטרוניקה',
                                          style: AppTheme.semi(size: 14)),
                                      Text('10 בדצמבר 2021 - 12:30',
                                          style: AppTheme.semiLight(size: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: MainContainer(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 25),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC7C7C7),
                                          border: Border.all(
                                              color: AppColors.white
                                                  .withOpacity(.86)),
                                          borderRadius:
                                              BorderRadius.circular(150)),
                                      child: SvgPicture.asset(
                                        Svgs.icUserEmpty,
                                        height: 30,
                                        fit: BoxFit.scaleDown,
                                      )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('UP STORE',
                                              style: AppTheme.regular(size: 10)
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)),
                                          Text('ממליצה על ',
                                              style: AppTheme.bold(
                                                  size: 12,
                                                  color: AppColors.text)),
                                        ],
                                      ),
                                      Text('עד 50% הנחה בחניות האלקטרוניקה',
                                          style: AppTheme.semi(size: 14)),
                                      Text('10 בדצמבר 2021 - 12:30',
                                          style: AppTheme.semiLight(size: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10, left: 10, right: 10),
                          child: MainContainer(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 25),
                              child: Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                          color: const Color(0xffC7C7C7),
                                          border: Border.all(
                                              color: AppColors.white
                                                  .withOpacity(.86)),
                                          borderRadius:
                                              BorderRadius.circular(150)),
                                      child: SvgPicture.asset(
                                        Svgs.icBusinessEmpty,
                                        height: 30,
                                        fit: BoxFit.scaleDown,
                                      )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('UP STORE',
                                              style: AppTheme.regular(size: 10)
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline)),
                                          Text('ממליצה על ',
                                              style: AppTheme.bold(
                                                  size: 12,
                                                  color: AppColors.text)),
                                        ],
                                      ),
                                      Text('עד 50% הנחה בחניות האלקטרוניקה',
                                          style: AppTheme.semi(size: 14)),
                                      Text('10 בדצמבר 2021 - 12:30',
                                          style: AppTheme.semiLight(size: 10)),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              )
            ],
          ),
        )),
      ),
    );
  }
}

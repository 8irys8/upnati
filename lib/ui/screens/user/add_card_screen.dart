import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _expDateController = TextEditingController();
  final _expDateSecondController = TextEditingController();
  final _cvvController = TextEditingController();
  final _cardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            LocaleKeys.user_info_my_account.tr(),
            style: AppTheme.bold(size: 18),
          ),
          leading: Column(
            children: [
              Transform.translate(
                  offset: const Offset(-8, 0),
                  child: Text('1',
                      style: AppTheme.bold(size: 10, color: AppColors.roze))),
              SvgPicture.asset(
                Svgs.icRing,
                height: 18,
                fit: BoxFit.scaleDown,
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 29,
                ),
                Text(LocaleKeys.user_info_credit_card_settings.tr(),
                    style: AppTheme.bold(
                      size: 18,
                    )),
                const SizedBox(
                  height: 18,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 37),
                  child: Column(
                    children: [
                      Container(
                          height: 176,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  const Color(0xff808285).withOpacity(0.55),
                                  const Color(0xffBEC0C2)
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 26),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  color: AppColors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Center(
                                      child: Text('1158 ***************',
                                          style: AppTheme.regular(size: 14))),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  color: AppColors.white,
                                  height: 10,
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width /
                                              2),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  color: AppColors.white,
                                  height: 10,
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width /
                                              2),
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Svgs.icPlusCircle),
                              const SizedBox(
                                width: 13,
                              ),
                              Text(LocaleKeys.user_info_add_card.tr(),
                                  style: AppTheme.regular(
                                    size: 14,
                                  ).copyWith(
                                      decoration: TextDecoration.underline)),
                            ],
                          ),
                          Text(LocaleKeys.user_info_edited.tr(),
                              style: AppTheme.regular(
                                size: 14,
                              ).copyWith(decoration: TextDecoration.underline)),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Text(LocaleKeys.user_info_enter_card_number.tr(),
                    style: AppTheme.regular(
                      size: 14,
                    ).copyWith(decoration: TextDecoration.underline)),
                const SizedBox(
                  height: 7,
                ),
                CustomInput(controller: _cardNumberController),
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: CustomInput(
                              label:
                                  LocaleKeys.buy_details_expiration_date.tr(),
                              labelStyle: AppTheme.semi(
                                  size: 10,
                                  color: Colors.black.withOpacity(0.64)),
                              controller: _expDateController),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Transform.translate(
                            offset: const Offset(0, 5),
                            child: Text('/',
                                style: AppTheme.semi(
                                    size: 10,
                                    color: Colors.black.withOpacity(0.64))),
                          ),
                        ),
                        SizedBox(
                          width: 80,
                          child: CustomInput(
                              label: '',
                              labelStyle: AppTheme.semi(
                                  size: 10,
                                  color: Colors.black.withOpacity(0.64)),
                              controller: _expDateSecondController),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 80,
                      child: CustomInput(
                          label: 'cvv',
                          leftAlignment: true,
                          labelStyle: AppTheme.semi(
                            size: 10,
                            color: Colors.black.withOpacity(0.64),
                          ),
                          controller: _cvvController),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 66,
                ),
                CustomButton(
                  title: LocaleKeys.user_info_save_btn.tr(),
                  onPressed: () => {},
                  color: AppColors.darkBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

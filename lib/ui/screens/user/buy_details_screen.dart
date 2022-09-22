import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class BuyDetailsScreen extends StatefulWidget {
  const BuyDetailsScreen({Key? key}) : super(key: key);

  @override
  State<BuyDetailsScreen> createState() => _BuyDetailsScreenState();
}

class _BuyDetailsScreenState extends State<BuyDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();
  final _emailController = TextEditingController();
  final _settlementController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _postalCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(child: Image.asset(Images.upnatiStoreLogo)),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.gray),
                      ),
                    ),
                    Container(
                      color: AppColors.gray,
                      height: 1,
                      width: 70,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.gray),
                      ),
                    ),
                    Container(
                      color: AppColors.gray,
                      height: 1,
                      width: 70,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.gray),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.buy_details_details.tr(),
                        style: AppTheme.semiLight(size: 8)),
                    const SizedBox(
                      width: 68,
                    ),
                    Text(LocaleKeys.buy_details_payment_manner.tr(),
                        textAlign: TextAlign.center,
                        style: AppTheme.semiLight(size: 8)),
                    const SizedBox(
                      width: 68,
                    ),
                    Text(LocaleKeys.buy_details_confirmation.tr(),
                        textAlign: TextAlign.center,
                        style: AppTheme.semiLight(size: 8)),
                  ],
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.inputGray,
                  border: Border.symmetric(
                      vertical: BorderSide.none,
                      horizontal:
                          BorderSide(color: AppColors.gray, width: 0.5)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 37, vertical: 13),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: AppColors.inputGray,
                                border: Border.all(
                                  color: AppColors.gray,
                                ),
                                borderRadius: BorderRadius.circular(4)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                Images.shelfImg,
                                fit: BoxFit.cover,
                                width: 100,
                              ),
                            )),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('מדף דקורטיבי',
                                  style: AppTheme.semi(size: 14)),
                              Text('shushu market',
                                  style: AppTheme.bold(
                                          size: 16, color: AppColors.yellow)
                                      .copyWith(
                                          decoration:
                                              TextDecoration.underline)),
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
                              Row(
                                children: [
                                  Text(LocaleKeys.buy_details_quantity.tr(),
                                      style: AppTheme.regular(size: 10)),
                                  SizedBox(
                                      width: 75,
                                      height: 22,
                                      child: FormBuilderTextField(
                                        name: 'quantity',
                                        controller: _quantityController,
                                        keyboardType: TextInputType.number,
                                        style: AppTheme.regular(size: 10),
                                        decoration: InputDecoration(
                                            fillColor: AppColors.white,
                                            focusColor: AppColors.white,
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    width: 0.1,
                                                    color: AppColors.gray)),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                                borderSide: const BorderSide(
                                                    width: 0.1,
                                                    color: AppColors.gray))),
                                      )),
                                ],
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 6,
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  Svgs.icCloseThin,
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(LocaleKeys.basket_info_delete_item.tr(),
                                    style: AppTheme.regular(size: 8)),
                              ],
                            ),
                          ],
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LocaleKeys.buy_details_details.tr(),
                        style: AppTheme.semi(
                            size: 12, color: Colors.black.withOpacity(0.64))),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_full_name.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _nameController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_email.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _emailController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_phone.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _phoneController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_address.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _addressController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_settlement.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _settlementController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_postal_code.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _postalCodeController),
                    const SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 21,
                              height: 19,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                  color: AppColors.gray,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(LocaleKeys.buy_details_sending_by_email.tr(),
                                style: AppTheme.semi(
                                    size: 10,
                                    color: Colors.black.withOpacity(0.64))),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 21,
                              height: 19,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                  color: AppColors.gray,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(LocaleKeys.buy_details_shipping.tr(),
                                style: AppTheme.semi(
                                    size: 10,
                                    color: Colors.black.withOpacity(0.64))),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 21,
                              height: 19,
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                border: Border.all(
                                  color: AppColors.gray,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(LocaleKeys.buy_details_pick_up.tr(),
                                style: AppTheme.semi(
                                    size: 10,
                                    color: Colors.black.withOpacity(0.64))),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomButton(
                      title: LocaleKeys.buy_details_continue_ordering_btn.tr(),
                      onPressed: () {},
                      color: AppColors.darkBlue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

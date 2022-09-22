import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/modal_wrapper.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _quantityController = TextEditingController();
  final _cardHolderController = TextEditingController();
  final _idHolderController = TextEditingController();
  final _cvvController = TextEditingController();
  final _expDateController = TextEditingController();
  final _expDateSecondController = TextEditingController();
  final _ticketController = TextEditingController();

  void _showExitDialog(BuildContext context) async {
    return await showDialog(
      barrierColor: Colors.black.withOpacity(0.64),
      context: context,
      builder: (context) => ModalWrapper(
        alignment: Alignment.topCenter,
        top: 55,
        bottom: 330,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: SvgPicture.asset(
                    Svgs.icBackIcon,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                LocaleKeys.buy_details_payment_done.tr(),
                style: AppTheme.semi(
                    size: 12, color: AppColors.text.withOpacity(.64)),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Container(
                height: 88,
                decoration: const BoxDecoration(
                  color: AppColors.roze,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                LocaleKeys.buy_details_purchased.tr(),
                style: AppTheme.semi(
                    size: 12, color: AppColors.text.withOpacity(.64)),
              ),
              const SizedBox(height: 24),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.inputGray,
                  border: Border.symmetric(
                      vertical: BorderSide.none,
                      horizontal:
                          BorderSide(color: AppColors.gray, width: 0.5)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                      color: AppColors.white,
                      child: Image.asset(
                        Images.shelfImg,
                        fit: BoxFit.cover,
                      ),
                    )),
                    Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 14,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 16,
                                ),
                                Text(
                                  'מדף דקורטיבי',
                                  style: AppTheme.semi(size: 14),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    LocaleKeys
                                        .buy_details_for_transit_after_delivery
                                        .tr(),
                                    style: AppTheme.semi(size: 10).copyWith(
                                        decoration: TextDecoration.underline)),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                    LocaleKeys.buy_details_for_more_products
                                        .tr(),
                                    style: AppTheme.semi(size: 10)),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text('shushu market',
                                    style: AppTheme.bold(
                                            size: 12, color: AppColors.yellow)
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)),
                              ]),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

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
                      child: SvgPicture.asset(
                        Svgs.icCheckedWhite,
                        height: 11,
                        fit: BoxFit.scaleDown,
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
                    Text(LocaleKeys.buy_details_payment_methods.tr(),
                        style: AppTheme.semi(
                            size: 12, color: Colors.black.withOpacity(0.64))),
                    const SizedBox(
                      height: 14,
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
                            Text(LocaleKeys.buy_details_credit_card.tr(),
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
                            Text('paypal',
                                style: AppTheme.semi(
                                    size: 10,
                                    color: Colors.black.withOpacity(0.64))),
                          ],
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 44,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_cardholder_name.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _cardHolderController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_id_cardholder.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _idHolderController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_ticket_number.tr(),
                        labelStyle: AppTheme.semi(
                            size: 10, color: Colors.black.withOpacity(0.64)),
                        controller: _ticketController),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 80,
                              child: CustomInput(
                                  label: LocaleKeys.buy_details_expiration_date
                                      .tr(),
                                  labelStyle: AppTheme.semi(
                                      size: 10,
                                      color: Colors.black.withOpacity(0.64)),
                                  controller: _expDateController),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
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
                      height: 34,
                    ),
                    CustomButton(
                      title: LocaleKeys.buy_details_confirmation_btn.tr(),
                      onPressed: () => _showExitDialog(context),
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

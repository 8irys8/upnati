import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final _expDateController = TextEditingController();
  final _expDateSecondController = TextEditingController();
  final _cvvController = TextEditingController();
  final _cardHolderController = TextEditingController();
  final _cardIdController = TextEditingController();
  final _ticketNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
        ),
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Column(
                children: [
                  Text(LocaleKeys.buy_details_payment_methods.tr(),
                      style:
                          AppTheme.semi(size: 44, color: AppColors.textGray)),
                  const SizedBox(height: 44),
                  Row(
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
                          Text(LocaleKeys.user_info_credit_card.tr(),
                              style: AppTheme.semiLight(
                                  size: 10, color: AppColors.textGray)),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
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
                              style: AppTheme.semiLight(
                                  size: 10, color: AppColors.textGray)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 34,
                  ),
                  CustomInput(
                    controller: _cardHolderController,
                    label: LocaleKeys.buy_details_cardholder_name.tr(),
                    labelStyle:
                        AppTheme.semiLight(size: 10, color: AppColors.textGray),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  CustomInput(
                    controller: _cardIdController,
                    label: LocaleKeys.buy_details_id_cardholder.tr(),
                    labelStyle:
                        AppTheme.semiLight(size: 10, color: AppColors.textGray),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInput(
                    controller: _ticketNumberController,
                    label: LocaleKeys.buy_details_ticket_number.tr(),
                    labelStyle:
                        AppTheme.semiLight(size: 10, color: AppColors.textGray),
                  ),
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
                                label:
                                    LocaleKeys.buy_details_expiration_date.tr(),
                                labelStyle: AppTheme.semiLight(
                                    size: 10, color: AppColors.textGray),
                                controller: _expDateController),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Transform.translate(
                              offset: const Offset(0, 5),
                              child: Text('/',
                                  style: AppTheme.semiLight(
                                      size: 10, color: AppColors.textGray)),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: CustomInput(
                                label: '',
                                labelStyle: AppTheme.semi(
                                    size: 10, color: AppColors.textGray),
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
                    height: 100,
                  ),
                  CustomButton(
                    title: LocaleKeys.basket_info_for_payment.tr(),
                    onPressed: () => showDialog(
                        context: context,
                        barrierColor: Colors.black.withOpacity(0.76),
                        builder: (context) => AlertDialog(
                              contentPadding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(35)),
                              scrollable: true,
                              content: Builder(builder: (context) {
                                return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              top: 16.0, right: 12),
                                          child: Align(
                                              alignment: Alignment.topRight,
                                              child: Icon(
                                                Icons.close_outlined,
                                                color: Colors.black,
                                                size: 30,
                                              )),
                                        ),
                                      ),
                                      Text(
                                          LocaleKeys.buy_details_payment_done
                                              .tr(),
                                          style: AppTheme.semiLight(
                                              size: 12,
                                              color: AppColors.textGray)),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 12, bottom: 12),
                                        child:
                                            Image.asset(Images.paymentDoneImg),
                                      ),
                                      Text(
                                        LocaleKeys
                                            .buy_details_for_transit_after_delivery
                                            .tr(),
                                        style: AppTheme.semiLight(
                                          size: 10,
                                        ).copyWith(
                                            decoration:
                                                TextDecoration.underline),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        LocaleKeys.buy_details_for_more_products
                                            .tr(),
                                        style: AppTheme.semiLight(
                                          size: 10,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        'shushu market',
                                        style: AppTheme.bold(
                                                size: 12,
                                                color: AppColors.yellow)
                                            .copyWith(
                                                decoration:
                                                    TextDecoration.underline),
                                      ),
                                      const SizedBox(height: 30),
                                    ],
                                  ),
                                );
                              }),
                            )),
                    color: AppColors.darkBlueLight,
                    borderRadius: 10,
                    innerShadow: true,
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: AppColors.roze,
                            shape: BoxShape.circle,
                          ),
                          child: SvgPicture.asset(
                            Svgs.icWhiteSmallArrow,
                            width: 14,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          color: AppColors.roze,
                          height: 1,
                          width: 70,
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: AppColors.roze,
                            shape: BoxShape.circle,
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
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

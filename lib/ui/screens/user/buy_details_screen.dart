import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(LocaleKeys.buy_details_details.tr(),
                          style: AppTheme.semi(
                              size: 44, color: AppColors.textGray)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_full_name.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
                        controller: _nameController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_email.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
                        controller: _emailController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_phone.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
                        controller: _phoneController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_address.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
                        controller: _addressController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_settlement.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
                        controller: _settlementController),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomInput(
                        label: LocaleKeys.buy_details_postal_code.tr(),
                        labelStyle: AppTheme.semiLight(
                            size: 10, color: AppColors.textGray),
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
                            Text(LocaleKeys.buy_details_pick_up.tr(),
                                style: AppTheme.semi(
                                    size: 10, color: AppColors.textGray)),
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
                                    size: 10, color: AppColors.textGray)),
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
                            Text(LocaleKeys.buy_details_sending_by_email.tr(),
                                style: AppTheme.semi(
                                    size: 10, color: AppColors.textGray)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    CustomButton(
                      title: LocaleKeys.buy_details_continue_ordering_btn.tr(),
                      onPressed: () =>
                          context.router.replace(const AddCardScreen()),
                      color: AppColors.darkBlueLight,
                      borderRadius: 10,
                      innerShadow: true,
                    ),
                    const SizedBox(
                      height: 28,
                    ),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: AppColors.roze,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.roze),
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
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle,
                              border: Border.all(color: AppColors.roze),
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
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/business/commit_order_payload.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/business/order_preview_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';
import 'package:upnati/core/config/router.gr.dart';

class BuyDetailsScreen extends StatefulWidget with AutoRouteWrapper {
  final ItemCollection? order;
  const BuyDetailsScreen({Key? key, this.order}) : super(key: key);

  @override
  State<BuyDetailsScreen> createState() => _BuyDetailsScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(),
      ),
      BlocProvider(
        create: (context) => GetIt.I<UserCubit>(),
      ),
    ], child: this);
  }
}

class _BuyDetailsScreenState extends State<BuyDetailsScreen> {
  final _formKey = GlobalKey<FormState>();
  // final _quantityController = TextEditingController();
  final _emailController = TextEditingController();
  final _settlementController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _postalCodeController = TextEditingController();
  final ValueNotifier<String?> _isSelectedDeliveryType = ValueNotifier(null);

  void _onBuy() {
    if (_formKey.currentState!.validate()) {
      context.read<BusinessCubit>().createOrder(
            payload: CommitOrderPayload(
                deliveryInfo: DeliveryInfo(
                  address: _addressController.text,
                  city: _settlementController.text,
                  email: _emailController.text,
                  phoneNumber: _phoneController.text,
                  postalCode: _postalCodeController.text,
                  receiverName: _nameController.text,
                ),
                items: widget.order,
                currency: BankCurrency.NIS.name,
                paymentMethod: PaymentMethod.cardcom.name),
          );
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: MultiBlocListener(
        listeners: [
          BlocListener<BusinessCubit, BusinessState>(
            listener: (context, state) {
              // print(state);
              state.whenOrNull(
                error: (err) {
                  if (err.error is AppExceptions) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(err.message ?? ''),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Something went wrong'),
                      ),
                    );
                  }
                },
                successCommitedOrdersResponse: (commitedOrdersResponse) async {
                  var result = await context.router.push(PaymentWebViewScreen(
                      url: commitedOrdersResponse.paymentLink ?? ''));
                  if (result == true) {
                    if (!mounted) return;
                    Utils.showSuccessOrderDialog(context);
                    context.read<BusinessCubit>().modifyBasket(
                        pageOrder: SortType.DESC.name,
                        size: 1,
                        itemCollection: widget.order?.copyWith(
                                amount: widget.order?.amount.map(
                                        (key, value) => MapEntry(key, 0)) ??
                                    {}) ??
                            const ItemCollection(amount: {}));
                  }
                },
              );
            },
          ),
          BlocListener<UserCubit, UserState>(
            listener: (context, state) {
              state.whenOrNull(
                errorUserState: (err) {
                  if (err.error is AppExceptions) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(err.message ?? ''),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Something went wrong'),
                      ),
                    );
                  }
                },
                successUserStateResponse: (response) {
                  _emailController.text = response.email ?? '';
                  _nameController.text = response.fullName ?? '';
                  _phoneController.text = response.phoneNumber ?? '';
                },
              );
            },
          ),
        ],
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
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                          ]),
                          label: LocaleKeys.buy_details_full_name.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _nameController),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          inputType: TextInputType.emailAddress,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                            FormBuilderValidators.email(
                                errorText: 'כתובת אימייל לא תקינה'),
                          ]),
                          label: LocaleKeys.buy_details_email.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _emailController),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                            FormBuilderValidators.integer(
                                errorText: 'מספר טלפון לא תקין'),
                          ]),
                          label: LocaleKeys.buy_details_phone.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _phoneController),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                          ]),
                          label: LocaleKeys.buy_details_address.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _addressController),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                          ]),
                          label: LocaleKeys.buy_details_settlement.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _settlementController),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(
                                errorText: 'שדה חובה'),
                            FormBuilderValidators.integer(
                                errorText: 'קוד שגוי'),
                          ]),
                          label: LocaleKeys.buy_details_postal_code.tr(),
                          labelStyle: AppTheme.semiLight(
                              size: 10, color: AppColors.textGray),
                          controller: _postalCodeController),
                      const SizedBox(
                        height: 17,
                      ),
                      ValueListenableBuilder<String?>(
                          valueListenable: _isSelectedDeliveryType,
                          builder: (context, value, child) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () =>
                                      _isSelectedDeliveryType.value = '1',
                                  behavior: HitTestBehavior.opaque,
                                  child: Row(
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
                                        child: value == '1'
                                            ? const Center(
                                                child: Icon(
                                                Icons.check,
                                                color: AppColors.text,
                                                size: 15,
                                              ))
                                            : const SizedBox(),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(LocaleKeys.buy_details_pick_up.tr(),
                                          style: AppTheme.semi(
                                              size: 10,
                                              color: AppColors.textGray)),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      _isSelectedDeliveryType.value = '2',
                                  behavior: HitTestBehavior.opaque,
                                  child: Row(
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
                                        child: value == '2'
                                            ? const Center(
                                                child: Icon(
                                                Icons.check,
                                                color: AppColors.text,
                                                size: 15,
                                              ))
                                            : const SizedBox(),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(LocaleKeys.buy_details_shipping.tr(),
                                          style: AppTheme.semi(
                                              size: 10,
                                              color: AppColors.textGray)),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () =>
                                      _isSelectedDeliveryType.value = '3',
                                  behavior: HitTestBehavior.opaque,
                                  child: Row(
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
                                        child: value == '3'
                                            ? const Center(
                                                child: Icon(
                                                Icons.check,
                                                color: AppColors.text,
                                                size: 15,
                                              ))
                                            : const SizedBox(),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                          LocaleKeys
                                              .buy_details_sending_by_email
                                              .tr(),
                                          style: AppTheme.semi(
                                              size: 10,
                                              color: AppColors.textGray)),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          }),
                      const SizedBox(
                        height: 28,
                      ),
                      CustomButton(
                        title:
                            LocaleKeys.buy_details_continue_ordering_btn.tr(),
                        onPressed: () {
                          _onBuy();
                          // context.router.replace(const AddCardScreen());
                        },
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
      ),
    );
  }
}

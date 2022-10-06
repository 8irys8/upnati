import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_dropdown.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class MarketDetailScreen extends StatefulWidget with AutoRouteWrapper {
  const MarketDetailScreen({Key? key}) : super(key: key);

  @override
  State<MarketDetailScreen> createState() => _MarketDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<BusinessCubit>(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _MarketDetailScreenState extends State<MarketDetailScreen> {
  final ValueNotifier<File?> _businessImage = ValueNotifier(null);
  final nameController = TextEditingController();
  final detailController = TextEditingController();
  final agreementBox = ValueNotifier(true);
  final _formKey = GlobalKey<FormState>();

  void _putFile() async {
    var result = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Choose Image'),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        if (image != null) {
                          _businessImage.value = File(image.path);
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Camera')),
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          _businessImage.value = File(image.path);
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Gallery')),
                ],
              ),
            ));
    // if (result == true && _businessImage.value != null) {
    //   context
    //       .read<BusinessCubit>()
    //       .uploadBusinessImage(file: _businessImage.value!);
    // }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<BusinessCubit>().getBusinessCategoryMap();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: const AppBarTheme(
          color: AppColors.background,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.text,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(),
        body: BlocListener<BusinessCubit, BusinessState>(
          listener: (context, state) {
            state.whenOrNull(
              // successBusinessResponse: (businessResponse) => ,

              error: (err) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(err.message),
                ),
              ),
            );
          },
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 37.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            LocaleKeys.market_screen_title.tr(),
                            style: AppTheme.regular(size: 16),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          CustomInput(
                            controller: nameController,
                            label: LocaleKeys.market_screen_name.tr(),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(errorText: 'נדרש'),
                            ]),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  LocaleKeys.market_screen_logo_desc.tr(),
                                  style: AppTheme.regular(
                                      size: 12, color: AppColors.textGray),
                                ),
                              ),
                              ValueListenableBuilder<File?>(
                                  valueListenable: _businessImage,
                                  builder: (context, value, child) {
                                    return Visibility(
                                      visible: value != null,
                                      child: GestureDetector(
                                        onTap: () => _putFile(),
                                        child: Container(
                                            constraints: const BoxConstraints(
                                              maxHeight: 134,
                                            ),
                                            alignment: Alignment.bottomLeft,
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: SvgPicture.asset(
                                                Svgs.icEditGray)),
                                      ),
                                    );
                                  }),
                              GestureDetector(
                                onTap: () => _putFile(),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: AppColors.gray.withOpacity(.36),
                                      width: .5,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: AppColors.text.withOpacity(.3),
                                        offset: const Offset(-3, 1),
                                        blurRadius: 2,
                                        spreadRadius: 1,
                                        inset: true,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  width: 143,
                                  height: 135,
                                  child: ValueListenableBuilder<File?>(
                                      valueListenable: _businessImage,
                                      builder: (context, value, child) {
                                        return value == null
                                            ? SvgPicture.asset(
                                                Svgs.icPlus,
                                                color: AppColors.textGray,
                                              )
                                            : Image.file(
                                                value,
                                                fit: BoxFit.cover,
                                                width: 110,
                                                height: 110,
                                              );
                                      }),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          BlocBuilder<BusinessCubit, BusinessState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                  error: (err) => Container(
                                        child: Text('errorCategory'),
                                      ),
                                  orElse: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  successBusinessMapInfo: (businessCategory) =>
                                      CustomDropdown(
                                        onChanged: (value) {
                                          // _businessCategory.value = value;
                                        },
                                        label: LocaleKeys.market_screen_category
                                            .tr(),
                                        items: businessCategory
                                            .map((key, value) => MapEntry(key,
                                                Item(name: key, value: value)))
                                            .values
                                            .toList(),
                                        hint: LocaleKeys
                                            .market_screen_dropdown_help
                                            .tr(),
                                      ));
                            },
                          ),
                          const SizedBox(
                            height: 27,
                          ),
                          CustomDropdown(
                            label: LocaleKeys.market_screen_place.tr(),
                            items: [],
                            hint: LocaleKeys.market_screen_dropdown_help.tr(),
                          ),
                          const SizedBox(
                            height: 37,
                          ),
                          CustomInput(
                            isMultiline: true,
                            controller: detailController,
                            label: LocaleKeys.market_screen_detail.tr(),
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(errorText: 'נדרש'),
                            ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          ValueListenableBuilder<bool>(
                            valueListenable: agreementBox,
                            builder: (context, value, _) {
                              return CustomCheckbox(
                                label:
                                    LocaleKeys.market_screen_agreement_1.tr(),
                                underlineText:
                                    LocaleKeys.market_screen_agreement_2.tr(),
                                value: value,
                                onTap: () =>
                                    agreementBox.value = !agreementBox.value,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const CheckedStepsRadio(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37.0)
                    .copyWith(top: 11, bottom: 24),
                child: CustomButton(
                  onPressed: () {
                    context.router.push(const BusinessRegistrationScreen());
                  },
                  title: LocaleKeys.market_screen_save_btn.tr(),
                  color: AppColors.darkBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

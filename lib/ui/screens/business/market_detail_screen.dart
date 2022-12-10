import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business_form.dart';
import 'package:upnati/logic/models/description.dart';
import 'package:upnati/logic/models/local_description.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_dropdown.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class MarketDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final BusinessResponse? businessResponse;
  const MarketDetailScreen({Key? key, this.businessResponse}) : super(key: key);

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
  bool _uploadedImg = false;
  final nameController = TextEditingController();
  final detailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _businessCategory;
  String? _businessScope;
  String? _businessCity;
  BusinessResponse? _marketDetail;

  void _putFile() async {
    _uploadedImg = false;
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
  }

  void createBusiness() {
    if (_businessImage.value == null &&
        widget.businessResponse?.imageUrls?.isEmpty == true) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Please upload a business image')));

      return;
    }
    if (_formKey.currentState!.validate()) {
      if (_businessImage.value != null) {
        context
            .read<BusinessCubit>()
            .getUploadImages(files: [_businessImage.value!]);
      } else {
        var businessForm = BusinessForm(
            name: nameController.text,
            description: [
              LocalDescription(
                  locale: LocaleType.he.name,
                  description: Description(full: detailController.text))
            ],
            category: _businessCategory,
            defaultLocale: LocaleType.he.name,
            deliveryScope: _businessScope,
            cityName: _businessCity);
        if (widget.businessResponse == null) {
          context.read<BusinessCubit>().createNewBusiness(businessForm);
        } else {
          context.read<BusinessCubit>().updateBusinessInfo(
                businessForm,
              );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: AppColors.roze.withOpacity(0.9),
          content: const Text('בבקשה מלא את כל השדות')));
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.businessResponse != null) {
      nameController.text = widget.businessResponse?.name ?? '';
      detailController.text = widget.businessResponse?.description?.full ?? '';
      _businessCategory = widget.businessResponse?.category;
      _businessScope = widget.businessResponse?.deliveryScope;
      _uploadedImg = widget.businessResponse?.imageUrls?.isNotEmpty == true;
      _businessCity = widget.businessResponse?.location;
    }
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<BusinessCubit>().getBusinessCategory();
      context.read<BusinessCubit>().getDeliveryScope();
      context.read<BusinessCubit>().getBusinessCity();
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
        ),
        body: BlocListener<BusinessCubit, BusinessState>(
          listener: (context, state) {
            state.whenOrNull(
              successFiles: (files) {
                var businessForm = BusinessForm(
                    name: nameController.text,
                    description: [
                      LocalDescription(
                          locale: LocaleType.he.name,
                          description: Description(full: detailController.text))
                    ],
                    imageUrls: files.urls,
                    category: _businessCategory,
                    defaultLocale: LocaleType.he.name,
                    deliveryScope: _businessScope,
                    cityName: _businessCity);
                if (widget.businessResponse == null) {
                  context.read<BusinessCubit>().createNewBusiness(businessForm);
                } else {
                  context.read<BusinessCubit>().updateBusinessInfo(
                        businessForm,
                      );
                }
              },
              successBusinessResponse: (businessResponse) {
                context.router.push(BusinessRegistrationScreen(
                    businessResponse: businessResponse));
              },
              error: (err) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(err.message),
                  ),
                );
              },
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
                              FormBuilderValidators.minLength(3,
                                  errorText: 'שם קצר מדי'),
                              FormBuilderValidators.maxLength(25,
                                  errorText: 'שם ארוך מדי'),
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
                                            ? widget.businessResponse?.imageUrls
                                                        ?.isNotEmpty ==
                                                    true
                                                ? Image.network(
                                                    widget.businessResponse!
                                                        .imageUrls!.first,
                                                    width: 110,
                                                    height: 110,
                                                  )
                                                : SvgPicture.asset(
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
                            buildWhen: (previous, current) => current.maybeWhen(
                                successBusinessCity: (_) => true,
                                orElse: () => false),
                            builder: (context, state) {
                              return state.maybeWhen(
                                  error: (err) => Container(
                                        child: Text('errorCity'),
                                      ),
                                  orElse: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  successBusinessCity: (businessCity) =>
                                      CustomDropdown(
                                        initialValue: _businessCity,
                                        validator:
                                            FormBuilderValidators.required(
                                                errorText: 'נדרש'),
                                        onChanged: (value) {
                                          _businessCity = value;
                                        },
                                        label: 'עִיר',
                                        items: businessCity
                                            .map((v) => Item(name: v, value: v))
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
                          BlocBuilder<BusinessCubit, BusinessState>(
                            buildWhen: (previous, current) => current.maybeWhen(
                                successBusinessMap: (_) => true,
                                orElse: () => false),
                            builder: (context, state) {
                              return state.maybeWhen(
                                  error: (err) => Container(
                                        child: Text('errorCategory'),
                                      ),
                                  orElse: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  successBusinessMap: (businessCategory) =>
                                      CustomDropdown(
                                        initialValue: _businessCategory,
                                        validator:
                                            FormBuilderValidators.required(
                                                errorText: 'נדרש'),
                                        onChanged: (value) {
                                          _businessCategory = value;
                                        },
                                        label: LocaleKeys.market_screen_category
                                            .tr(),
                                        items: businessCategory
                                            .map((v) => Item(
                                                name: v?.name ?? '',
                                                value: v?.name ?? ''))
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
                          BlocBuilder<BusinessCubit, BusinessState>(
                            buildWhen: (previous, current) => current.maybeWhen(
                                successBusinessList: (_) => true,
                                // loading: () => true,
                                orElse: () => false),
                            builder: (context, state) {
                              return state.maybeWhen(
                                  error: (err) => Container(
                                        child: Text('errorDelivery'),
                                      ),
                                  orElse: () => const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                  successBusinessList: (businessScope) =>
                                      CustomDropdown(
                                        initialValue: _businessScope,
                                        validator:
                                            FormBuilderValidators.required(
                                                errorText: 'נדרש'),
                                        onChanged: (value) {
                                          _businessScope = value;
                                        },
                                        label:
                                            LocaleKeys.market_screen_place.tr(),
                                        hint: LocaleKeys
                                            .market_screen_dropdown_help
                                            .tr(),
                                        items: businessScope
                                            .map((v) => Item(name: v, value: v))
                                            .toList(),
                                      ));
                            },
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
                              FormBuilderValidators.minLength(10,
                                  errorText: 'שם קצר מדי'),
                              FormBuilderValidators.maxLength(500,
                                  errorText: 'שם ארוך מדי'),
                            ]),
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
                child: BlocBuilder<BusinessCubit, BusinessState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                        loading: () => const SpinKitCircle(
                              color: AppColors.darkBlue,
                            ),
                        orElse: () => CustomButton(
                              onPressed: () => createBusiness(),
                              title: LocaleKeys.market_screen_save_btn.tr(),
                              color: AppColors.darkBlue,
                            ));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

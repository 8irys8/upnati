import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_dropdown.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_radio.dart';
import 'package:upnati/ui/widgets/icon_box.dart';

class ProduceDetailScreen extends HookWidget {
  const ProduceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final descController = useTextEditingController();

    final priceController = useTextEditingController();
    final quantityController = useTextEditingController();
    final discountPrice = useTextEditingController();
    final discountPercent = useTextEditingController();

    final deliveryPrice = useTextEditingController();

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
          title: Text(
            LocaleKeys.add_product_title.tr(),
            style: AppTheme.regular(color: AppColors.text),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(LocaleKeys.add_product_product_area.tr()),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.inputGray,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.gray.withOpacity(.36),
                      width: 0.5,
                    ),
                  ),
                  padding: const EdgeInsets.all(11),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomInput(
                        color: Colors.white,
                        label: LocaleKeys.add_product_name.tr(),
                        controller: nameController,
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      CustomDropdown(
                        color: Colors.white,
                        label: LocaleKeys.add_product_category.tr(),
                        hint: LocaleKeys.add_product_dropdown_help.tr(),
                        items: const [
                          'Cat 1',
                          'Cat 2',
                          'Cat 3',
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Text(
                        LocaleKeys.add_product_pdoduct_type.tr(),
                        style: AppTheme.regular(
                          size: 12,
                          color: AppColors.text.withOpacity(.64),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomRadio(
                            label: LocaleKeys.add_product_product_type_1.tr(),
                            value: false,
                          ),
                          CustomRadio(
                            label: LocaleKeys.add_product_product_type_2.tr(),
                            value: false,
                          ),
                          CustomRadio(
                            label: LocaleKeys.add_product_product_type_3.tr(),
                            value: true,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      CustomInput(
                        color: Colors.white,
                        isMultiline: true,
                        controller: descController,
                        label: LocaleKeys.add_product_product_desc.tr(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                Container(
                  padding: const EdgeInsets.all(11),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.inputGray,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.gray.withOpacity(.36),
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        LocaleKeys.add_product_product_photo.tr(),
                        style: AppTheme.regular(
                          size: 12,
                          color: AppColors.text.withOpacity(.64),
                        ),
                      ),
                      Text(
                        LocaleKeys.add_product_product_photo_desc.tr(),
                        style: AppTheme.regular(
                          size: 10,
                          color: AppColors.text.withOpacity(.64),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          LocaleKeys.add_product_product_first_photo.tr(),
                          textAlign: TextAlign.left,
                          style: AppTheme.regular(
                            size: 10,
                            color: AppColors.text.withOpacity(.64),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text,
                              ),
                              color: AppColors.text,
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                          SizedBox(
                            width: 64,
                            height: 64,
                            child: IconBox(
                              icon: SvgPicture.asset(
                                Svgs.icCamera,
                                color: AppColors.text.withOpacity(0.14),
                              ),
                              text: LocaleKeys.add_product_camera_desc.tr(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(11),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.gray.withOpacity(.36),
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(LocaleKeys.add_product_product_video.tr()),
                      Text(LocaleKeys.add_product_product_video_desc.tr()),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: SizedBox(
                          width: 161,
                          height: 131,
                          child: IconBox(
                            color: AppColors.text,
                            icon: SvgPicture.asset(
                              Svgs.icVideo,
                            ),
                            text: LocaleKeys.add_product_video_camera_desc.tr(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: const EdgeInsets.all(11),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.gray.withOpacity(.36),
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: CustomInput(
                              controller: priceController,
                              label: LocaleKeys.add_product_price.tr(),
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            flex: 1,
                            child: CustomInput(
                              controller: quantityController,
                              label: LocaleKeys.add_product_count.tr(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                CustomRadio(
                                  label: LocaleKeys.add_product_discount.tr(),
                                  value: false,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                CustomInput(
                                  controller: discountPercent,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 13,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                CustomRadio(
                                  label: LocaleKeys.add_product_inPrice.tr(),
                                  value: false,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                CustomInput(
                                  controller: discountPrice,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      CustomCheckbox(
                        label: LocaleKeys.add_product_for_all_in_store.tr(),
                        value: false,
                        onTap: () => {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Container(
                  padding: const EdgeInsets.all(11),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: AppColors.gray.withOpacity(.36),
                      width: 0.5,
                    ),
                  ),
                  child: Column(
                    children: [
                      CustomDropdown(
                        items: const [
                          '1-3,',
                          '3-5',
                          '5-7',
                        ],
                        label: LocaleKeys.add_product_delivery_pending.tr(),
                        hint: LocaleKeys.add_product_delivery_pending_desc.tr(),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      CustomDropdown(
                        items: const [
                          '1-3,',
                          '3-5',
                          '5-7',
                        ],
                        label: LocaleKeys.add_product_delivery.tr(),
                        hint: LocaleKeys.add_product_delivery_desc.tr(),
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: CustomInput(
                              controller: deliveryPrice,
                              label: LocaleKeys.add_product_delivery_price.tr(),
                            ),
                          ),
                          const Spacer(
                            flex: 2,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 11,
                      ),
                      CustomCheckbox(
                        label: LocaleKeys.add_product_delivery_free.tr(),
                        value: false,
                        onTap: () => {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 19,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: CustomButton(
                        title: LocaleKeys.add_product_save_btn.tr(),
                        color: AppColors.darkBlue,
                        onPressed: () => context.router.pop(),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      flex: 1,
                      child: CustomButton(
                        color: AppColors.white,
                        textColor: AppColors.text,
                        title: LocaleKeys.add_product_cancel_btn.tr(),
                        onPressed: () => context.router.pop(),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_dropdown.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class MarketDetailScreen extends HookWidget {
  const MarketDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final detailController = useTextEditingController();
    final agreementBox = useState(true);

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
            LocaleKeys.market_screen_title.tr(),
            style: AppTheme.regular(size: 16),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomInput(
                  controller: nameController,
                  label: LocaleKeys.market_screen_name.tr(),
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
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.inputGray,
                        borderRadius: BorderRadius.circular(3),
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
                      width: 128,
                      height: 128,
                      child: SvgPicture.asset(Svgs.icPlus),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomDropdown(
                  label: LocaleKeys.market_screen_category.tr(),
                  items: const [
                    'Category 1',
                    'Category 2',
                    'Category 3',
                    'Category 4',
                    'Category 5',
                  ],
                  hint: LocaleKeys.market_screen_dropdown_help.tr(),
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomDropdown(
                  label: LocaleKeys.market_screen_place.tr(),
                  items: const [
                    'Place 1',
                    'Place 2',
                    'Place 3',
                    'Place 4',
                    'Place 5',
                  ],
                  hint: LocaleKeys.market_screen_dropdown_help.tr(),
                ),
                const SizedBox(
                  height: 37,
                ),
                CustomInput(
                  isMultiline: true,
                  controller: detailController,
                  label: LocaleKeys.market_screen_detail.tr(),
                ),
                const SizedBox(
                  height: 5,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: agreementBox,
                  builder: (context, value, _) {
                    return CustomCheckbox(
                      label: LocaleKeys.market_screen_agreement_1.tr(),
                      underlineText: LocaleKeys.market_screen_agreement_2.tr(),
                      value: value,
                      onTap: () => agreementBox.value = !agreementBox.value,
                    );
                  },
                ),
                const SizedBox(
                  height: 45,
                ),
                CustomButton(
                  onPressed: () =>
                      context.router.push(const ProduceDetailScreen()),
                  title: LocaleKeys.market_screen_save_btn.tr(),
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

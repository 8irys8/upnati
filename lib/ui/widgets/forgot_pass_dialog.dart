import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class ForgotPassDialog extends HookWidget {
  const ForgotPassDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();

    return Container(
      color: AppColors.grayLight,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13.0, left: 14, right: 31),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    LocaleKeys.login_forgot_password.tr(),
                    style: AppTheme.regular(size: 12),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: SvgPicture.asset(
                    Svgs.icClose,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Divider(
            color: AppColors.gray.withOpacity(0.26),
          ),
          const SizedBox(height: 59),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, right: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.login_forgot_screen_desc.tr(),
                  style: AppTheme.regular(size: 12),
                ),
                const SizedBox(height: 19),
                CustomInput(
                  hint: LocaleKeys.login_forgot_screen_email.tr(),
                  controller: emailController,
                ),
                const SizedBox(height: 46),
                CustomButton(
                  title: LocaleKeys.login_forgot_screen_send_btn.tr(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 49),
        ],
      ),
    );
  }
}

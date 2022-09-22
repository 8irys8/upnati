import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class RegisterScreen extends HookWidget {
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final phoneController = useTextEditingController();
    final usernameController = useTextEditingController();
    final termsChecked = useState<bool>(false);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Image.asset(Images.upnatiStoreLogo),
                ),
                const SizedBox(
                  height: 9,
                ),
                Center(
                  child: Text(
                    LocaleKeys.login_slogan.tr(),
                    style: AppTheme.regular(size: 16, color: AppColors.text),
                  ),
                ),
                const SizedBox(
                  height: 65,
                ),
                CustomInput(
                  label: LocaleKeys.register_name.tr(),
                  controller: nameController,
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomInput(
                  label: LocaleKeys.register_email.tr(),
                  controller: emailController,
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomInput(
                  label: LocaleKeys.register_phone.tr(),
                  controller: phoneController,
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomInput(
                  label: LocaleKeys.register_username.tr(),
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 27,
                ),
                CustomInput(
                  label: LocaleKeys.register_password.tr(),
                  controller: passwordController,
                  obscure: true,
                ),
                const SizedBox(
                  height: 11,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: termsChecked,
                  builder: (context, value, child) {
                    return CustomCheckbox(
                      label: LocaleKeys.register_confirm_terms.tr(),
                      underlineText:
                          LocaleKeys.register_confirm_terms_link.tr(),
                      value: value,
                      onTap: () {
                        termsChecked.value = !termsChecked.value;
                      },
                    );
                  },
                ),
                const SizedBox(
                  height: 37,
                ),
                CustomButton(
                  title: LocaleKeys.register_register_btn.tr(),
                  color: AppColors.darkBlueLight,
                  onPressed: () =>
                      context.router.replace(const BusinessSelectScreen()),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

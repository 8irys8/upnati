import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:upnati/resources/locale_keys.g.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Image.asset(Images.upnatiLogo),
              ),
              const SizedBox(
                height: 9,
              ),
              Center(
                child: Text(
                  LocaleKeys.login_slogan.tr(),
                ),
              ),
              const SizedBox(
                height: 65,
              ),
              CustomInput(
                label: LocaleKeys.login_username.tr(),
                controller: usernameController,
              ),
              const SizedBox(
                height: 13,
              ),
              CustomInput(
                label: LocaleKeys.login_password.tr(),
                controller: passwordController,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                LocaleKeys.login_forgot_password.tr(),
                style: AppTheme.regular(
                  size: 10,
                  color: AppColors.text,
                ).copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 53,
              ),
              CustomButton(
                title: LocaleKeys.login_login_btn.tr(),
              ),
              const SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.gray.withOpacity(0.49),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text(
                      LocaleKeys.login_or.tr(),
                      style: AppTheme.regular(size: 16),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.gray.withOpacity(0.49),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 51,
              ),
              CustomButton(
                color: AppColors.blue,
                title: LocaleKeys.login_sign_facebook.tr(),
                icon: Image.asset(Images.facebookIcon),
              ),
              const SizedBox(
                height: 11,
              ),
              CustomButton(
                color: AppColors.red,
                title: LocaleKeys.login_sign_google.tr(),
                icon: Image.asset(Images.googleIcon),
              ),
              const SizedBox(
                height: 11,
              ),
              CustomButton(
                color: AppColors.darkBlue,
                title: LocaleKeys.login_login_btn.tr(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

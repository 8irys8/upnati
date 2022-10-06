import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/auth/auth_cubit.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class RegisterScreen extends StatefulWidget with AutoRouteWrapper {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserCubit>(
        create: (context) => GetIt.I<UserCubit>(), child: this);
  }
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  // final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  // final usernameController = TextEditingController();
  final termsChecked = ValueNotifier<bool>(false);
  final _formKey = GlobalKey<FormState>();

  Future<void> register() async {
    if (!termsChecked.value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('אנא אשר את התנאים תחילה'),
      ));

      return;
    }

    if (_formKey.currentState?.validate() == true) {
      final name = nameController.text;
      final email = emailController.text;
      final phone = phoneController.text;
      // final username = usernameController.text;

      await context.read<UserCubit>().updateUserDetails(
            FirebaseUserInfoPayload(
              displayName: name,
              email: email,
              phoneNumber: phone,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          state.whenOrNull(
            successUserStateResponse: (response) {
              print('successUserStateResponse');
              context.router.replace(const BusinessSelectScreen());
            },
            errorUserState: (error) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(error.toString()),
              ));
            },
          );
        },
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37.0),
              child: Form(
                key: _formKey,
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
                        style:
                            AppTheme.regular(size: 16, color: AppColors.text),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    CustomInput(
                      label: LocaleKeys.register_name.tr(),
                      controller: nameController,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'נדרש'),
                      ]),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    CustomInput(
                      label: LocaleKeys.register_email.tr(),
                      controller: emailController,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'נדרש'),
                        FormBuilderValidators.email(
                            errorText: 'כתובת לא תקינה'),
                      ]),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    CustomInput(
                      label: LocaleKeys.register_phone.tr(),
                      controller: phoneController,
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(errorText: 'נדרש'),
                        FormBuilderValidators.integer(
                            errorText: 'מספר לא תקין'),
                      ]),
                    ),
                    // const SizedBox(
                    //   height: 27,
                    // ),
                    // CustomInput(
                    //   label: LocaleKeys.register_username.tr(),
                    //   controller: usernameController,
                    //   validator: FormBuilderValidators.compose([
                    //     FormBuilderValidators.required(errorText: 'נדרש'),
                    //   ]),
                    // ),
                    // const SizedBox(
                    //   height: 27,
                    // ),
                    // CustomInput(
                    //   label: LocaleKeys.register_password.tr(),
                    //   controller: passwordController,
                    //   obscure: true,
                    // ),
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
                        onPressed: () => register()),
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

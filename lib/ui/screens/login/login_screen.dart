import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/auth/auth_cubit.dart';
import 'package:upnati/logic/models/user/login_payload.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_radio.dart';

class LoginScreen extends StatefulWidget with AutoRouteWrapper {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => GetIt.I<AuthCubit>(), child: this);
  }

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = MaskedTextController(mask: '+000-00-000-0000');
  final termsChecked = ValueNotifier<bool>(true);
  final _formKey = GlobalKey<FormState>();

  void _doLogin(BuildContext context, String phone) {
    if (!termsChecked.value) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('אנא אשר את התנאים תחילה'),
      ));

      return;
    }
    if (_formKey.currentState?.validate() == false) return;
    context.read<AuthCubit>().authByPhone(phone);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            success: () => context.router.push(const SmsCodeScreen()),
            error: (err) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(err.toString())),
            ),
          );
        },
        child: SingleChildScrollView(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                color: AppColors.darkBlueLight,
              ),
              Positioned(
                right: -42,
                top: MediaQuery.of(context).size.height / 1.16,
                child: ClipPath(
                  clipper: LoginContour(),
                  child: Container(
                    color: AppColors.darkBlueLight,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              Column(
                children: [
                  const SizedBox(height: 86),
                  Image.asset(Images.upnatiStoreLogo),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    '!ברוך הבא\nטוב שבאת להרוויח כסף',
                    textAlign: TextAlign.center,
                    style: AppTheme.regular(size: 27, color: AppColors.white),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        // padding: const EdgeInsets.only(top: 24),
                        margin: const EdgeInsets.symmetric(horizontal: 21)
                            .copyWith(top: 45, bottom: 30),
                        decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.63),
                                  blurRadius: 6,
                                  offset: const Offset(0, 3))
                            ]),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 38,
                            ),
                            Text(
                              'כניסה',
                              style: AppTheme.regular(
                                  size: 35, color: AppColors.textGray),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Form(
                                key: _formKey,
                                child: CustomInput(
                                    label: 'מספר נייד',
                                    inputType: TextInputType.phone,
                                    validator: FormBuilderValidators.compose([
                                      FormBuilderValidators.required(
                                          errorText: 'נדרש'),
                                      FormBuilderValidators.minLength(
                                        errorText: 'מספר נייד לא תקין',
                                        16,
                                      )
                                    ]),
                                    controller: _phoneController),
                              ),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 46)
                                      .copyWith(bottom: 113),
                              child: ValueListenableBuilder<bool>(
                                valueListenable: termsChecked,
                                builder: (context, value, child) {
                                  return CustomCheckbox(
                                    label:
                                        LocaleKeys.register_confirm_terms.tr(),
                                    underlineText: LocaleKeys
                                        .register_confirm_terms_link
                                        .tr(),
                                    onUnderlineTextTap: () => context.router
                                        .push(const TermsScreen()),
                                    value: value,
                                    onTap: () {
                                      termsChecked.value = !termsChecked.value;
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          left: MediaQuery.of(context).size.width / 2 - 42,
                          child: Container(
                            width: 85,
                            height: 85,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(.16),
                                    blurRadius: 6,
                                    offset: const Offset(0, 3))
                              ],
                              shape: BoxShape.circle,
                            ),
                            child: Image.asset(
                              Images.upnatiLogoNew,
                              // height: 150,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Positioned(
                          bottom: 0,
                          left: MediaQuery.of(context).size.width / 2 - 86,
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              _doLogin(context,
                                  _phoneController.text.replaceAll(r'-', ''));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 66, vertical: 18),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: AppColors.darkBlueLight,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(.16),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5))
                                ],
                              ),
                              child: BlocBuilder<AuthCubit, AuthState>(
                                builder: (context, state) {
                                  return state.maybeWhen(orElse: () {
                                    return Text(
                                      'כניסה',
                                      style: AppTheme.bold(
                                          size: 16, color: AppColors.white),
                                    );
                                  }, loading: () {
                                    return const SpinKitWave(
                                      color: AppColors.white,
                                      size: 16,
                                      // itemCount: 10,
                                    );
                                  });
                                },
                              ),
                            ),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(Images.googleImg),
                      const SizedBox(
                        width: 41,
                      ),
                      Image.asset(Images.fbImg),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LoginContour extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double contourX = size.width / 375;
    double contourY = size.height / 812;

    return Path()
      ..moveTo(0 * contourX, 114.79 * contourY)
      ..cubicTo(0 * contourX, 114.79 * contourY, 36.49 * contourX,
          79.6 * contourY, 88.56 * contourX, 68.33 * contourY)
      ..cubicTo(132.08 * contourX, 58.91 * contourY, 188.29 * contourX,
          74.56 * contourY, 226.94 * contourX, 61.44 * contourY)
      ..cubicTo(258.07 * contourX, 50.88 * contourY, 278.05 * contourX,
          29.47 * contourY, 295.27 * contourX, 19.52 * contourY)
      ..cubicTo(324.3 * contourX, 2.77 * contourY, 338.34 * contourX,
          0 * contourY, 338.34 * contourX, 0 * contourY)
      ..lineTo(338.34 * contourX, 114.79 * contourY)
      ..lineTo(0 * contourX, 114.79 * contourY)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get_it/get_it.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/auth/auth_cubit.dart';
import 'package:upnati/logic/models/user/login_payload.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class SmsCodeScreen extends HookWidget with AutoRouteWrapper {
  const SmsCodeScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => GetIt.I<AuthCubit>(), child: this);
  }

  // void _doLogin(BuildContext context, String userName, String password) {
  //   context
  //       .read<AuthCubit>()
  //       .signIn(LoginPayload(identifier: userName, password: password));
  // }

  @override
  Widget build(BuildContext context) {
    final _codeController = TextEditingController();

    return Scaffold(
      body:
          // BlocListener<AuthCubit, AuthState>(
          //   listener: (context, state) {
          //     state.whenOrNull(
          //       successResponse: (response) {},
          //     );
          //   },
          //   child:
          SingleChildScrollView(
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
            Positioned(
                top: 86,
                left: 0,
                right: 0,
                child: Column(
                  children: [
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
                      height: 72,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 38,
                              ),
                              Text(
                                'קוד סמס',
                                style: AppTheme.regular(
                                    size: 35, color: AppColors.textGray),
                              ),
                              Text(
                                'הכנס קוד',
                                style: AppTheme.regular(
                                    size: 10, color: AppColors.textGray),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 53),
                                child: PinCodeTextField(
                                  appContext: context,
                                  controller: _codeController,
                                  enableActiveFill: true,
                                  cursorColor: AppColors.darkBlueLight,
                                  keyboardType: TextInputType.number,
                                  textStyle: AppTheme.bold(
                                      size: 20, color: AppColors.purple),
                                  length: 6,
                                  onChanged: (v) {},
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    activeColor: AppColors.textGray,
                                    selectedFillColor: AppColors.grayInput,
                                    inactiveColor: AppColors.grayInput,
                                    inactiveFillColor: AppColors.grayInput,
                                    disabledColor: AppColors.grayInput,
                                    selectedColor: AppColors.darkBlueLight,
                                    borderRadius: BorderRadius.circular(6),
                                    fieldHeight: 36,
                                    fieldWidth: 40,
                                    activeFillColor: AppColors.grayInput,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 39,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 37),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 20),
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
                                  child: Center(
                                    child: Text(
                                      'אישור',
                                      style: AppTheme.bold(
                                          size: 16, color: AppColors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                            top: -45,
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
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),
      // ),
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

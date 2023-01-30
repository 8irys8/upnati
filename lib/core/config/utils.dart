import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/login/login_bloc.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/logic/providers/auth_provider.dart';
import 'package:upnati/logic/providers/user_provider.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class Utils {
  static UserDetailResponse? _currentUser;
  // ignore: no-boolean-literal-compare
  static Future<Box> get box async => await Hive.boxExists('system') == true
      ? Hive.box('system')
      : await Hive.openBox('system');

  static Dio build({
    String? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    final dio = Dio();
    dio.options.baseUrl = baseUrl ?? '';
    dio.options.connectTimeout = 15000;
    dio.options.receiveTimeout = 30000;
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };
    dio.interceptors.addAll(interceptors ?? []);

    return dio;
  }

  static Future<UserDetailResponse?> getCurrentUser() async {
    UserProvider userProvider = GetIt.I<UserProvider>();
    try {
      _currentUser ??= await userProvider.getUserDetails();

      return _currentUser;
    } catch (e) {
      return null;
    }
  }

  static Future<void> clearCurrentUser() async {
    AuthProvider authProvider = GetIt.I<AuthProvider>();
    try {
      _currentUser = null;
      await authProvider.clearUserDetails();
    } catch (e) {}
  }

  static Future<void> showSuccessOrderDialog(BuildContext context) async {
    await showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.76),
        builder: (context) => AlertDialog(
              contentPadding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              scrollable: true,
              content: Builder(builder: (context) {
                return SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 16.0, right: 12),
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Icon(
                                Icons.close_outlined,
                                color: Colors.black,
                                size: 30,
                              )),
                        ),
                      ),
                      Text(LocaleKeys.buy_details_payment_done.tr(),
                          style: AppTheme.semiLight(
                              size: 12, color: AppColors.textGray)),
                      Padding(
                        padding: const EdgeInsets.only(right: 12, bottom: 12),
                        child: Image.asset(Images.paymentDoneImg),
                      ),
                      Text(
                        LocaleKeys.buy_details_for_transit_after_delivery.tr(),
                        style: AppTheme.semiLight(
                          size: 10,
                        ).copyWith(decoration: TextDecoration.underline),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        LocaleKeys.buy_details_for_more_products.tr(),
                        style: AppTheme.semiLight(
                          size: 10,
                        ),
                      ),
                      // const SizedBox(
                      //   height: 15,
                      // ),
                      // Text(
                      //   'shushu market',
                      //   style: AppTheme.bold(size: 12, color: AppColors.yellow)
                      //       .copyWith(decoration: TextDecoration.underline),
                      // ),
                      const SizedBox(height: 30),
                    ],
                  ),
                );
              }),
            ));
    context.router.replaceAll([PurchaseHistoryScreen(selectedTab: 0)]);
  }

  static Future<void> showRegisterDialog(BuildContext context) async {
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(.76),
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)),
              scrollable: true,
              contentPadding: EdgeInsets.zero,
              content: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.close_outlined,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                  ),
                  Text(
                    LocaleKeys.onboard_not_logged_yet.tr(),
                    style: AppTheme.regular(size: 22, color: Colors.black),
                  ),
                  const SizedBox(height: 38),
                  GestureDetector(
                    onTap: () => context.router.replace(RegisterScreen()),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 44, vertical: 16),
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueLight,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(.16),
                              blurRadius: 3,
                              offset: const Offset(0, 1),
                            ),
                          ]),
                      child: Text(LocaleKeys.onboard_connect_btn.tr(),
                          style:
                              AppTheme.semi(size: 16, color: AppColors.white)),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ));
  }

  static void checkUserTokenExpired(dynamic e) {
    if (e is DioError) {
      var dioErr = e.error;
      if (dioErr is AppExceptions) {
        if (dioErr.isNeedLogin == true) {
          var loginBloc = GetIt.I<LoginBloc>();
          loginBloc.add(const LoginEvent.endSession());
        }
      }
    }
  }

  static bool checkBlocUnauthorized({
    required dynamic e,
    required BlocBase bloc,
  }) {
    if (e is DioError &&
        e.error is AppExceptions &&
        e.error.isNeedLogin == true) {
      // ignore: invalid_use_of_protected_member
      bloc.addError(e);

      return true;
    }

    return false;
  }
}

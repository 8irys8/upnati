import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class BusinessSelectScreen extends StatefulWidget with AutoRouteWrapper {
  const BusinessSelectScreen({Key? key}) : super(key: key);

  @override
  State<BusinessSelectScreen> createState() => _BusinessSelectScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => GetIt.I<UserCubit>(), child: this);
  }
}

class _BusinessSelectScreenState extends State<BusinessSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          state.whenOrNull(
            successUserStateResponse: (response) {
              if (response.role == RoleType.role_user.name) {
                context.router.push(const MarketPlaceScreen());
              } else {
                context.router
                    .push(BusinessScreen(userDetailResponse: response));
              }
            },
            errorUserState: (err) {
              if (err.error is AppExceptions) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(err.message ?? ''),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Something went wrong'),
                  ),
                );
              }
            },
          );
        },
        child: SingleChildScrollView(
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
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      'תודה שהצטרפת',
                      style: AppTheme.regular(size: 32, color: AppColors.text),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Text(
                      'בוא נתחיל',
                      style: AppTheme.regular(size: 32, color: AppColors.text),
                    ),
                  ),
                  const SizedBox(
                    height: 39,
                  ),
                  BlocBuilder<UserCubit, UserState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                          loadingUserState: () => const SpinKitCircle(
                                color: AppColors.darkBlue,
                              ),
                          orElse: () => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => context.router.push(
                                          RegisterScreen(isBusiness: true)),
                                      // onTap: () => context
                                      //     .read<UserCubit>()
                                      //     .changeUserRole(RoleType.role_incomplete.name),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: AppColors.rozeBright,
                                            width: 3,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.text
                                                  .withOpacity(.16),
                                              offset: const Offset(0, 3),
                                              blurRadius: 6,
                                              spreadRadius: 1,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 19,
                                            ),
                                            Text(
                                              'עסק',
                                              style: AppTheme.regular(size: 16),
                                            ),
                                            const SizedBox(
                                              height: 68,
                                            ),
                                            Image.asset(
                                              Images.shopImg,
                                              fit: BoxFit.scaleDown,
                                              height: 58,
                                            ),
                                            const SizedBox(
                                              height: 18,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 47,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () => context.router
                                          .push(const MarketPlaceScreen()),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.white,
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          border: Border.all(
                                            color: AppColors.purple,
                                            width: 3,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.text
                                                  .withOpacity(.16),
                                              offset: const Offset(0, 3),
                                              blurRadius: 6,
                                            ),
                                          ],
                                        ),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 19,
                                            ),
                                            Text(
                                              'לקוח',
                                              style: AppTheme.regular(size: 16),
                                            ),
                                            const SizedBox(
                                              height: 68,
                                            ),
                                            Image.asset(Images.packImg),
                                            const SizedBox(
                                              height: 19,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ));
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

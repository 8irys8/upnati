import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:share_plus/share_plus.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/user/app_link_response.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/main_container.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class OnboardScreen extends StatefulWidget with AutoRouteWrapper {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(create: (context) => GetIt.I<UserCubit>(), child: this);
  }
}

class _OnboardScreenState extends State<OnboardScreen> {
  void _showModalBottomSheet() {
    var cubit = context.read<UserCubit>();
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        barrierColor: AppColors.white.withOpacity(0.9),
        builder: (context) => BlocListener<UserCubit, UserState>(
              bloc: cubit,
              listener: (context, state) {
                state.whenOrNull(
                  successUserLinkState: (AppLinkResponse link) {
                    Share.share(link.url ?? '');
                  },
                );
              },
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: const BoxDecoration(
                  color: AppColors.darkBlueLight,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 8),
                    GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(Svgs.icArrowDown)),
                    const SizedBox(height: 34),
                    Text(LocaleKeys.onboard_earn_money.tr(),
                        style:
                            AppTheme.regular(size: 25, color: AppColors.white)),
                    const SizedBox(height: 18),
                    Text(LocaleKeys.onboard_share_app.tr(),
                        textAlign: TextAlign.center,
                        style:
                            AppTheme.regular(size: 18, color: AppColors.white)),
                    const SizedBox(height: 69),
                    GestureDetector(
                      onTap: () => cubit.getAppLink(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              Images.shareImg,
                            ),
                            const SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.onboard_download_from_link.tr(),
                                  style: AppTheme.regular(
                                      size: 16, color: AppColors.white),
                                ),
                                Text(
                                  LocaleKeys.onboard_receive.tr(),
                                  style: AppTheme.bold(
                                      size: 22, color: AppColors.orange),
                                ),
                                Text(
                                  LocaleKeys.onboard_on_site.tr(args: ['1']),
                                  style: AppTheme.bold(
                                      size: 18, color: AppColors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 69),
                    Text(
                      LocaleKeys.onboard_share_products.tr(),
                      style: AppTheme.regular(size: 18, color: AppColors.white),
                    ),
                    const SizedBox(height: 11),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 64),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(Images.share2Img),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.onboard_buy_from_referral.tr(),
                                style: AppTheme.regular(
                                    size: 16, color: AppColors.white),
                              ),
                              Text(
                                LocaleKeys.onboard_receive.tr(),
                                style: AppTheme.bold(
                                    size: 22, color: AppColors.orange),
                              ),
                              Text(
                                LocaleKeys.onboard_on_site.tr(args: ['5']),
                                style: AppTheme.bold(
                                    size: 18, color: AppColors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 69),
                    GestureDetector(
                      onTap: () => context.router.push(const TermsScreen()),
                      child: Text(LocaleKeys.onboard_for_full_regulation.tr(),
                          style: AppTheme.regular(
                              size: 18, color: AppColors.white)),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigatorBar(
            // initialIndex: 0,
            ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            children: [
              const SizedBox(height: 30),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Center(
                      child: Image.asset(
                    Images.upnatiMain,
                    fit: BoxFit.cover,
                  )),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: -12,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      margin: const EdgeInsets.symmetric(horizontal: 70),
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueLight,
                          borderRadius: BorderRadius.circular(28)),
                      child: Text(
                        LocaleKeys.onboard_desc.tr(),
                        textAlign: TextAlign.center,
                        style:
                            AppTheme.regular(size: 18, color: AppColors.white),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              FutureBuilder<UserDetailResponse?>(
                  future: Utils.getCurrentUser(),
                  builder: (context, snapshot) {
                    return GestureDetector(
                      onTap: () =>
                          snapshot.connectionState == ConnectionState.done
                              ? snapshot.data != null
                                  ? _showModalBottomSheet()
                                  : Utils.showRegisterDialog(context)
                              : null,
                      child: Container(
                        decoration: BoxDecoration(
                            color: AppColors.darkBlueLight,
                            borderRadius: BorderRadius.circular(28),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(.16),
                                  offset: const Offset(0, 3),
                                  blurRadius: 6)
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(Images.icSpeaker),
                              const SizedBox(width: 8),
                              Text(
                                LocaleKeys.onboard_click_btn.tr(),
                                style: AppTheme.regular(
                                    size: 27, color: AppColors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const SizedBox(height: 60),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: MainContainer(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 77),
                                  child: Text(
                                    LocaleKeys.onboard_publication.tr(),
                                    style: AppTheme.regular(
                                        size: 18, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: MainContainer(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 77),
                                  child: Text(
                                    LocaleKeys.onboard_publication.tr(),
                                    style: AppTheme.regular(
                                        size: 18, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 28),
                    Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: MainContainer(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 77),
                                  child: Text(
                                    LocaleKeys.onboard_publication.tr(),
                                    style: AppTheme.regular(
                                        size: 18, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18),
                            child: MainContainer(
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 77),
                                  child: Text(
                                    LocaleKeys.onboard_publication.tr(),
                                    style: AppTheme.regular(
                                        size: 18, color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

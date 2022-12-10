import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key, this.onBarrierPressed}) : super(key: key);

  final VoidCallback? onBarrierPressed;

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  void initState() {
    super.initState();
    context.read<UserCubit>().getUserDetails();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UserCubit, UserState>(
          listener: (context, state) {
            state.whenOrNull(
              successUserStateResponse: (response) {
                if (response.businessId != null) {
                  context.read<BusinessCubit>().getBusinessInfo();
                }
              },
            );
          },
        ),
      ],
      child: Row(
        children: [
          Flexible(
            child: GestureDetector(
              onTap: widget.onBarrierPressed,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: const Color(0xff707070).withOpacity(.49),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: SafeArea(
              bottom: false,
              child: Container(
                height: double.infinity,
                color: AppColors.white,
                padding: const EdgeInsets.only(left: 35, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    BlocBuilder<UserCubit, UserState>(
                      builder: (context, state) {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: state.maybeWhen(
                              successUserStateResponse: (response) {
                                return response.businessId == null
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30, bottom: 22),
                                        child: response.images?.isEmpty == true
                                            ? Container(
                                                width: 100,
                                                height: 100,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                      AppColors.darkBlueLight,
                                                ),
                                                child: Image.asset(
                                                  Images.emptyAvatar,
                                                  fit: BoxFit.cover,
                                                ),
                                              )
                                            : ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(150),
                                                child: Image.network(
                                                  response.images?.first ?? '',
                                                  height: 100,
                                                  width: 100,
                                                  fit: BoxFit.cover,
                                                ),
                                              ))
                                    : BlocBuilder<BusinessCubit, BusinessState>(
                                        builder: (context, state) {
                                        return AnimatedSwitcher(
                                          duration:
                                              const Duration(milliseconds: 300),
                                          child: state.maybeWhen(
                                            successBusinessResponse:
                                                (businessResponse) => Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 30,
                                                            bottom: 22),
                                                    child: businessResponse
                                                                .imageUrls
                                                                ?.isEmpty ==
                                                            true
                                                        ? const SizedBox()
                                                        : ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        150),
                                                            child: SizedBox(
                                                              height: 100,
                                                              child:
                                                                  Image.network(
                                                                businessResponse
                                                                        .imageUrls
                                                                        ?.first ??
                                                                    '',
                                                                height: 100,
                                                                width: 100,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          )),
                                            orElse: () => const SizedBox(
                                              height: 100,
                                            ),
                                          ),
                                        );
                                      });
                              },
                              orElse: () => const SizedBox(
                                    height: 100,
                                  )),
                        );
                      },
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                    BlocBuilder<UserCubit, UserState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            loadingUserState: () => const Center(
                                  child:
                                      SpinKitCircle(color: AppColors.darkBlue),
                                ),
                            successUserStateResponse: (user) {
                              return user.businessId == null
                                  ? GestureDetector(
                                      onTap: () {
                                        context.router.push(BusinessScreen());
                                      },
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                                LocaleKeys
                                                    .business_register_myShop
                                                    .tr(),
                                                style:
                                                    AppTheme.regular(size: 16)),
                                            const SizedBox(width: 10),
                                            Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 16),
                                                child: Image.asset(
                                                    Images.icStoreRoze))
                                          ]))
                                  : BlocBuilder<BusinessCubit, BusinessState>(
                                      builder: (context, state) {
                                      return state.maybeWhen(
                                          successBusinessResponse:
                                              (businessResponse) =>
                                                  GestureDetector(
                                                      onTap: () {
                                                        context.router.push(
                                                            ShopHomeScreen(
                                                                business:
                                                                    businessResponse));
                                                      },
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                LocaleKeys
                                                                    .business_register_myShop
                                                                    .tr(),
                                                                style: AppTheme
                                                                    .regular(
                                                                        size:
                                                                            16)),
                                                            const SizedBox(
                                                                width: 10),
                                                            Padding(
                                                                padding: const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        16),
                                                                child: Image
                                                                    .asset(Images
                                                                        .icStoreRoze))
                                                          ])),
                                          orElse: () => const SizedBox(
                                                height: 80,
                                              ));
                                    });
                            },
                            orElse: () => const SizedBox(
                                  height: 80,
                                ));
                      },
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const MessageScreen());
                        SideBarControllerWidget.of(context)
                            ?.controller
                            ?.toggleSideBar
                            ?.call();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.user_info_messages.tr(),
                            style: AppTheme.regular(size: 16),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Image.asset(Images.icBellBlue),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(PurchaseHistoryScreen());
                        SideBarControllerWidget.of(context)
                            ?.controller
                            ?.toggleSideBar
                            ?.call();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.basket_info_previous_purchases.tr(),
                            style: AppTheme.regular(size: 16),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Image.asset(Images.icBasketPurple),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const UserMainScreen());
                        SideBarControllerWidget.of(context)
                            ?.controller
                            ?.toggleSideBar
                            ?.call();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.product_info_personal_info.tr(),
                            style: AppTheme.regular(size: 16),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Image.asset(Images.icContactBlue),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.router.push(const OnboardScreen());
                        SideBarControllerWidget.of(context)
                            ?.controller
                            ?.toggleSideBar
                            ?.call();
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.product_info_affiliate_program.tr(),
                            style: AppTheme.regular(size: 16),
                          ),
                          const SizedBox(width: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Image.asset(Images.icMoneyCard),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: const Color(0xff707070).withOpacity(.49),
                      height: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideBarWrapper extends StatefulWidget {
  final Widget child;
  final ValueChanged? onInit;
  const SideBarWrapper({Key? key, required this.child, this.onInit})
      : super(key: key);

  @override
  State<SideBarWrapper> createState() => _SideBarWrapperState();
}

class _SideBarWrapperState extends State<SideBarWrapper> {
  bool _isSideBarOpen = false;
  late SideBarController _controller;
  void _toggleSideBar() {
    setState(() {
      _isSideBarOpen = !_isSideBarOpen;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = SideBarController();
    widget.onInit?.call(_controller);
    _controller.toggleSideBar = _toggleSideBar;
  }

  @override
  Widget build(BuildContext context) {
    return SideBarControllerWidget(
      controller: _controller,
      child: Material(
        child: Stack(
          children: [
            widget.child,
            if (_isSideBarOpen)
              Positioned.fill(
                child: MultiBlocProvider(
                  providers: [
                    BlocProvider(create: (context) => GetIt.I<UserCubit>()),
                    BlocProvider(create: (context) => GetIt.I<BusinessCubit>()),
                  ],
                  child: SideBar(
                    onBarrierPressed: () => _toggleSideBar(),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class SideBarController {
  Function()? toggleSideBar;
}

class SideBarControllerWidget extends InheritedWidget {
  final SideBarController? controller;

  const SideBarControllerWidget({
    Key? key,
    required this.child,
    this.controller,
  }) : super(key: key, child: child);

  @override
  // ignore: overridden_fields
  final Widget child;

  static SideBarControllerWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SideBarControllerWidget>();
  }

  @override
  bool updateShouldNotify(SideBarControllerWidget oldWidget) {
    return true;
  }
}

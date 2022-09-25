import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, this.onBarrierPressed}) : super(key: key);

  final VoidCallback? onBarrierPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: GestureDetector(
            onTap: onBarrierPressed,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Color(0xff707070).withOpacity(.49),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 22),
                    child: Image.asset(Images.shushuLogoImg),
                  ),
                  Divider(
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const ShopHomeScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.business_register_myShop.tr(),
                          style: AppTheme.regular(size: 16),
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Image.asset(Images.icStoreRoze),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const MessageScreen());
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
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const PurchaseHistoryScreen());
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
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const UserMainScreen());
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
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.push(const OnboardScreen());
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
                    color: Color(0xff707070).withOpacity(.49),
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SideBarWrapper extends StatefulWidget {
  final Widget child;
  final SideBarController controller;
  const SideBarWrapper(
      {Key? key, required this.child, required this.controller})
      : super(key: key);

  @override
  State<SideBarWrapper> createState() => _SideBarWrapperState();
}

class _SideBarWrapperState extends State<SideBarWrapper> {
  bool _isSideBarOpen = false;
  void _toggleSideBar() {
    setState(() {
      _isSideBarOpen = !_isSideBarOpen;
    });
  }

  @override
  void initState() {
    super.initState();
    widget.controller.toggleSideBar = _toggleSideBar;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          widget.child,
          if (_isSideBarOpen)
            Positioned.fill(
              child: SideBar(
                onBarrierPressed: () => _toggleSideBar(),
              ),
            ),
        ],
      ),
    );
  }
}

class SideBarController {
  Function()? toggleSideBar;
}

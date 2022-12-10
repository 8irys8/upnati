import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class CustomNavigatorBar extends StatefulWidget {
  final int? initialIndex;
  final ValueChanged<int?>? onItemPressed;
  const CustomNavigatorBar({
    Key? key,
    this.initialIndex = 0,
    this.onItemPressed,
  }) : super(key: key);

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int _selectedIndex = 0;
  SideBarController? _sideBarController;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _sideBarController = SideBarControllerWidget.of(context)?.controller;
    });
    _selectedIndex = widget.initialIndex ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(14), topRight: Radius.circular(14)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.52),
                offset: const Offset(0, 0),
                blurRadius: 10)
          ]),
      child: SizedBox(
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _CustomBottomNavItem(
                  icon: Svgs.icBasket,
                  title: LocaleKeys.user_info_my_purchases.tr(),
                  isSelected: _selectedIndex == 3,
                  onPressed: () {
                    if (context.router
                        .isRouteActive(PurchaseHistoryScreen.name)) return;
                    setState(() {
                      _selectedIndex = 3;
                    });
                    widget.onItemPressed?.call(3);

                    context.router.push(
                      PurchaseHistoryScreen(),
                    );
                  }),
              _CustomBottomNavItem(
                  icon: Svgs.icAdditionalInfo,
                  title: LocaleKeys.user_info_more_info.tr(),
                  isSelected: _selectedIndex == 2,
                  onPressed: () {
                    if (context.router.isRouteActive(MoreInfoScreen.name))
                      return;
                    setState(() {
                      _selectedIndex = 2;
                    });
                    widget.onItemPressed?.call(2);
                    context.router.push(const MoreInfoScreen());
                  }),
              GestureDetector(
                onTap: () {
                  if (context.router.isRouteActive(MarketPlaceScreen.name))
                    return;
                  context.router.push(const MarketPlaceScreen());
                },
                child: Transform.translate(
                    offset: const Offset(0, -20),
                    child: Column(
                      children: [
                        Image.asset(
                          Images.upnatiLogoNew,
                          fit: BoxFit.cover,
                          width: 45,
                        ),
                        Text(
                          'UPstore',
                          style: AppTheme.regular(
                              size: 11, color: AppColors.darkBlueLight),
                        )
                      ],
                    )),
              ),
              _CustomBottomNavItem(
                  icon: Svgs.icCategories,
                  title: LocaleKeys.user_info_categories.tr(),
                  isSelected: _selectedIndex == 1,
                  onPressed: () {
                    if (context.router.isRouteActive(CategoryScreen.name))
                      return;
                    setState(() {
                      _selectedIndex = 1;
                    });
                    widget.onItemPressed?.call(1);
                    context.router.push(const CategoryScreen());
                  }),
              _CustomBottomNavItem(
                  icon: Svgs.icProfile,
                  title: LocaleKeys.user_info_my_account.tr(),
                  isSelected: _selectedIndex == 0,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                    widget.onItemPressed?.call(0);
                    _sideBarController?.toggleSideBar?.call();
                    // context.router.push(const UserMainScreen());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomBottomNavItem extends StatelessWidget {
  final String icon;
  final String title;
  final bool isSelected;
  final Function() onPressed;
  const _CustomBottomNavItem(
      {Key? key,
      required this.icon,
      required this.title,
      required this.isSelected,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: isSelected ? AppColors.rozeLight : AppColors.white,
      child: Column(
        children: [
          IconButton(
            splashColor: Colors.white,
            padding: const EdgeInsets.only(top: 6, left: 12, right: 12),
            constraints: const BoxConstraints(),
            onPressed: onPressed,
            icon: SvgPicture.asset(icon),
          ),
          Expanded(
            child: Text(
              title,
              style: AppTheme.regular(size: 9, color: AppColors.roze),
            ),
          )
        ],
      ),
    );
  }
}

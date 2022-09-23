import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CustomNavigatorBar extends StatefulWidget {
  final int? initialIndex;
  const CustomNavigatorBar({Key? key, this.initialIndex = 0}) : super(key: key);

  @override
  State<CustomNavigatorBar> createState() => _CustomNavigatorBarState();
}

class _CustomNavigatorBarState extends State<CustomNavigatorBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _CustomBottomNavItem(
                icon: Svgs.icBasket,
                title: LocaleKeys.user_info_my_purchases.tr(),
                isSelected: _selectedIndex == 3,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                }),
            _CustomBottomNavItem(
                icon: Svgs.icAdditionalInfo,
                title: LocaleKeys.user_info_more_info.tr(),
                isSelected: _selectedIndex == 2,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                  context.router.push(const MoreInfoScreen());
                }),
            Transform.translate(
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
            _CustomBottomNavItem(
                icon: Svgs.icCategories,
                title: LocaleKeys.user_info_categories.tr(),
                isSelected: _selectedIndex == 1,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                }),
            _CustomBottomNavItem(
                icon: Svgs.icProfile,
                title: LocaleKeys.user_info_my_account.tr(),
                isSelected: _selectedIndex == 0,
                onPressed: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                }),
          ],
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
      color: isSelected ? AppColors.rozeLight : AppColors.white,
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

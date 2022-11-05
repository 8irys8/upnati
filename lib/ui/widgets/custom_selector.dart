import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CustomSelector extends StatelessWidget {
  final bool value;
  final VoidCallback onTap;

  const CustomSelector({
    Key? key,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff3A9A04), width: 2)),
          child: value
              ? SvgPicture.asset(
                  Svgs.icCheckedWhite,
                  color: const Color(0xff3A9A04),
                  height: 24,
                  fit: BoxFit.scaleDown,
                )
              : const SizedBox()),
    );
  }
}

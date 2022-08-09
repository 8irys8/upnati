import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final VoidCallback onTap;
  final String? underlineText;
  const CustomCheckbox({
    Key? key,
    required this.label,
    required this.value,
    required this.onTap,
    this.underlineText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(children: [
        SvgPicture.asset(value ? Svgs.icChecked : Svgs.icCheck),
        const SizedBox(width: 4),
        Text(
          label,
          style: AppTheme.regular(size: 11),
        ),
        const SizedBox(width: 4),
        Text(
          underlineText ?? '',
          style: AppTheme.regular(size: 11).copyWith(
            decoration: TextDecoration.underline,
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}

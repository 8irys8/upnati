import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class CustomCheckbox extends StatelessWidget {
  final String label;
  final bool value;
  final VoidCallback onTap;
  final String? underlineText;
  final VoidCallback? onUnderlineTextTap;
  const CustomCheckbox({
    Key? key,
    required this.label,
    required this.value,
    required this.onTap,
    this.underlineText,
    this.onUnderlineTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(children: [
        Image.asset(value ? Images.icChecked : Images.icUnchecked),
        const SizedBox(width: 4),
        Text(
          label,
          style: AppTheme.regular(size: 11),
        ),
        const SizedBox(width: 4),
        GestureDetector(
          onTap: onUnderlineTextTap,
          child: Text(
            underlineText ?? '',
            style: AppTheme.regular(size: 11).copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
        const Spacer(),
      ]),
    );
  }
}

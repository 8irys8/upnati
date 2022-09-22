import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

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
        Container(
          height: 13,
          width: 13,
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.gray),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.16),
                  offset: const Offset(0, 3),
                  blurRadius: 10,
                  blurStyle: BlurStyle.inner,
                  spreadRadius: 3.5,
                  inset: true,
                ),
              ]),
          child: value ? const Icon(Icons.check_outlined) : null,
        ),
        // Image.asset(value ? Images.icChecked : Images.icUnchecked),
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

import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CustomRadio extends StatelessWidget {
  final String label;
  final bool value;
  const CustomRadio({Key? key, required this.label, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(value ? Images.icRadioOn : Images.icRadioOff),
        const SizedBox(width: 7),
        Text(
          label,
          textAlign: TextAlign.center,
          style: AppTheme.regular(
            size: 9,
            color: AppColors.text.withOpacity(.64),
          ),
        ),
      ],
    );
  }
}

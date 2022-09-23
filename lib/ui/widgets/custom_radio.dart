import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CustomRadio extends StatelessWidget {
  final String label;
  final bool value;
  final bool? ismultiLine;
  const CustomRadio(
      {Key? key, required this.label, required this.value, this.ismultiLine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: ismultiLine == true
              ? const EdgeInsets.only(top: 6)
              : EdgeInsets.zero,
          child: Image.asset(value ? Images.icRadioOn : Images.icRadioOff),
        ),
        const SizedBox(width: 7),
        Text(
          label,
          // textAlign: TextAlign.center,
          style: AppTheme.regular(
            size: 9,
            color: AppColors.text.withOpacity(.64),
          ),
        ),
      ],
    );
  }
}

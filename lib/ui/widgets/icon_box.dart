import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class IconBox extends StatelessWidget {
  final Widget icon;
  final String text;
  final Color? color;
  const IconBox({Key? key, required this.icon, required this.text, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: color ?? AppColors.gray.withOpacity(.48),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            Text(
              text,
              textAlign: TextAlign.center,
              style: AppTheme.regular(
                size: 7,
                color: color ?? AppColors.gray.withOpacity(.48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

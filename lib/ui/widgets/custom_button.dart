import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String title;
  final Widget? icon;
  final VoidCallback? onPressed;
  const CustomButton({
    Key? key,
    this.color = AppColors.text,
    required this.title,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: const BoxConstraints(minHeight: 50.0),
        width: double.infinity,
        padding: const EdgeInsets.only(top: 5, bottom: 1),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            width: 0.5,
            color: color.withOpacity(0.36),
          ),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.16),
              offset: const Offset(-3, 1),
              blurRadius: 2,
              spreadRadius: 1,
              inset: true,
            ),
          ],
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 9,
                  bottom: 10,
                ),
                child: Text(
                  title,
                  style: AppTheme.regular(
                    size: 16,
                    color: AppColors.white,
                  ),
                ),
              ),
              if (icon != null)
                Padding(
                  padding: const EdgeInsets.only(right: 17.0),
                  child: icon,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final Color? textColor;
  final String title;
  final Widget? icon;
  final VoidCallback? onPressed;
  final bool? withoutShadow;
  final double? textSize;
  final double? buttonHeight;
  final BoxBorder? border;
  final TextStyle? textStyle;
  final double? topPadding;
  final double? bottomPadding;
  const CustomButton({
    Key? key,
    this.color = AppColors.text,
    required this.title,
    this.icon,
    this.onPressed,
    this.withoutShadow,
    this.textSize,
    this.buttonHeight,
    this.textColor,
    this.border,
    this.textStyle,
    this.topPadding,
    this.bottomPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        constraints: BoxConstraints(minHeight: buttonHeight ?? 50.0),
        width: double.infinity,
        padding: const EdgeInsets.only(top: 5, bottom: 1),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(22.0),
          border: border ??
              Border.all(
                width: 0.4,
                color: color.withOpacity(0.36),
              ),
          boxShadow: withoutShadow == true
              ? null
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.16),
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                    // spreadRadius: 2,
                    // inset: true,
                  ),
                ],
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: topPadding ?? 9,
                  bottom: bottomPadding ?? 10,
                ),
                child: Text(
                  title,
                  style: textStyle ??
                      AppTheme.regular(
                        size: textSize ?? 16,
                        color: textColor ?? AppColors.white,
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

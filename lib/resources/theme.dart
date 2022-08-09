part of 'resource.dart';

class AppTheme {
  AppTheme._();

  static TextStyle regular({Color color = AppColors.text, double? size}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static TextStyle bold({Color color = AppColors.text, double? size}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static TextStyle medium({Color color = AppColors.text, double? size}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static TextStyle semi({Color color = AppColors.text, double? size}) =>
      TextStyle(
        fontSize: size,
        fontWeight: FontWeight.w600,
        color: color,
      );
}

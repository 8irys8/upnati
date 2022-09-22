import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class MainContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final double? height;
  final double? width;
  final Offset? offset;
  final double? blurRadius;
  final double? borderRadius;

  const MainContainer(
      {Key? key,
      required this.child,
      this.color,
      this.height,
      this.offset,
      this.blurRadius,
      this.borderRadius,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 170,
        width: width,
        decoration: BoxDecoration(
            color: color ?? AppColors.white,
            borderRadius: BorderRadius.circular(borderRadius ?? 15),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.16),
                  offset: offset ?? const Offset(0, 3),
                  blurRadius: blurRadius ?? 6)
            ]),
        child: child);
  }
}

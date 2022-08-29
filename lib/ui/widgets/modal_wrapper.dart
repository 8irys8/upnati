import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class ModalWrapper extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final AlignmentGeometry? alignment;
  final double? top;
  final double? bottom;

  const ModalWrapper({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.alignment,
    this.bottom = 70,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment ?? Alignment.bottomCenter,
      children: [
        Positioned(
          bottom: bottom,
          top: top,
          child: Dialog(
            elevation: 0,
            insetPadding: const EdgeInsets.symmetric(horizontal: 22),
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor ?? AppColors.white,
              ),
              width: MediaQuery.of(context).size.width,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}

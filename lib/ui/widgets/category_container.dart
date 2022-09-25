import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class CategoryContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  const CategoryContainer({Key? key, required this.child, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(19),
                topRight: Radius.circular(19),
                bottomLeft: Radius.circular(19)),
            color: color ?? AppColors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.16),
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ]),
        child: child);
  }
}

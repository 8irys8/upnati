import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CategoryContainer extends StatelessWidget {
  final Widget child;
  final Color? color;
  final bool? withRoof;
  const CategoryContainer(
      {Key? key, required this.child, this.color, this.withRoof})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return withRoof == true
        ? Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                  width: double.infinity,
                  height: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 18),
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
                  child: child),
              Positioned(
                top: -10,
                right: -3,
                child: Image.asset(Images.roofImg, height: 60),
              )
            ],
          )
        : Container(
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

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resources.dart';

class AddProductContainer extends StatelessWidget {
  final bool? isAdded;
  const AddProductContainer({Key? key, this.isAdded}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(3.0),
          border: Border.all(
            color: AppColors.gray.withOpacity(0.36),
            width: 0.5,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: isAdded == true
                    ? null
                    : const EdgeInsets.only(top: 30, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: AppColors.text.withOpacity(0.2),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.text.withOpacity(0.5),
                      offset: const Offset(0.5, 3),
                      blurRadius: 6,
                      spreadRadius: 1,
                      inset: true,
                    ),
                  ],
                ),
                child: isAdded == true
                    ? Container(
                        height: 107,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3.0),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.text.withOpacity(0.5),
                              offset: const Offset(0.5, 3),
                              blurRadius: 6,
                              spreadRadius: 5,
                              inset: true,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.0),
                          child: Image.asset(
                            Images.shelfImg,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    : Column(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Image.asset(Images.icEmptyBag),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: -2,
                                child: SvgPicture.asset(
                                  Svgs.icPlus,
                                  height: 19,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            LocaleKeys.business_register_uploadProduct.tr(),
                            style: AppTheme.regular(
                              size: 10,
                              color: AppColors.text,
                            ),
                          ),
                        ],
                      ),
              ),
              isAdded == true
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8, right: 4),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'מדף דקורטיבי',
                            style: AppTheme.semi(
                              size: 11,
                            ),
                          ),
                          Text(
                            'מדף מפוררזל עם כלים לסוכר',
                            style: AppTheme.regular(
                              size: 8,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'וקפה',
                                  style: AppTheme.regular(
                                    size: 8,
                                  ),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: '450 ',
                                    style: AppTheme.bold(
                                      size: 18,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: 'ש"ח',
                                        style: AppTheme.bold(
                                          size: 10,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(Svgs.icTrash),
                              Container(
                                height: 23,
                                width: 0.5,
                                color: const Color(0xffCBCBCB),
                              ),
                              SvgPicture.asset(Svgs.icCopy),
                              Container(
                                height: 23,
                                width: 0.5,
                                color: const Color(0xffCBCBCB),
                              ),
                              SvgPicture.asset(Svgs.icPhone),
                              Container(
                                height: 23,
                                width: 0.5,
                                color: const Color(0xffCBCBCB),
                              ),
                              SvgPicture.asset(Svgs.icEdit),
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

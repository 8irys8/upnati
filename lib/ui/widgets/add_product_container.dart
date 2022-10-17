import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_svg/svg.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/main_container.dart';

class AddProductContainer extends StatelessWidget {
  final bool? isAdded;
  final ItemResponse? item;
  final VoidCallback? onDelete;
  const AddProductContainer({Key? key, this.isAdded, this.item, this.onDelete})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.85,
      child: MainContainer(
          borderRadius: 10,
          child: isAdded == true
              ? Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: onDelete,
                            child: SvgPicture.asset(Svgs.icDeleteItem)),
                        Expanded(
                          child: item?.imageUrls?.isNotEmpty == true
                              ? Container(
                                  margin: const EdgeInsets.only(
                                      top: 14, right: 2, left: 20),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(5),
                                  // ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      item!.imageUrls!.first,
                                      height: 77,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                )
                              : Container(
                                  color: AppColors.grayLight,
                                  margin: const EdgeInsets.only(
                                      top: 14, right: 2, left: 20),
                                  // decoration: BoxDecoration(
                                  //   borderRadius: BorderRadius.circular(5),
                                  // ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        Images.icEmptyBag,
                                        height: 72,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      item?.name ?? '',
                      maxLines: 1,
                      style: AppTheme.bold(size: 11),
                    ),
                    Text(
                      item?.description?.full ?? '',
                      maxLines: 2,
                      style: AppTheme.regular(size: 11),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      LocaleKeys.basket_info_nis
                          .tr(args: ['${item?.price?.toStringAsFixed(2)}']),
                      style: AppTheme.bold(size: 15),
                    ),
                  ],
                )
              : Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(Images.emptyBoxImg),
                    const SizedBox(
                      height: 13,
                    ),
                    Text(
                      LocaleKeys.business_register_uploadProduct.tr(),
                      style: AppTheme.regular(size: 10),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SvgPicture.asset(
                      Svgs.icPlus,
                      fit: BoxFit.scaleDown,
                      height: 20,
                    ),
                  ],
                )),
      // Container(
      //   decoration: BoxDecoration(
      //     color: AppColors.white,
      //     borderRadius: BorderRadius.circular(3.0),
      //     border: Border.all(
      //       color: AppColors.gray.withOpacity(0.36),
      //       width: 0.5,
      //     ),
      //   ),
      //   child: Padding(
      //     padding: const EdgeInsets.all(4.0),
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           width: double.infinity,
      //           padding: isAdded == true
      //               ? null
      //               : const EdgeInsets.only(top: 30, bottom: 10),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.circular(3.0),
      //             color: AppColors.text.withOpacity(0.2),
      //             boxShadow: [
      //               BoxShadow(
      //                 color: AppColors.text.withOpacity(0.5),
      //                 offset: const Offset(0.5, 3),
      //                 blurRadius: 6,
      //                 spreadRadius: 1,
      //                 inset: true,
      //               ),
      //             ],
      //           ),
      //           child: isAdded == true
      //               ? Container(
      //                   height: 107,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(3.0),
      //                     boxShadow: [
      //                       BoxShadow(
      //                         color: AppColors.text.withOpacity(0.5),
      //                         offset: const Offset(0.5, 3),
      //                         blurRadius: 6,
      //                         spreadRadius: 5,
      //                         inset: true,
      //                       ),
      //                     ],
      //                   ),
      //                   child: ClipRRect(
      //                     borderRadius: BorderRadius.circular(3.0),
      //                     child: Image.asset(
      //                       Images.shelfImg,
      //                       fit: BoxFit.cover,
      //                     ),
      //                   ),
      //                 )
      //               : Column(
      //                   children: [
      //                     Stack(
      //                       clipBehavior: Clip.none,
      //                       children: [
      //                         Image.asset(Images.icEmptyBag),
      //                         Positioned(
      //                           left: 0,
      //                           right: 0,
      //                           bottom: -2,
      //                           child: SvgPicture.asset(
      //                             Svgs.icPlus,
      //                             height: 19,
      //                             fit: BoxFit.scaleDown,
      //                           ),
      //                         ),
      //                       ],
      //                     ),
      //                     Text(
      //                       LocaleKeys.business_register_uploadProduct.tr(),
      //                       style: AppTheme.regular(
      //                         size: 10,
      //                         color: AppColors.text,
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //         ),
      //         isAdded == true
      //             ? Padding(
      //                 padding: const EdgeInsets.only(left: 8, right: 4),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Text(
      //                       'מדף דקורטיבי',
      //                       style: AppTheme.semi(
      //                         size: 11,
      //                       ),
      //                     ),
      //                     Text(
      //                       'מדף מפוררזל עם כלים לסוכר',
      //                       style: AppTheme.regular(
      //                         size: 8,
      //                       ),
      //                     ),
      //                     Container(
      //                       width: double.infinity,
      //                       child: Row(
      //                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                         children: [
      //                           Text(
      //                             'וקפה',
      //                             style: AppTheme.regular(
      //                               size: 8,
      //                             ),
      //                           ),
      //                           Text.rich(
      //                             TextSpan(
      //                               text: '450 ',
      //                               style: AppTheme.bold(
      //                                 size: 18,
      //                               ),
      //                               children: [
      //                                 TextSpan(
      //                                   text: 'ש"ח',
      //                                   style: AppTheme.bold(
      //                                     size: 10,
      //                                   ),
      //                                 ),
      //                               ],
      //                             ),
      //                             textAlign: TextAlign.left,
      //                           ),
      //                         ],
      //                       ),
      //                     ),
      //                     Row(
      //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                       children: [
      //                         SvgPicture.asset(Svgs.icTrash),
      //                         Container(
      //                           height: 23,
      //                           width: 0.5,
      //                           color: const Color(0xffCBCBCB),
      //                         ),
      //                         SvgPicture.asset(Svgs.icCopy),
      //                         Container(
      //                           height: 23,
      //                           width: 0.5,
      //                           color: const Color(0xffCBCBCB),
      //                         ),
      //                         SvgPicture.asset(Svgs.icPhone),
      //                         Container(
      //                           height: 23,
      //                           width: 0.5,
      //                           color: const Color(0xffCBCBCB),
      //                         ),
      //                         SvgPicture.asset(Svgs.icEdit),
      //                       ],
      //                     )
      //                   ],
      //                 ),
      //               )
      //             : const SizedBox(),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

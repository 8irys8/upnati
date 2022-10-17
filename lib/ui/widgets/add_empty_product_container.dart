import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/main_container.dart';

class AddEmptyProductContainer extends StatelessWidget {
  final String? image;
  final String? title;
  final String? desc;
  final String? price;
  final String? type;
  final ItemResponse? item;

  const AddEmptyProductContainer(
      {Key? key,
      this.image,
      this.title,
      this.desc,
      this.price,
      this.type,
      this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => context.router.push(ProductMainScreen(item: item)),
        child: AspectRatio(
          aspectRatio: 0.8,
          child: MainContainer(
              borderRadius: 10,
              child: Column(
                children: [
                  type == null
                      ? Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only(
                              top: 14, right: 20, left: 20),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: image != null
                                ? Image.network(
                                    image!,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  )
                                : Container(
                                    height: 100,
                                    color: AppColors.grayInput,
                                    child: Image.asset(Images.bagImage),
                                  ),
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: SvgPicture.asset(
                                type == '1'
                                    ? Svgs.icHeeartRoze
                                    : Svgs.icBagRoze,
                                color: AppColors.rozeLightbtn,
                                fit: BoxFit.scaleDown,
                                height: 12,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(
                                    top: 14, right: 0, left: 20),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: image != null
                                      ? Image.asset(
                                          image!,
                                          height: 100,
                                          fit: BoxFit.cover,
                                        )
                                      : Container(
                                          height: 100,
                                          color: AppColors.grayInput,
                                          child: Image.asset(Images.bagImage),
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
                    title ?? '',
                    style: AppTheme.bold(size: 11),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        desc ?? '',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            AppTheme.bold(size: 9, color: AppColors.textGray),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      price != null
                          ? LocaleKeys.basket_info_nis.tr(args: [price!])
                          : '',
                      style: AppTheme.bold(size: 17),
                    ),
                  ),
                ],
              )),
        ));
  }
}

// Row(
//                 children: [
//                   Expanded(child: AddEmptyProductContainer()),
//                   SizedBox(
//                     width: 7,
//                   ),
//                   Expanded(child: AddEmptyProductContainer()),
//                 ],
//               ),
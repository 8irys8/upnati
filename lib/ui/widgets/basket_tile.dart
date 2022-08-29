import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';

class BasketTile extends StatefulWidget {
  BasketTile({Key? key}) : super(key: key);

  @override
  State<BasketTile> createState() => _BasketTileState();
}

class _BasketTileState extends State<BasketTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.inputGray,
        border: Border.symmetric(
            vertical: BorderSide.none,
            horizontal: BorderSide(color: AppColors.gray, width: 0.5)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            height: 208,
            color: AppColors.white,
            child: Image.asset(
              Images.shelfImg,
              fit: BoxFit.fitHeight,
            ),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 11),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'מדף דקורטיבי',
                style: AppTheme.semi(size: 12),
              ),
              Text('מדף מפוררזל עם כלים\nלסוכר וקפה',
                  style: AppTheme.regular(size: 8)),
              Transform.translate(
                offset: const Offset(-46, -10),
                child: Text.rich(
                  TextSpan(
                    text: '350 ',
                    style: AppTheme.bold(size: 18),
                    children: [
                      TextSpan(
                        text: LocaleKeys.basket_info_nis.tr(),
                        style: AppTheme.bold(size: 10),
                      ),
                    ],
                  ),
                ),
              ),
              Text(LocaleKeys.basket_info_acquired.tr(),
                  style: AppTheme.bold(size: 10)),
              Text('10 בדצמבר 2021 - 12:30',
                  style: AppTheme.semiLight(size: 10)),
              Text(LocaleKeys.basket_info_will_arrive_in.tr(),
                  style: AppTheme.bold(size: 10)),
              Text('עד 25 בדצמבר 2021', style: AppTheme.semiLight(size: 10)),
              const SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    Svgs.icCloseThin,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(LocaleKeys.basket_info_delete_item.tr(),
                      style: AppTheme.regular(size: 10)),
                  const SizedBox(
                    width: 22,
                  ),
                  SizedBox(
                    width: 80,
                    child: CustomButton(
                      title: LocaleKeys.basket_info_for_payment.tr(),
                      color: Colors.black.withOpacity(0.64),
                      withoutShadow: true,
                      textSize: 12,
                      buttonHeight: 0,
                      border: Border.all(color: AppColors.gray),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ]),
          )),
        ],
      ),
    );
  }
}

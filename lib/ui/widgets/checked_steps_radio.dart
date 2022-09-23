import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class CheckedStepsRadio extends StatelessWidget {
  final bool? secondStep;
  final bool? finalStep;
  const CheckedStepsRadio({Key? key, this.secondStep, this.finalStep})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90),
          child: Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: const BoxDecoration(
                  color: AppColors.roze,
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  Svgs.icWhiteSmallArrow,
                  width: 14,
                  fit: BoxFit.scaleDown,
                ),
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: AppColors.roze,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: secondStep == true ? AppColors.roze : AppColors.white,
                  shape: BoxShape.circle,
                  border: secondStep == true
                      ? null
                      : Border.all(
                          color: AppColors.roze,
                        ),
                ),
                child: secondStep == true
                    ? SvgPicture.asset(
                        Svgs.icWhiteSmallArrow,
                        width: 14,
                        fit: BoxFit.scaleDown,
                      )
                    : null,
              ),
              Expanded(
                child: Container(
                  height: 1,
                  color: AppColors.roze,
                ),
              ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: finalStep == true ? AppColors.roze : AppColors.white,
                  shape: BoxShape.circle,
                  border: finalStep == true
                      ? null
                      : Border.all(
                          color: AppColors.roze,
                        ),
                ),
                child: finalStep == true
                    ? SvgPicture.asset(
                        Svgs.icWhiteSmallArrow,
                        width: 14,
                        fit: BoxFit.scaleDown,
                      )
                    : null,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 90).copyWith(top: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                LocaleKeys.buy_details_details.tr(),
                style: AppTheme.semiLight(size: 8),
              ),
              Text(
                LocaleKeys.business_register_products.tr(),
                style: AppTheme.semiLight(size: 8),
              ),
              Text(
                LocaleKeys.buy_details_confirmation_btn.tr(),
                style: AppTheme.semiLight(size: 8),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

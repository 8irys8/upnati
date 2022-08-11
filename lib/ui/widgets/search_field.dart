import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 7, 8, 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: AppColors.inputGray,
        border: Border.all(
          width: .1,
          color: AppColors.gray,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(Svgs.icSearch),
          const SizedBox(
            width: 10,
          ),
          Text(
            LocaleKeys.business_register_searchInTheStore.tr(),
            textAlign: TextAlign.center,
            style: AppTheme.regular(
              size: 7,
              color: AppColors.text.withOpacity(.14),
            ),
          ),
        ],
      ),
    );
  }
}

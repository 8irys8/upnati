import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/search_delegate.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

class SearchField extends StatelessWidget {
  final List<String>? searchHistory;
  const SearchField({Key? key, this.searchHistory}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showSearch(
          context: context,
          delegate: CustomSearchDelegate(
            GetIt.I.get<BusinessCubit>(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 7, 8, 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
          border: Border.all(
            width: .1,
            color: AppColors.gray,
          ),
        ),
        child: Row(
          children: [
            SvgPicture.asset(Svgs.icSearch, color: AppColors.textGray),
            const SizedBox(
              width: 10,
            ),
            Text(
              LocaleKeys.business_register_searchInTheStore.tr(),
              textAlign: TextAlign.center,
              style: AppTheme.regular(
                size: 12,
                color: AppColors.text.withOpacity(.38),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

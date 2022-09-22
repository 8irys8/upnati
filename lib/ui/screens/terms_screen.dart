import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:upnati/resources/resource.dart';

class TermsScreen extends StatefulWidget {
  const TermsScreen({Key? key}) : super(key: key);

  @override
  State<TermsScreen> createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: const EdgeInsets.only(right: 30),
          icon: const Icon(
            Icons.close_outlined,
            size: 26,
          ),
          color: Colors.black,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 33),
                  child: Center(
                    child: Text(
                      LocaleKeys.onboard_for_full_regulation.tr(),
                      style:
                          AppTheme.regular(size: 17, color: AppColors.darkBlue),
                    ),
                  ),
                ),
                Text(
                  LocaleKeys.onboard_terms_desc.tr(),
                  textAlign: TextAlign.center,
                  style: AppTheme.regular(size: 17, color: AppColors.darkBlue),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  LocaleKeys.onboard_terms_desc.tr(),
                  textAlign: TextAlign.center,
                  style: AppTheme.regular(size: 17, color: AppColors.darkBlue),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

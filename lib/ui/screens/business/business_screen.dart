import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';

import '../../../core/config/router.gr.dart';

class BusinessScreen extends StatefulWidget {
  const BusinessScreen({Key? key}) : super(key: key);

  @override
  State<BusinessScreen> createState() => _BusinessScreenState();
}

class _BusinessScreenState extends State<BusinessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 35, right: 37),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Text(
                LocaleKeys.business_openShop.tr(),
                style: AppTheme.regular(
                  size: 16,
                  color: AppColors.purple,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(Images.upnatiLogo),
              const SizedBox(
                height: 10,
              ),
              Text(
                LocaleKeys.business_withUs.tr(),
                textAlign: TextAlign.center,
                style: AppTheme.regular(
                  size: 14,
                  color: AppColors.purple,
                ),
              ),
              const SizedBox(
                height: 90,
              ),
              Container(
                height: 176,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: SvgPicture.asset(
                  Svgs.icPlay,
                  height: 37,
                  fit: BoxFit.scaleDown,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: CustomButton(
                  title: LocaleKeys.business_openAccount.tr(),
                  color: AppColors.darkBlue,
                  onPressed: () =>
                      context.router.push(const BusinessRegistrationScreen()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

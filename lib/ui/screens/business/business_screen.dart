import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';

class BusinessScreen extends StatefulWidget {
  final UserDetailResponse? userDetailResponse;
  const BusinessScreen({Key? key, this.userDetailResponse}) : super(key: key);

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
              Image.asset(Images.upnatiStoreLogo),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Text(
                  'אצלנו כדי להצליח יותר עסקית וכיום כשכולם באונליין וזה חובה שתהיה חנות אינטרנטית לכל עסק',
                  textAlign: TextAlign.center,
                  style: AppTheme.regular(
                    size: 14,
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              // Text(
              //   LocaleKeys.business_withUs.tr(),
              //   textAlign: TextAlign.center,
              //   style: AppTheme.regular(
              //     size: 14,
              //     color: AppColors.purple,
              //   ),
              // ),
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
                  title: '!פה פותחים חנות בקלות',
                  topPadding: 17,
                  bottomPadding: 14,
                  border: Border.all(color: AppColors.darkBlueLight),
                  textStyle:
                      AppTheme.semiLight(size: 16, color: AppColors.white),
                  color: AppColors.darkBlueLight,
                  onPressed: () => context.router.push(MarketDetailScreen(
                    userDetailResponse: widget.userDetailResponse,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

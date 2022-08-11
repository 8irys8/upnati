import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class BusinessSelectScreen extends HookWidget {
  const BusinessSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 70,
              ),
              Center(
                child: Image.asset(Images.tradePointImg),
              ),
              const SizedBox(
                height: 12,
              ),
              Center(
                child: Text(
                  LocaleKeys.register_has_business.tr(),
                ),
              ),
              const SizedBox(
                height: 69,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.router.push(const BusinessScreen()),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.inputGray,
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: AppColors.gray.withOpacity(.36),
                            width: .5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.text.withOpacity(.25),
                              offset: const Offset(-3, 1),
                              blurRadius: 2,
                              spreadRadius: 1,
                              inset: true,
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        width: 128,
                        height: 128,
                        child: Text(
                          LocaleKeys.register_yes.tr(),
                          style: AppTheme.regular(size: 16),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 47,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.inputGray,
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(
                          color: AppColors.gray.withOpacity(.36),
                          width: .5,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.text.withOpacity(.25),
                            offset: const Offset(-3, 1),
                            blurRadius: 2,
                            spreadRadius: 1,
                            inset: true,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      width: 128,
                      height: 128,
                      child: Text(
                        LocaleKeys.register_no.tr(),
                        style: AppTheme.regular(size: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

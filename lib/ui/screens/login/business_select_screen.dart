import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Center(
                  child: Image.asset(Images.upnatiStoreLogo),
                ),
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    'תודה שהצטרפת',
                    style: AppTheme.regular(size: 32, color: AppColors.text),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Center(
                  child: Text(
                    'בוא נתחיל',
                    style: AppTheme.regular(size: 32, color: AppColors.text),
                  ),
                ),
                const SizedBox(
                  height: 39,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            context.router.push(const BusinessScreen()),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.rozeBright,
                              width: 3,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.text.withOpacity(.16),
                                offset: const Offset(0, 3),
                                blurRadius: 6,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 19,
                              ),
                              Text(
                                'עסק',
                                style: AppTheme.regular(size: 16),
                              ),
                              const SizedBox(
                                height: 68,
                              ),
                              Image.asset(
                                Images.shopImg,
                                fit: BoxFit.scaleDown,
                                height: 58,
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 47,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () =>
                            context.router.push(const MarketPlaceScreen()),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: AppColors.purple,
                              width: 3,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.text.withOpacity(.16),
                                offset: const Offset(0, 3),
                                blurRadius: 6,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 19,
                              ),
                              Text(
                                'לקוח',
                                style: AppTheme.regular(size: 16),
                              ),
                              const SizedBox(
                                height: 68,
                              ),
                              Image.asset(Images.packImg),
                              const SizedBox(
                                height: 19,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

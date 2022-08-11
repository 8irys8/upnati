import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/custom_button.dart';

import '../../../core/config/router.gr.dart';

class BusinessRegistrationScreen extends StatefulWidget {
  const BusinessRegistrationScreen({Key? key}) : super(key: key);

  @override
  State<BusinessRegistrationScreen> createState() =>
      _BusinessRegistrationScreenState();
}

class _BusinessRegistrationScreenState
    extends State<BusinessRegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  LocaleKeys.business_register_shopDetails.tr(),
                  style: AppTheme.regular(size: 16),
                ),
                const SizedBox(
                  height: 9,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'shushu market',
                              style: AppTheme.bold(size: 18),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            SvgPicture.asset(
                              Svgs.icEditRect,
                              height: 13,
                            ),
                          ],
                        ),
                        Text(
                          'עיצוב הבית',
                          style: AppTheme.regular(
                            size: 16,
                            color: AppColors.text.withOpacity(0.64),
                          ),
                        ),
                        Text(
                          'בכל הארץ',
                          style: AppTheme.regular(
                            size: 16,
                            color: AppColors.text.withOpacity(0.64),
                          ),
                        ),
                      ],
                    ),
                    Image.asset(Images.shushuLogoImg),
                  ],
                ),
                const SizedBox(
                  height: 9,
                ),
                Text(
                  'חנות כיפית עם פרטים לעיצוב הבית \nמוצרים שחייבים בכל בית וגם מוצרים מיותרים שמקשטים את הבית \nמתוך אהבה גדולה לאומנות ועיצוב.',
                  style: AppTheme.regular(
                    size: 14,
                    color: AppColors.text.withOpacity(0.64),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    LocaleKeys.business_register_uploadProductImg.tr(),
                    textDirection: TextDirection.rtl,
                    style: AppTheme.regular(
                      size: 12,
                      color: AppColors.text.withOpacity(0.64),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xffF0F0F0),
                    border: Border.all(
                      color: const Color(0xff707070).withOpacity(0.36),
                      width: 0.6,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Expanded(
                            child: AddProductContainer(
                              isAdded: true,
                            ),
                          ),
                          const SizedBox(
                            width: 11,
                          ),
                          Expanded(
                              child: GestureDetector(
                                  onTap: () => context.router
                                      .push(ProduceDetailScreen()),
                                  child: AddProductContainer())),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Expanded(child: AddProductContainer()),
                          SizedBox(
                            width: 11,
                          ),
                          Expanded(child: AddProductContainer()),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: const [
                          Expanded(child: AddProductContainer()),
                          SizedBox(
                            width: 11,
                          ),
                          Expanded(child: AddProductContainer()),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomButton(
                  title: LocaleKeys.business_register_saveAndContinue.tr(),
                  color: AppColors.darkBlue,
                  onPressed: () => context.router.push(const ShopHomeScreen()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/main_container.dart';

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
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.shushuLogoImg),
                        const SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              LocaleKeys.business_register_shopDetails.tr(),
                              style: AppTheme.regular(size: 16),
                            ),
                            Text(
                              'shushu market',
                              style: AppTheme.bold(size: 18),
                            ),
                            Text(
                              'עיצוב הבית',
                              style: AppTheme.regular(
                                size: 16,
                                color: AppColors.textGray,
                              ),
                            ),
                            Text(
                              'בכל הארץ',
                              style: AppTheme.regular(
                                size: 16,
                                color: AppColors.textGray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      'חנות כיפית עם פרטים לעיצוב הבית \nמוצרים שחייבים בכל בית וגם מוצרים מיותרים שמקשטים את הבית \nמתוך אהבה גדולה לאומנות ועיצוב.',
                      style: AppTheme.regular(
                        size: 14,
                        color: AppColors.textGray,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        LocaleKeys.business_register_uploadProductImg.tr(),
                        textDirection: TextDirection.rtl,
                        style: AppTheme.regular(
                          size: 13,
                          color: AppColors.textGray,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // SizedBox(
                    //   height: 460,
                    //   child: GridView.builder(
                    //       itemCount: 6,
                    //       gridDelegate:
                    //           const SliverGridDelegateWithMaxCrossAxisExtent(
                    //               maxCrossAxisExtent: 200,
                    //               crossAxisSpacing: 39,
                    //               childAspectRatio: 0.87,
                    //               mainAxisSpacing: 30),
                    //       itemBuilder: (context, index) {
                    // return MainContainer(
                    //     borderRadius: 10,
                    //     child: Column(
                    //       children: [
                    //         const SizedBox(
                    //           height: 30,
                    //         ),
                    //         Image.asset(Images.emptyBoxImg),
                    //         const SizedBox(
                    //           height: 13,
                    //         ),
                    //         Text(
                    //           LocaleKeys.business_register_uploadProduct
                    //               .tr(),
                    //           style: AppTheme.regular(size: 10),
                    //         ),
                    //         const SizedBox(
                    //           height: 8,
                    //         ),
                    //         SvgPicture.asset(
                    //           Svgs.icPlus,
                    //           fit: BoxFit.scaleDown,
                    //           height: 20,
                    //         ),
                    //       ],
                    //     ));
                    //       }),
                    // )
                    Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                child: AddProductContainer(
                              isAdded: true,
                            )),
                            const SizedBox(
                              width: 39,
                            ),
                            Expanded(
                              child: GestureDetector(
                                  onTap: () => context.router
                                      .push(const ProduceDetailScreen()),
                                  child: const AddProductContainer()),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 31,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: AddProductContainer(),
                            ),
                            SizedBox(
                              width: 39,
                            ),
                            Expanded(
                              child: AddProductContainer(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const CheckedStepsRadio(
            secondStep: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0)
                .copyWith(top: 11, bottom: 24),
            child: CustomButton(
              onPressed: () => context.router.push(const ShopHomeScreen()),
              title: LocaleKeys.market_screen_save_btn.tr(),
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}

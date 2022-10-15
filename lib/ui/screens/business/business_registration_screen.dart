import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/main_container.dart';

import '../../../core/config/router.gr.dart';

class BusinessRegistrationScreen extends StatefulWidget with AutoRouteWrapper {
  final BusinessResponse businessResponse;
  const BusinessRegistrationScreen({Key? key, required this.businessResponse})
      : super(key: key);

  @override
  State<BusinessRegistrationScreen> createState() =>
      _BusinessRegistrationScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => GetIt.I<BusinessCubit>()),
    ], child: this);
  }
}

class _BusinessRegistrationScreenState
    extends State<BusinessRegistrationScreen> {
  bool finalStep = false;

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
                        widget.businessResponse.imageUrls?.isNotEmpty == true
                            ? Image.network(
                                widget.businessResponse.imageUrls!.first,
                                height: 50,
                                width: 50,
                              )
                            : Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: const Color(0xffC7C7C7),
                                    border: Border.all(
                                        color:
                                            AppColors.white.withOpacity(.86)),
                                    borderRadius: BorderRadius.circular(150)),
                                child: SvgPicture.asset(
                                  Svgs.icBusinessEmpty,
                                  height: 30,
                                  fit: BoxFit.scaleDown,
                                )),
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
                              widget.businessResponse.name ?? '',
                              style: AppTheme.bold(size: 18),
                            ),
                            // Text(
                            //   'עיצוב הבית',
                            //   style: AppTheme.regular(
                            //     size: 16,
                            //     color: AppColors.textGray,
                            //   ),
                            // ),
                            // Text(
                            //   'בכל הארץ',
                            //   style: AppTheme.regular(
                            //     size: 16,
                            //     color: AppColors.textGray,
                            //   ),
                            // ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Text(
                      widget.businessResponse.description?.full ?? '',
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
                                  onTap: () async {
                                    var result = await context.router
                                        .push(const ProduceDetailScreen());
                                    if (result == true) {
                                      setState(() {
                                        finalStep = true;
                                      });
                                    }
                                  },
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
          CheckedStepsRadio(
            secondStep: true,
            finalStep: finalStep,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37.0)
                .copyWith(top: 11, bottom: 24),
            child: CustomButton(
              onPressed: () {
                context.router.push(const ShopHomeScreen());
              },
              title: LocaleKeys.market_screen_save_btn.tr(),
              color: AppColors.darkBlue,
            ),
          ),
        ],
      ),
    );
  }
}

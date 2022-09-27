import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class ProductMainScreen extends StatefulWidget {
  const ProductMainScreen({Key? key}) : super(key: key);

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();
}

class _ProductMainScreenState extends State<ProductMainScreen> {
  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: CustomNavigatorBar(
          initialIndex: 0,
        ),
        body: Stack(
          children: [
            Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                // height: 300,
                alignment: Alignment.topCenter,
                child: Image.asset(
                  Images.panda,
                  fit: BoxFit.cover,
                  // width: double.infinity,
                  height: 325,
                )),
            Positioned(
              top: 285,
              left: 0,
              right: 0,
              // bottom: 0,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: AppColors.text.withOpacity(.19),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: AppColors.text.withOpacity(.19),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: AppColors.text.withOpacity(.19),
                              shape: BoxShape.circle),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              color: AppColors.text.withOpacity(.55),
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 28),
                      child: Row(
                        children: [
                          Image.asset(
                            Images.shushuLogoImg,
                            width: 53,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('shushu market',
                                  style: AppTheme.bold(
                                      size: 18, color: AppColors.yellow)),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    Svgs.icStarMarked,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    Svgs.icStarMarked,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    Svgs.icStarMarked,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    Svgs.icStarNotmarked,
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SvgPicture.asset(
                                    Svgs.icStarNotmarked,
                                  ),
                                  const SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                      '(234 ${LocaleKeys.business_register_reviews.tr()})',
                                      style: AppTheme.regular(
                                          size: 8, color: AppColors.textGray)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 45),
                                child: Text(
                                  'מגהץ קיטור',
                                  style: AppTheme.bold(size: 16),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 36,
                                ),
                                child: Text(
                                  '• הספק 2400W לחימום מהיר של המגהץ\n• מכת טורבו של 130 גרם לדקה להסרת קמטים עקשניים במיוחד\n• 30 גרם תפוקת אדים רציפה לגיהוץ קל ונוח • תחתית קרמית חדשנית חלקה ועמידה במיוחד המגנה על הבגד  • פונקציית בקרת טמפרטורה – המאפשרת התאמה לתפוקת האדים המרבית לטמפרטורה ',
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.regular(
                                      size: 14, color: AppColors.textGray),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, -45),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding:
                                  const EdgeInsets.fromLTRB(25, 10, 20, 25),
                              decoration: const BoxDecoration(
                                  color: AppColors.roze,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(27),
                                    bottomRight: Radius.circular(27),
                                  )),
                              child: Text(
                                '15%',
                                style: AppTheme.bold(
                                    size: 24, color: AppColors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            LocaleKeys.basket_info_nis.tr(args: ['350']),
                            style: AppTheme.bold(size: 20),
                          ),
                          Column(
                            children: [
                              Text(LocaleKeys.product_info_quantity.tr(),
                                  style: AppTheme.bold(
                                    size: 8,
                                  )),
                              Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0xffF3F3F3),
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: const Color(0xff707070),
                                          width: .5)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: Image.asset(
                                          Images.icMinusAdd,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6, vertical: 4),
                                        decoration: const BoxDecoration(
                                            color: AppColors.white,
                                            border: Border(
                                              right: BorderSide(
                                                  color: Color(0xff707070),
                                                  width: .5),
                                              left: BorderSide(
                                                  color: Color(0xff707070),
                                                  width: .5),
                                            )),
                                        child: Text(
                                          '1',
                                          style: AppTheme.bold(size: 14),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: Image.asset(
                                          Images.icPlusAdd,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 58,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () =>
                                  context.router.push(const BuyDetailsScreen()),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 14),
                                decoration: BoxDecoration(
                                  color: AppColors.darkBlueLight,
                                  borderRadius: BorderRadius.circular(25),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.16),
                                      blurRadius: 3,
                                      offset: const Offset(0, 1),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                      LocaleKeys.product_info_buy_now_btn.tr(),
                                      style: AppTheme.semi(
                                          size: 16, color: AppColors.white)),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                color: AppColors.roze,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.16),
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                    LocaleKeys.product_info_add_to_basket_btn
                                        .tr(),
                                    style: AppTheme.semi(
                                        size: 16, color: AppColors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 45,
                right: 36,
                child: Row(
                  children: [
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: AppColors.rozeLightbtn,
                          shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        Svgs.icHeartWhite,
                        fit: BoxFit.scaleDown,
                        height: 25,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Container(
                      width: 25,
                      height: 25,
                      decoration: const BoxDecoration(
                          color: Color(0xff3EBE00), shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        Svgs.icShareSmall,
                        fit: BoxFit.scaleDown,
                        height: 25,
                      ),
                    ),
                  ],
                )),
            Positioned(
              top: 32,
              left: 36,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

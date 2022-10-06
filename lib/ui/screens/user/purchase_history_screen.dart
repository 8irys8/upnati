import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/expandable_page_view.dart';
import 'package:upnati/ui/widgets/main_container.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class PurchaseHistoryScreen extends StatefulWidget {
  const PurchaseHistoryScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseHistoryScreen> createState() => _PurchaseHistoryScreenState();
}

class _PurchaseHistoryScreenState extends State<PurchaseHistoryScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;
  bool selectedItem = true;

  void _changeIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Image.asset(
                Images.icBasketPurple,
                height: 26,
              ),
              const SizedBox(height: 3),
              Text(
                LocaleKeys.basket_info_my_basket.tr(),
                style: AppTheme.bold(size: 13),
              ),
            ],
          ),
          centerTitle: true,
        ),
        bottomNavigationBar: const CustomNavigatorBar(),
        body: SafeArea(
            child: Column(
          children: [
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 37),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TabButton(
                      title: LocaleKeys.basket_info_my_basket_btn.tr(),
                      selectedIndex: 1,
                      selectedPage: _selectedIndex,
                      onPressed: () => _changeIndex(1),
                    ),
                  ),
                  const SizedBox(
                    width: 46,
                  ),
                  Expanded(
                    child: TabButton(
                      title: LocaleKeys.basket_info_shop_history.tr(),
                      selectedIndex: 0,
                      isLeft: true,
                      selectedPage: _selectedIndex,
                      onPressed: () => _changeIndex(0),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                controller: _pageController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 26),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 22),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.gray),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        Images.panda,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              LocaleKeys.basket_info_acquired
                                                  .tr(),
                                              style: AppTheme.bold(size: 12)),
                                          Text(' 10 בדצמבר 2021 - 12:30',
                                              style:
                                                  AppTheme.semiLight(size: 10)),
                                        ],
                                      ),
                                      Text('צעצועי פנדה לילדים שלך',
                                          style: AppTheme.semiLight(size: 14)),
                                      Text(
                                          'קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                                          style: AppTheme.regular(size: 10)),
                                      Text('נעלי מורן',
                                          style: AppTheme.semiLight(size: 10)
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)),
                                      Text.rich(
                                        TextSpan(
                                          text: '350 ',
                                          style: AppTheme.bold(size: 16),
                                          children: [
                                            TextSpan(
                                              text: LocaleKeys.basket_info_nis
                                                  .tr(args: ['']),
                                              style: AppTheme.bold(size: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 22),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 85,
                                    width: 85,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: AppColors.gray),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(5),
                                      child: Image.asset(
                                        Images.cat,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              LocaleKeys.basket_info_acquired
                                                  .tr(),
                                              style: AppTheme.bold(size: 12)),
                                          Text(' 10 בדצמבר 2021 - 12:30',
                                              style:
                                                  AppTheme.semiLight(size: 10)),
                                        ],
                                      ),
                                      Text('צעצועי פנדה לילדים שלך',
                                          style: AppTheme.semiLight(size: 14)),
                                      Text(
                                          'קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                                          style: AppTheme.regular(size: 10)),
                                      Text('נעלי מורן',
                                          style: AppTheme.semiLight(size: 10)
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)),
                                      Text.rich(
                                        TextSpan(
                                          text: '350 ',
                                          style: AppTheme.bold(size: 16),
                                          children: [
                                            TextSpan(
                                              text: LocaleKeys.basket_info_nis
                                                  .tr(args: ['']),
                                              style: AppTheme.bold(size: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          child: MainContainer(
                            opacity: .36,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 22),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      height: 85,
                                      width: 85,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: AppColors.gray),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Container(
                                        color: AppColors.text.withOpacity(.14),
                                        child: Center(
                                          child: Image.asset(
                                            Images.icEmptyBag,
                                            height: 65,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      )),
                                  const SizedBox(width: 12),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                              LocaleKeys.basket_info_acquired
                                                  .tr(),
                                              style: AppTheme.bold(size: 12)),
                                          Text(' 10 בדצמבר 2021 - 12:30',
                                              style:
                                                  AppTheme.semiLight(size: 10)),
                                        ],
                                      ),
                                      Text('צעצועי פנדה לילדים שלך',
                                          style: AppTheme.semiLight(size: 14)),
                                      Text(
                                          'קבקבים שוודים קבקבי עץ לנשים אדום עם נקודות',
                                          style: AppTheme.regular(size: 10)),
                                      Text('נעלי מורן',
                                          style: AppTheme.semiLight(size: 10)
                                              .copyWith(
                                                  decoration: TextDecoration
                                                      .underline)),
                                      Text.rich(
                                        TextSpan(
                                          text: '350 ',
                                          style: AppTheme.bold(size: 16),
                                          children: [
                                            TextSpan(
                                              text: LocaleKeys.basket_info_nis
                                                  .tr(args: ['']),
                                              style: AppTheme.bold(size: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  //second page
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _CustomSelector(
                                  value: selectedItem,
                                  onTap: () => setState(() {
                                        selectedItem = !selectedItem;
                                      })),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                LocaleKeys.basket_info_all.tr(),
                                style: AppTheme.semiLight(size: 12),
                              ),
                            ],
                          ),
                          ListView.builder(
                              itemCount: 3,
                              primary: false,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) => _BasketItem()),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 100)
                                .copyWith(bottom: 10, top: 20),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      LocaleKeys.basket_info_for_payment.tr(),
                                      style: AppTheme.semiLight(size: 12),
                                    ),
                                    Text.rich(TextSpan(
                                      text: '450 ',
                                      style: AppTheme.bold(size: 18),
                                      children: [
                                        TextSpan(
                                          text: LocaleKeys.basket_info_nis
                                              .tr(args: ['']),
                                          style: AppTheme.bold(size: 10),
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      LocaleKeys.buy_details_shipping.tr(),
                                      style: AppTheme.semiLight(size: 12),
                                    ),
                                    Text.rich(TextSpan(
                                      text: '30 ',
                                      style: AppTheme.bold(size: 18),
                                      children: [
                                        TextSpan(
                                          text: LocaleKeys.basket_info_nis
                                              .tr(args: ['']),
                                          style: AppTheme.bold(size: 10),
                                        ),
                                      ],
                                    )),
                                  ],
                                ),
                                const Divider(
                                  height: 5,
                                  color: AppColors.text,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      LocaleKeys.buy_details_total.tr(),
                                      style: AppTheme.semiLight(size: 12),
                                    ),
                                    Text.rich(TextSpan(
                                      text: '480 ',
                                      style: AppTheme.bold(size: 18),
                                      children: [
                                        TextSpan(
                                          text: LocaleKeys.basket_info_nis
                                              .tr(args: ['']),
                                          style: AppTheme.bold(size: 10),
                                        ),
                                      ],
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: CustomButton(
                              title: LocaleKeys.basket_info_for_payment.tr(),
                              borderRadius: 25,
                              color: AppColors.darkBlueLight,
                              innerShadow: true,
                              onPressed: () =>
                                  context.router.push(const BuyDetailsScreen()),
                            ),
                          )
                        ],
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
        )),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final int selectedIndex;
  final int selectedPage;
  final VoidCallback onPressed;
  final bool? isLeft;
  const TabButton(
      {Key? key,
      required this.title,
      required this.selectedIndex,
      required this.selectedPage,
      required this.onPressed,
      this.isLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: selectedPage == selectedIndex
                ? AppColors.darkBlueLight
                : AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(19),
              topRight: const Radius.circular(19),
              bottomRight: isLeft == true
                  ? const Radius.circular(0)
                  : const Radius.circular(19),
              bottomLeft: isLeft == true
                  ? const Radius.circular(19)
                  : const Radius.circular(0),
            ),
            border: Border.all(color: AppColors.white),
            boxShadow: [
              BoxShadow(
                color: AppColors.text.withOpacity(0.16),
                blurRadius: 6,
                offset: const Offset(0, 3),
              )
            ]),
        child: Center(
          child: Text(title,
              style: AppTheme.bold(
                  size: 18,
                  color: selectedPage == selectedIndex
                      ? AppColors.white
                      : AppColors.text)),
        ),
      ),
    );
  }
}

class _CustomSelector extends StatelessWidget {
  final bool value;
  final VoidCallback onTap;

  const _CustomSelector({
    Key? key,
    required this.value,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(color: const Color(0xff3A9A04), width: 2)),
          child: value
              ? SvgPicture.asset(
                  Svgs.icCheckedWhite,
                  color: const Color(0xff3A9A04),
                  height: 24,
                  fit: BoxFit.scaleDown,
                )
              : const SizedBox()),
    );
  }
}

class _BasketItem extends StatefulWidget {
  const _BasketItem({
    Key? key,
  }) : super(key: key);

  @override
  State<_BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<_BasketItem> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: MainContainer(
        opacity: .36,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 22),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    _CustomSelector(
                        value: isSelected,
                        onTap: () => setState(() {
                              isSelected = !isSelected;
                            })),
                    Container(
                      height: 100,
                      width: 110,
                      padding: const EdgeInsets.only(right: 8),
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          Images.panda,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('מדף דקורטיבי',
                              style: AppTheme.semiLight(size: 12)),
                          SizedBox(
                            height: 26,
                            child: Text(' צעצועי פנדה לילדים שלך',
                                textAlign: TextAlign.start,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: AppTheme.regular(size: 8)),
                          ),
                          Text('נרכש', style: AppTheme.bold(size: 10)),
                          Text('10/11/2022 25/11/2022 ',
                              style: AppTheme.semiLight(size: 10)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text.rich(
                                TextSpan(
                                  text: '350 ',
                                  style: AppTheme.bold(size: 16),
                                  children: [
                                    TextSpan(
                                      text: LocaleKeys.basket_info_nis
                                          .tr(args: ['']),
                                      style: AppTheme.bold(size: 12),
                                    ),
                                  ],
                                ),
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
                                          borderRadius:
                                              BorderRadius.circular(12),
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
                                              style: AppTheme.bold(size: 11),
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
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 14,
                height: 14,
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.text)),
                child: SvgPicture.asset(
                  Svgs.icCloseThin,
                  color: AppColors.text,
                  fit: BoxFit.contain,
                  height: 4,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

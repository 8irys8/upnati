import 'package:auto_route/auto_route.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:share_plus/share_plus.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/core/config/utils.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/business/order_preview_response.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class ProductMainScreen extends StatefulWidget with AutoRouteWrapper {
  final ItemResponse? item;
  const ProductMainScreen({Key? key, this.item}) : super(key: key);

  @override
  State<ProductMainScreen> createState() => _ProductMainScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _ProductMainScreenState extends State<ProductMainScreen> {
  late CarouselController _controller;
  final ValueNotifier<int> _indexNotifier = ValueNotifier(0);
  final ValueNotifier<int> _amountNotifier = ValueNotifier(1);
  final ValueNotifier<bool> _isFavNotifier = ValueNotifier(false);

  @override
  void initState() {
    super.initState();
    _controller = CarouselController();
    _isFavNotifier.value = widget.item?.favorite ?? false;
  }

  void _putToBasket() async {
    var user = await Utils.getCurrentUser();
    if (user == null) {
      Utils.showRegisterDialog(context);
    } else {
      context.read<BusinessCubit>().modifyBasket(
          pageOrder: SortType.ASC.name,
          page: 0,
          size: 1,
          itemCollection:
              ItemCollection(amount: {widget.item?.id: _amountNotifier.value}));
    }
  }

  void _addToFavorite() async {
    if (_isFavNotifier.value) {
      context
          .read<BusinessCubit>()
          .deleteFromFavorites(itemId: widget.item?.id ?? '');
      _isFavNotifier.value = false;
    } else {
      context
          .read<BusinessCubit>()
          .addToFavorites(itemId: widget.item?.id ?? '');
      _isFavNotifier.value = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: Scaffold(
        bottomNavigationBar: const CustomNavigatorBar(
          initialIndex: 0,
        ),
        body: BlocListener<BusinessCubit, BusinessState>(
          listener: (context, state) {
            state.whenOrNull(
              successLink: (link) => Share.share(link.url ?? ''),
              success: () {
                context.router.push(const PurchaseHistoryScreen());
              },
            );
          },
          child: Stack(
            children: [
              CarouselSlider(
                  carouselController: _controller,
                  items: widget.item?.imageUrls?.isEmpty == true
                      ? [
                          Container(
                              width: double.infinity,
                              alignment: Alignment.topCenter,
                              color: AppColors.grayLight,
                              child: Image.asset(
                                Images.icEmptyBag,
                                fit: BoxFit.cover,
                                height: 325,
                              )),
                        ]
                      : widget.item?.imageUrls
                          ?.map((e) => Container(
                                width: double.infinity,
                                alignment: Alignment.topCenter,
                                child: Image.network(
                                  e,
                                  fit: BoxFit.cover,
                                  height: 325,
                                ),
                              ))
                          .toList(),
                  options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      _indexNotifier.value = index;
                    },
                    enableInfiniteScroll: false,
                    viewportFraction: 1,
                    height: MediaQuery.of(context).size.height,
                  )),
              Positioned(
                top: 285,
                left: 0,
                right: 0,
                bottom: 0,
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
                      ValueListenableBuilder<int>(
                          valueListenable: _indexNotifier,
                          builder: (context, value, child) {
                            return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(
                                  widget.item?.imageUrls?.length ?? 0,
                                  (index) => Container(
                                    width: 8,
                                    height: 8,
                                    margin: const EdgeInsets.only(right: 12),
                                    decoration: BoxDecoration(
                                        color: value == index
                                            ? AppColors.text.withOpacity(.55)
                                            : AppColors.text.withOpacity(.19),
                                        shape: BoxShape.circle),
                                  ),
                                ));
                          }),
                      const SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 28),
                        child: Row(
                          children: [
                            widget.item?.businessImageUrl == null
                                ? Container(
                                    width: 53,
                                    height: 53,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.darkBlueLight,
                                    ),
                                    child: Image.asset(
                                      Images.emptyAvatar,
                                      fit: BoxFit.cover,
                                    ),
                                  )
                                : Image.network(
                                    widget.item?.businessImageUrl ?? '',
                                    width: 53,
                                  ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(widget.item?.businessName ?? '',
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
                                            size: 8,
                                            color: AppColors.textGray)),
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
                                    widget.item?.name ?? '',
                                    style: AppTheme.bold(size: 16),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 36,
                                  ),
                                  child: Text(
                                    widget.item?.description?.full ?? '',
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
                                  '${widget.item?.discountPercents}%',
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
                              LocaleKeys.basket_info_nis.tr(args: [
                                widget.item?.price?.toStringAsFixed(2) ?? ''
                              ]),
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
                                        GestureDetector(
                                          onTap: () {
                                            if (_amountNotifier.value > 1) {
                                              _amountNotifier.value--;
                                            }
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: Image.asset(
                                              Images.icMinusAdd,
                                            ),
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
                                          child: ValueListenableBuilder<int>(
                                              valueListenable: _amountNotifier,
                                              builder: (context, value, child) {
                                                return Text(
                                                  value.toString(),
                                                  style:
                                                      AppTheme.bold(size: 14),
                                                );
                                              }),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _amountNotifier.value++;
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: Image.asset(
                                              Images.icPlusAdd,
                                            ),
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
                              child: FutureBuilder<UserDetailResponse?>(
                                  future: Utils.getCurrentUser(),
                                  builder: (context, snapshot) {
                                    return GestureDetector(
                                      onTap: () => snapshot.connectionState ==
                                              ConnectionState.done
                                          ? snapshot.data != null
                                              ? context.router.push(
                                                  BuyDetailsScreen(
                                                      order: ItemCollection(
                                                          amount: {
                                                      widget.item?.id:
                                                          _amountNotifier.value
                                                    })))
                                              : Utils.showRegisterDialog(
                                                  context)
                                          : null,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 14),
                                        decoration: BoxDecoration(
                                          color: AppColors.darkBlueLight,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.16),
                                              blurRadius: 3,
                                              offset: const Offset(0, 1),
                                            ),
                                          ],
                                        ),
                                        child: Center(
                                          child: Text(
                                              LocaleKeys
                                                  .product_info_buy_now_btn
                                                  .tr(),
                                              style: AppTheme.semi(
                                                  size: 16,
                                                  color: AppColors.white)),
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Expanded(
                              child: BlocBuilder<BusinessCubit, BusinessState>(
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      // loading: () => const Center(
                                      //       child: SpinKitCircle(
                                      //         color: AppColors.darkBlue,
                                      //       ),
                                      //     ),
                                      orElse: () => GestureDetector(
                                            onTap: () => _putToBasket(),
                                            child: Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 14),
                                              decoration: BoxDecoration(
                                                color: AppColors.roze,
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.16),
                                                    blurRadius: 3,
                                                    offset: const Offset(0, 1),
                                                  ),
                                                ],
                                              ),
                                              child: Center(
                                                child: Text(
                                                    LocaleKeys
                                                        .product_info_add_to_basket_btn
                                                        .tr(),
                                                    style: AppTheme.semi(
                                                        size: 16,
                                                        color:
                                                            AppColors.white)),
                                              ),
                                            ),
                                          ));
                                },
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
                  child: FutureBuilder<UserDetailResponse?>(
                      future: Utils.getCurrentUser(),
                      builder: (context, snapshot) {
                        return Row(
                          children: [
                            GestureDetector(
                              onTap: () => snapshot.connectionState ==
                                      ConnectionState.done
                                  ? snapshot.data != null
                                      ? _addToFavorite()
                                      : Utils.showRegisterDialog(context)
                                  : null,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                    color: AppColors.white,
                                    shape: BoxShape.circle),
                                child: ValueListenableBuilder<bool>(
                                    valueListenable: _isFavNotifier,
                                    builder: (context, value, child) {
                                      return SvgPicture.asset(
                                        value
                                            ? Svgs.icSelectedHeart
                                            : Svgs.icUnselectedHeart,
                                        fit: BoxFit.scaleDown,
                                        height: 25,
                                      );
                                    }),
                              ),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            GestureDetector(
                              onTap: () => snapshot.connectionState ==
                                      ConnectionState.done
                                  ? snapshot.data != null
                                      ? context
                                          .read<BusinessCubit>()
                                          .shareItemLink(
                                              id: widget.item?.id ?? '')
                                      : Utils.showRegisterDialog(context)
                                  : null,
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: const BoxDecoration(
                                    color: Color(0xff3EBE00),
                                    shape: BoxShape.circle),
                                child: SvgPicture.asset(
                                  Svgs.icShareSmall,
                                  fit: BoxFit.scaleDown,
                                  height: 25,
                                ),
                              ),
                            ),
                          ],
                        );
                      })),
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
      ),
    );
  }
}

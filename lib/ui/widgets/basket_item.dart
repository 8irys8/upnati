import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/item_collection.dart';
import 'package:upnati/logic/models/item_basket_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_selector.dart';
import 'package:upnati/ui/widgets/main_container.dart';

class BasketItem extends StatefulWidget {
  final ItemBasketResponse? item;
  final VoidCallback? onRemove;
  final ValueChanged<double>? onAmountChange;
  final ValueChanged<double>? onDeliveryChange;
  final bool isAllSelected;

  const BasketItem({
    Key? key,
    this.item,
    this.onRemove,
    this.onAmountChange,
    this.onDeliveryChange,
    this.isAllSelected = false,
  }) : super(key: key);

  @override
  State<BasketItem> createState() => _BasketItemState();
}

class _BasketItemState extends State<BasketItem> {
  bool isSelected = false;
  late ValueNotifier<int> counter;

  @override
  void initState() {
    super.initState();
    counter = ValueNotifier(widget.item?.amount ?? 1);
    isSelected = widget.isAllSelected;
    if (isSelected) {
      widget.onAmountChange?.call(counter.value * (widget.item?.price ?? 0));
      widget.onDeliveryChange?.call((widget.item?.deliveryPrice ?? 0));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () => widget.onRemove?.call(),
        );
      },
      child: Padding(
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
                      CustomSelector(
                          value: isSelected,
                          onTap: () {
                            setState(() {
                              isSelected = !isSelected;
                            });
                            if (isSelected) {
                              widget.onAmountChange?.call(
                                  counter.value * (widget.item?.price ?? 0));
                              widget.onDeliveryChange
                                  ?.call((widget.item?.deliveryPrice ?? 0));
                            } else {
                              widget.onAmountChange?.call(
                                  -counter.value * (widget.item?.price ?? 0));
                              widget.onDeliveryChange
                                  ?.call(-(widget.item?.deliveryPrice ?? 0));
                            }
                          }),
                      widget.item?.imageUrls?.isEmpty == true
                          ? Container(
                              width: 110,
                              height: 100,
                              color: AppColors.grayLight,
                              child: Image.asset(
                                Images.icEmptyBag,
                                fit: BoxFit.cover,
                              ))
                          : Container(
                              height: 100,
                              width: 110,
                              padding: const EdgeInsets.only(right: 8),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.network(
                                  widget.item?.imageUrls?.first ?? '',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.item?.name ?? '',
                                style: AppTheme.semiLight(size: 12)),
                            SizedBox(
                              height: 26,
                              child: Text(widget.item?.description?.full ?? '',
                                  textAlign: TextAlign.start,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.regular(size: 8)),
                            ),
                            Text('נרכש', style: AppTheme.bold(size: 10)),
                            // need to fix date
                            Text('-/-', style: AppTheme.semiLight(size: 10)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text.rich(
                                  TextSpan(
                                    text: widget.item?.price
                                            ?.toStringAsFixed(2) ??
                                        '0',
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
                                            GestureDetector(
                                              onTap: () {
                                                if (counter.value > 1) {
                                                  counter.value--;
                                                  context
                                                      .read<BusinessCubit>()
                                                      .modifyBasket(
                                                          pageOrder:
                                                              SortType.ASC.name,
                                                          size: 1,
                                                          itemCollection:
                                                              ItemCollection(
                                                                  amount: {
                                                                widget.item?.id:
                                                                    counter
                                                                        .value
                                                              }));
                                                }
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 4),
                                                child: Image.asset(
                                                  Images.icMinusAdd,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 6,
                                                      vertical: 4),
                                              decoration: const BoxDecoration(
                                                  color: AppColors.white,
                                                  border: Border(
                                                    right: BorderSide(
                                                        color:
                                                            Color(0xff707070),
                                                        width: .5),
                                                    left: BorderSide(
                                                        color:
                                                            Color(0xff707070),
                                                        width: .5),
                                                  )),
                                              child:
                                                  ValueListenableBuilder<int>(
                                                      valueListenable: counter,
                                                      builder: (context, value,
                                                          child) {
                                                        return Text(
                                                          value.toString(),
                                                          style: AppTheme.bold(
                                                              size: 14),
                                                        );
                                                      }),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                counter.value++;
                                                context
                                                    .read<BusinessCubit>()
                                                    .modifyBasket(
                                                        pageOrder:
                                                            SortType.ASC.name,
                                                        size: 1,
                                                        itemCollection:
                                                            ItemCollection(
                                                                amount: {
                                                              widget.item?.id:
                                                                  counter.value
                                                            }));
                                              },
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<BusinessCubit>().modifyBasket(
                        pageOrder: SortType.ASC.name,
                        size: 1,
                        itemCollection:
                            ItemCollection(amount: {widget.item?.id: 0}));
                  },
                  child: Container(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

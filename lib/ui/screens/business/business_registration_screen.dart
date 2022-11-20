import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';

import 'package:upnati/ui/widgets/add_product_container.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/main_container.dart';

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
  List<ItemResponse> _items = [];
  int? _selectedItemIndex;

  void _deleteItem(ItemResponse item) {
    context.read<BusinessCubit>().deleteItem(id: item.id ?? '');
  }

  @override
  void initState() {
    super.initState();
    context.read<BusinessCubit>().getMyItems(param: 'price', size: 10000);
  }

  void _refreshItems() {
    _items = [];
    context.read<BusinessCubit>().getMyItems(param: 'price', size: 10000);
  }

  @override
  Widget build(BuildContext context) {
    var empty = _items.length % 4;
    var items = <ItemResponse>[
      ..._items,
      ...List.generate(4 - empty, (index) => const ItemResponse())
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => context.router.pop(),
              icon: const Icon(Icons.chevron_right_outlined, size: 40))
        ],
      ),
      body: BlocListener<BusinessCubit, BusinessState>(
        listener: (context, state) {
          state.whenOrNull(
            error: (err) => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('error'),
              ),
            ),
            successPageItemResponse: (pageItemResponse) {
              setState(() {
                for (var element in pageItemResponse.content ?? []) {
                  if (!_items.contains(element)) {
                    _items.add(element);
                  }
                }
              });
            },
            success: () {
              setState(() {
                _items.removeAt(_selectedItemIndex!);
                _selectedItemIndex = null;
              });
            },
          );
        },
        child: Column(
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          widget.businessResponse.description?.full ?? '',
                          style: AppTheme.regular(
                            size: 14,
                            color: AppColors.textGray,
                          ),
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
                      items.isNotEmpty
                          ? Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: items.length,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          crossAxisSpacing: 39,
                                          childAspectRatio: 0.75,
                                          mainAxisSpacing: 30),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        var editedItem = items[index];
                                        var result = await context.router
                                            .push(ProduceDetailScreen(
                                          item: editedItem.id == null
                                              ? null
                                              : editedItem,
                                        ));
                                        if (result != null &&
                                            result is ItemResponse) {
                                          setState(() {
                                            finalStep = true;
                                            // _items.add(result);
                                            editedItem.id == null
                                                ? _items.add(result)
                                                : _items[index] = result;
                                          });
                                        }
                                      },
                                      child: AddProductContainer(
                                        isAdded: items[index].id != null,
                                        item: items[index],
                                        onDelete: () {
                                          _selectedItemIndex = index;
                                          _deleteItem(items[index]);
                                        },
                                      ),
                                    );
                                  }),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 30),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 4,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          crossAxisSpacing: 39,
                                          childAspectRatio: 0.75,
                                          mainAxisSpacing: 30),
                                  itemBuilder: (context, index) {
                                    return GestureDetector(
                                      onTap: () async {
                                        var result = await context.router
                                            .push(ProduceDetailScreen());
                                        if (result != null &&
                                            result is ItemResponse) {
                                          setState(() {
                                            finalStep = true;
                                            _items.add(result);
                                          });
                                        }
                                      },
                                      child: const AddProductContainer(),
                                    );
                                  }),
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
                  context.router
                      .push(ShopHomeScreen(business: widget.businessResponse));
                },
                title: LocaleKeys.market_screen_save_btn.tr(),
                color: AppColors.darkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/config/router.gr.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/user/firebase_user_info_payload.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/expandable_page_view.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class UserMainScreen extends StatefulWidget with AutoRouteWrapper {
  const UserMainScreen({Key? key}) : super(key: key);

  @override
  State<UserMainScreen> createState() => _ProductMainScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<UserCubit>(create: (context) => GetIt.I<UserCubit>()),
      BlocProvider<BusinessCubit>(
          create: (context) => GetIt.I<BusinessCubit>()),
    ], child: this);
  }
}

class _ProductMainScreenState extends State<UserMainScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _addressController = TextEditingController();
  final _creditCardController = TextEditingController();
  final _phoneController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _cvvController = TextEditingController();
  final _expMonthController = TextEditingController();
  final _expYearController = TextEditingController();
  final ValueNotifier<File?> _userImage = ValueNotifier(null);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _changeIndex(int index) {
    if (!mounted) return;
    setState(() {
      _selectedIndex = index;
    });
    _pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  Future<void> _showConfirmDialog() async {
    var result = await showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(.76),
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21)),
              scrollable: true,
              contentPadding: EdgeInsets.zero,
              content: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.close_outlined,
                            color: Colors.black,
                            size: 30,
                          )),
                    ),
                  ),
                  Text(
                    'מחיקת חשבון',
                    style: AppTheme.bold(size: 23, color: Colors.black),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'העם אתה בטוח שברצונך \n למחוק את החשבון',
                    textAlign: TextAlign.center,
                    style: AppTheme.regular(size: 23, color: Colors.black),
                  ),
                  const SizedBox(height: 38),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              context.router.pop(true);
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  color: const Color(0xff00B01D),
                                  borderRadius: BorderRadius.circular(27),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.16),
                                      blurRadius: 3,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]),
                              child: Center(
                                child: Text('אני רוצה למחוק',
                                    style: AppTheme.bold(
                                        size: 10, color: AppColors.white)),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => context.router.pop(),
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              decoration: BoxDecoration(
                                  color: AppColors.red,
                                  borderRadius: BorderRadius.circular(27),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(.16),
                                      blurRadius: 3,
                                      offset: const Offset(0, 1),
                                    ),
                                  ]),
                              child: Center(
                                child: Text('אני לא רוצה למחוק',
                                    style: AppTheme.bold(
                                        size: 10, color: AppColors.white)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ));
    if (result == true) {
      if (!mounted) return;
      context.read<UserCubit>().deleteUser();
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    context.read<UserCubit>().getUserDetails();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _putFile() async {
    var result = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Choose Image'),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.camera);
                        if (image != null) {
                          _userImage.value = File(image.path);
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Camera')),
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickImage(source: ImageSource.gallery);
                        if (image != null) {
                          _userImage.value = File(image.path);
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Gallery')),
                ],
              ),
            ));
    if (result == true && _userImage.value != null) {
      context.read<UserCubit>().uploadUserImage(_userImage.value!);
    }
  }

  void _updateUserInfo(FirebaseUserInfoPayload user) {
    if (!_formKey.currentState!.validate()) return;
    context.read<UserCubit>().updateUserDetails(user);
  }

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          state.whenOrNull(successUserState: () {
            FirebaseAuth.instance.signOut();
            context.router.pushAndPopUntil(const SplashScreen(),
                predicate: (route) => false);
          }, errorUserState: (err) {
            return ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(err.toString())));
          }, successUserStateResponse: (response) {
            _nameController.text = response.fullName ?? '';
            _emailController.text = response.email ?? '';
            _addressController.text = response.location?.cityId ?? '';
            // _creditCardController.text = response.creditCard ?? '';
            _phoneController.text = response.phoneNumber ?? '';
            // _cardNumberController.text = response.cardNumber;
            // _cvvController.text = response.cvv;
            // _expMonthController.text = response.expMonth;
            // _expYearController.text = response.expYear;
          });
        },
        child: Scaffold(
          bottomNavigationBar: const CustomNavigatorBar(
            initialIndex: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  color: AppColors.darkBlueLight,
                  child: BlocBuilder<UserCubit, UserState>(
                    buildWhen: (previous, current) => current.maybeWhen(
                        successUserStateResponse: (response) => true,
                        orElse: () => false),
                    builder: (context, state) {
                      return state.maybeWhen(
                          orElse: () => const SizedBox(
                                height: 270,
                              ),
                          successUserStateResponse: (response) {
                            return Column(
                              children: [
                                const SizedBox(height: 90),
                                GestureDetector(
                                  onTap: _putFile,
                                  child: SizedBox(
                                    width: 120,
                                    height: 120,
                                    child: ValueListenableBuilder<File?>(
                                        valueListenable: _userImage,
                                        builder: (context, value, child) {
                                          return ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(150),
                                            child: value != null
                                                ? Image.file(
                                                    value,
                                                    fit: BoxFit.cover,
                                                  )
                                                : response.images?.isNotEmpty ==
                                                        true
                                                    ? Image.network(
                                                        response.images
                                                                ?.first ??
                                                            '',
                                                        fit: BoxFit.cover,
                                                      )
                                                    : Image.asset(
                                                        Images.emptyAvatar,
                                                        fit: BoxFit.cover,
                                                      ),
                                          );
                                        }),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  response.fullName ?? '',
                                  style: AppTheme.bold(
                                      size: 18, color: AppColors.white),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                              ],
                            );
                          });
                    },
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TabButton(
                          title: LocaleKeys.product_info_personal_info.tr(),
                          selectedIndex: 2,
                          selectedPage: _selectedIndex,
                          icon: Svgs.icProfileRoze,
                          onPressed: () => _changeIndex(2),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: TabButton(
                          title: LocaleKeys.product_info_my_products.tr(),
                          selectedIndex: 1,
                          selectedPage: _selectedIndex,
                          icon: Svgs.icBagRoze,
                          onPressed: () => _changeIndex(1),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                        child: TabButton(
                          title: LocaleKeys.product_info_my_liked.tr(),
                          selectedIndex: 0,
                          selectedPage: _selectedIndex,
                          icon: Svgs.icHeartWhite,
                          onPressed: () => _changeIndex(0),
                        ),
                      )
                    ],
                  ),
                ),
                BlocListener<BusinessCubit, BusinessState>(
                  listener: (context, state) {
                    state.whenOrNull(
                      successPageItemResponse: (pageItemResponse) =>
                          setState(() {}),
                      successPageOrderResponse: (commitedOrdersResponse) =>
                          setState(() {}),
                    );
                  },
                  child: ExpandablePageView(
                    onPageChanged: (index) {
                      if (!mounted) return;
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    controller: _pageController,
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)
                              .copyWith(top: 15, bottom: 15),
                          child: const FavoritesGrid()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12)
                            .copyWith(top: 15, bottom: 15),
                        child: const BasketHistoryGrid(),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 42,
                              ),
                              Text(LocaleKeys.user_info_name.tr(),
                                  style: AppTheme.regular(
                                      size: 12, color: AppColors.textGray)),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 26),
                                child: FormBuilderTextField(
                                  name: 'name',
                                  onSubmitted: (value) => _updateUserInfo(
                                    FirebaseUserInfoPayload(
                                      displayName: value,
                                    ),
                                  ),
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: 'נדרש'),
                                  ]),
                                  controller: _nameController,
                                  style: AppTheme.bold(
                                      size: 20, color: AppColors.textGray),
                                  decoration: InputDecoration(
                                    suffixIcon: SvgPicture.asset(
                                      Svgs.icEditRect,
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    suffixIconConstraints:
                                        const BoxConstraints(),
                                    filled: true,
                                    hintText: 'אדל מזרחי',
                                    fillColor: Colors.transparent,
                                  ),
                                ),
                              ),
                              Text(LocaleKeys.user_info_email.tr(),
                                  style: AppTheme.regular(
                                      size: 12, color: AppColors.textGray)),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 26),
                                child: FormBuilderTextField(
                                  name: 'email',
                                  controller: _emailController,
                                  onSubmitted: (value) => _updateUserInfo(
                                      FirebaseUserInfoPayload(email: value)),
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: 'נדרש'),
                                    FormBuilderValidators.email(
                                        errorText: 'לא תקין')
                                  ]),
                                  style: AppTheme.bold(
                                      size: 20, color: AppColors.textGray),
                                  decoration: InputDecoration(
                                    suffixIcon: SvgPicture.asset(
                                      Svgs.icEditRect,
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    suffixIconConstraints:
                                        const BoxConstraints(),
                                    filled: true,
                                    // hintText: 'mail@mail.com',
                                    fillColor: Colors.transparent,
                                  ),
                                ),
                              ),
                              Text(LocaleKeys.user_info_phone.tr(),
                                  style: AppTheme.regular(
                                      size: 12, color: AppColors.textGray)),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 26),
                                child: FormBuilderTextField(
                                  name: 'phone',
                                  onSubmitted: (value) => _updateUserInfo(
                                      FirebaseUserInfoPayload(
                                          phoneNumber: value)),
                                  controller: _phoneController,
                                  validator: FormBuilderValidators.compose([
                                    FormBuilderValidators.required(
                                        errorText: 'נדרש'),
                                  ]),
                                  style: AppTheme.bold(
                                      size: 20, color: AppColors.textGray),
                                  decoration: InputDecoration(
                                    suffixIcon: SvgPicture.asset(
                                      Svgs.icEditRect,
                                    ),
                                    contentPadding: EdgeInsets.zero,
                                    suffixIconConstraints:
                                        const BoxConstraints(),
                                    filled: true,
                                    // hintText: '0520000000',
                                    fillColor: Colors.transparent,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  FirebaseAuth.instance.signOut();
                                  context.router.pushAndPopUntil(
                                      const SplashScreen(),
                                      predicate: (route) => false);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 27),
                                  child: Text('יציאה מהחשבון',
                                      style: AppTheme.regular(
                                          size: 17, color: AppColors.textGray)),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _showConfirmDialog(),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 24),
                                  child: Text('מחק חשבון',
                                      style: AppTheme.regular(
                                          size: 17, color: AppColors.textGray)),
                                ),
                              ),
                              // Text(LocaleKeys.user_info_address.tr(),
                              //     style: AppTheme.regular(
                              //         size: 12, color: AppColors.textGray)),
                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 26),
                              //   child: FormBuilderTextField(
                              //     name: 'address',
                              //     controller: _addressController,
                              //     style: AppTheme.bold(
                              //         size: 20, color: AppColors.textGray),
                              //     decoration: InputDecoration(
                              //       suffixIcon: SvgPicture.asset(
                              //         Svgs.icEditRect,
                              //       ),
                              //       contentPadding: EdgeInsets.zero,
                              //       suffixIconConstraints: const BoxConstraints(),
                              //       filled: true,
                              //       hintText: 'רחוב מספר 2',
                              //       fillColor: Colors.transparent,
                              //     ),
                              //   ),
                              // ),
                              // Text(LocaleKeys.user_info_credit_card.tr(),
                              //     style: AppTheme.regular(
                              // size: 12, color: AppColors.textGray)),
                              // Padding(
                              //   padding: const EdgeInsets.only(bottom: 26),
                              //   child: FormBuilderTextField(
                              //     name: 'creditCard',
                              //     controller: _creditCardController,
                              //     style: AppTheme.bold(
                              //         size: 20, color: AppColors.textGray),
                              //     decoration: InputDecoration(
                              //       suffixIcon: GestureDetector(
                              //         onTap: () => showDialog(
                              //             context: context,
                              //             barrierColor:
                              //                 Colors.black.withOpacity(0.76),
                              //             builder: (context) => AlertDialog(
                              //                   contentPadding: EdgeInsets.zero,
                              //                   shape: RoundedRectangleBorder(
                              //                       borderRadius:
                              //                           BorderRadius.circular(
                              //                               21)),
                              //                   scrollable: true,
                              //                   content:
                              //                       Builder(builder: (context) {
                              //                     return SizedBox(
                              //                       width: MediaQuery.of(context)
                              //                           .size
                              //                           .width,
                              //                       child: Column(
                              //                         crossAxisAlignment:
                              //                             CrossAxisAlignment
                              //                                 .start,
                              //                         children: [
                              //                           GestureDetector(
                              //                             onTap: () =>
                              //                                 Navigator.pop(
                              //                                     context),
                              //                             child: const Padding(
                              //                               padding:
                              //                                   EdgeInsets.all(
                              //                                       8.0),
                              //                               child: Align(
                              //                                   alignment:
                              //                                       Alignment
                              //                                           .topRight,
                              //                                   child: Icon(
                              //                                     Icons
                              //                                         .close_outlined,
                              //                                     color: Colors
                              //                                         .black,
                              //                                     size: 30,
                              //                                   )),
                              //                             ),
                              //                           ),
                              //                           Padding(
                              //                             padding:
                              //                                 const EdgeInsets
                              //                                         .only(
                              //                                     right: 17,
                              //                                     bottom: 8),
                              //                             child: Row(
                              //                               children: [
                              //                                 SvgPicture.asset(Svgs
                              //                                     .icPlusRounded),
                              //                                 const SizedBox(
                              //                                   width: 13,
                              //                                 ),
                              //                                 Text(
                              //                                   LocaleKeys
                              //                                       .user_info_add_card
                              //                                       .tr(),
                              //                                   style: AppTheme
                              //                                       .regular(
                              //                                     size: 14,
                              //                                   ).copyWith(
                              //                                       decoration:
                              //                                           TextDecoration
                              //                                               .underline),
                              //                                 ),
                              //                               ],
                              //                             ),
                              //                           ),
                              //                           Center(
                              //                             child: Text(
                              //                               LocaleKeys
                              //                                   .user_info_enter_card_number
                              //                                   .tr(),
                              //                               style: AppTheme
                              //                                   .regular(
                              //                                 size: 14,
                              //                               ).copyWith(
                              //                                   decoration:
                              //                                       TextDecoration
                              //                                           .underline),
                              //                             ),
                              //                           ),
                              //                           const SizedBox(
                              //                               height: 10),
                              //                           Padding(
                              //                             padding:
                              //                                 const EdgeInsets
                              //                                         .symmetric(
                              //                                     horizontal: 25),
                              //                             child: Column(
                              //                               children: [
                              //                                 CustomInput(
                              //                                     borderRadius:
                              //                                         10,
                              //                                     controller:
                              //                                         _cardNumberController),
                              //                                 const SizedBox(
                              //                                     height: 17),
                              //                                 Row(
                              //                                   children: [
                              //                                     Flexible(
                              //                                       child: CustomInput(
                              //                                           borderRadius:
                              //                                               10,
                              //                                           label: LocaleKeys
                              //                                               .user_info_expiration_date
                              //                                               .tr(),
                              //                                           controller:
                              //                                               _expYearController),
                              //                                     ),
                              //                                     Padding(
                              //                                       padding: const EdgeInsets
                              //                                                   .symmetric(
                              //                                               horizontal:
                              //                                                   8)
                              //                                           .copyWith(
                              //                                               top:
                              //                                                   12),
                              //                                       child: Text(
                              //                                         '/',
                              //                                         style: AppTheme.semi(
                              //                                             size:
                              //                                                 10,
                              //                                             color: AppColors
                              //                                                 .textGray),
                              //                                       ),
                              //                                     ),
                              //                                     Flexible(
                              //                                       child: CustomInput(
                              //                                           borderRadius:
                              //                                               10,
                              //                                           label: '',
                              //                                           controller:
                              //                                               _expMonthController),
                              //                                     ),
                              //                                     const SizedBox(
                              //                                         width: 24),
                              //                                     Flexible(
                              //                                       child: CustomInput(
                              //                                           borderRadius:
                              //                                               10,
                              //                                           label:
                              //                                               'CVV',
                              //                                           leftAlignment:
                              //                                               true,
                              //                                           controller:
                              //                                               _cvvController),
                              //                                     ),
                              //                                   ],
                              //                                 ),
                              //                                 const SizedBox(
                              //                                     height: 22),
                              //                                 GestureDetector(
                              //                                   child: Container(
                              //                                     padding: const EdgeInsets
                              //                                             .symmetric(
                              //                                         horizontal:
                              //                                             44,
                              //                                         vertical:
                              //                                             16),
                              //                                     decoration: BoxDecoration(
                              //                                         color: AppColors
                              //                                             .darkBlueLight,
                              //                                         borderRadius:
                              //                                             BorderRadius.circular(
                              //                                                 25),
                              //                                         boxShadow: [
                              //                                           BoxShadow(
                              //                                             color: Colors
                              //                                                 .black
                              //                                                 .withOpacity(.16),
                              //                                             blurRadius:
                              //                                                 3,
                              //                                             offset: const Offset(
                              //                                                 0,
                              //                                                 1),
                              //                                           ),
                              //                                         ]),
                              //                                     child: Text(
                              //                                         LocaleKeys
                              //                                             .onboard_connect_btn
                              //                                             .tr(),
                              //                                         style: AppTheme.semi(
                              //                                             size:
                              //                                                 16,
                              //                                             color: AppColors
                              //                                                 .white)),
                              //                                   ),
                              //                                 ),
                              //                               ],
                              //                             ),
                              //                           ),
                              //                           const SizedBox(
                              //                               height: 30),
                              //                         ],
                              //                       ),
                              //                     );
                              //                   }),
                              //                 )),
                              //         child: SvgPicture.asset(
                              //           Svgs.icEditRect,
                              //         ),
                              //       ),
                              //       contentPadding: EdgeInsets.zero,
                              //       suffixIconConstraints: const BoxConstraints(),
                              //       filled: true,
                              //       hintText: '********** 975',
                              //       fillColor: Colors.transparent,
                              //     ),
                              //   ),
                              // ),
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
            ),
          ),
        ),
      ),
    );
  }
}

class TabButton extends StatelessWidget {
  final String title;
  final int selectedIndex;
  final int selectedPage;
  final String icon;
  final VoidCallback onPressed;
  const TabButton(
      {Key? key,
      required this.title,
      required this.selectedIndex,
      required this.selectedPage,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(milliseconds: 1000),
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
            color: selectedPage == selectedIndex
                ? AppColors.roze
                : AppColors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(color: AppColors.roze),
            boxShadow: selectedPage == selectedIndex
                ? [
                    BoxShadow(
                      color: AppColors.text.withOpacity(0.16),
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ]
                : null),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              color: selectedPage == selectedIndex
                  ? AppColors.white
                  : AppColors.roze,
            ),
            const SizedBox(
              width: 6,
            ),
            Text(title,
                style: AppTheme.regular(
                    size: 11,
                    color: selectedPage == selectedIndex
                        ? AppColors.white
                        : AppColors.roze)),
          ],
        ),
      ),
    );
  }
}

class FavoritesGrid extends StatefulWidget {
  const FavoritesGrid({Key? key}) : super(key: key);

  @override
  State<FavoritesGrid> createState() => _FavoritesGridState();
}

class _FavoritesGridState extends State<FavoritesGrid> {
  final PagingController<int, ItemResponse> _pageController =
      PagingController<int, ItemResponse>(firstPageKey: 0);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getFavoriteItems(
        pageOrder: SortType.ASC.name, size: 10, page: pageKey);
  }

  @override
  void initState() {
    super.initState();
    _pageController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successPageItemResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              if (pageBusinessResponse.last == true) {
                _pageController
                    .appendLastPage(pageBusinessResponse.content ?? []);
              } else {
                _pageController.appendPage(pageBusinessResponse.content ?? [],
                    (pageBusinessResponse.pageable?.pageNumber ?? 0) + 1);
              }
            }
          },
        );
      },
      child: PagedGridView(
        pagingController: _pageController,
        primary: false,
        shrinkWrap: true,
        builderDelegate: PagedChildBuilderDelegate<ItemResponse>(
          itemBuilder: (context, item, index) => AddEmptyProductContainer(
            item: item,
            key: Key(item.id.toString()),
            type: '1',
            title: item.name ?? '',
            desc: item.description?.full ?? '',
            price: item.price?.toStringAsFixed(2) ?? '',
            onNeedRefresh: () => _pageController.refresh(),
            image:
                item.imageUrls?.isEmpty == true ? null : item.imageUrls?.first,
          ),
          firstPageErrorIndicatorBuilder: (context) => const Center(
            child: Text('Error'),
          ),
          newPageProgressIndicatorBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
          noItemsFoundIndicatorBuilder: (context) => const Center(
            child: Text('No items found'),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 34,
        ),
      ),
    );
  }
}

class BasketHistoryGrid extends StatefulWidget {
  const BasketHistoryGrid({Key? key}) : super(key: key);

  @override
  State<BasketHistoryGrid> createState() => _BasketHistoryGridState();
}

class _BasketHistoryGridState extends State<BasketHistoryGrid> {
  final PagingController<int, ItemResponse> _pageController =
      PagingController<int, ItemResponse>(firstPageKey: 0);

  void _fetchPage(int pageKey) async {
    await context.read<BusinessCubit>().getAllUserOrders(
        pageOrder: SortType.ASC.name,
        size: 10,
        page: pageKey,
        param: 'creationDate');
  }

  @override
  void initState() {
    super.initState();
    _pageController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BusinessCubit, BusinessState>(
      listener: (context, state) {
        state.whenOrNull(
          successPageOrderResponse: (pageBusinessResponse) {
            if (pageBusinessResponse.empty == true) {
              _pageController.appendLastPage([]);
            } else {
              var items = <ItemResponse>[];
              pageBusinessResponse.content?.forEach((element) {
                items.addAll(element.items ?? []);
              });
              if (pageBusinessResponse.last == true) {
                _pageController.appendLastPage(items);
              } else {
                _pageController.appendPage(items,
                    (pageBusinessResponse.pageable?.pageNumber ?? 0) + 1);
              }
            }
            // _pageController.refresh();
          },
        );
      },
      child: PagedGridView(
        pagingController: _pageController,
        primary: false,
        shrinkWrap: true,
        builderDelegate: PagedChildBuilderDelegate<ItemResponse>(
          itemBuilder: (context, item, index) => AddEmptyProductContainer(
            item: item,
            key: Key(item.id.toString()),
            type: '2',
            onNeedRefresh: () => _pageController.refresh(),
            title: item.name ?? '',
            desc: item.description?.full ?? '',
            price: item.price?.toStringAsFixed(2) ?? '',
            image:
                item.imageUrls?.isEmpty == true ? null : item.imageUrls?.first,
          ),
          firstPageErrorIndicatorBuilder: (context) => const Center(
            child: Text('Error'),
          ),
          newPageProgressIndicatorBuilder: (context) => const Center(
            child: CircularProgressIndicator(),
          ),
          noItemsFoundIndicatorBuilder: (context) => const Center(
            child: Text('No items found'),
          ),
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 34,
        ),
      ),
    );
  }
}

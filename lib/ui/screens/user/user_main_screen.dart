import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upnati/logic/blocs/user/user_cubit.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/add_empty_product_container.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_navigator_bar.dart';
import 'package:upnati/ui/widgets/expandable_page_view.dart';
import 'package:upnati/ui/widgets/main_container.dart';
import 'package:upnati/ui/widgets/side_bar.dart';

class UserMainScreen extends StatefulWidget with AutoRouteWrapper {
  const UserMainScreen({Key? key}) : super(key: key);

  @override
  State<UserMainScreen> createState() => _ProductMainScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserCubit>(
        create: (context) => GetIt.I<UserCubit>(), child: this);
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

  void _changeIndex(int index) {
    if (!mounted) return;
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
    context.read<UserCubit>().getUserDetails();
  }

  @override
  void dispose() {
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

  @override
  Widget build(BuildContext context) {
    return SideBarWrapper(
      child: BlocListener<UserCubit, UserState>(
        listener: (context, state) {
          state.whenOrNull(errorUserState: (err) {
            print(err);
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
                Builder(builder: (context) {
                  return ExpandablePageView(
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
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  type: '1',
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.butterfly,
                                )),
                                SizedBox(
                                  width: 44,
                                ),
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.panda,
                                  type: '1',
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  type: '1',
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.butterfly,
                                )),
                                SizedBox(
                                  width: 44,
                                ),
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.panda,
                                  type: '1',
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: const [
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  type: '1',
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.butterfly,
                                )),
                                SizedBox(
                                  width: 44,
                                ),
                                Expanded(
                                    child: AddEmptyProductContainer(
                                  title: 'אייפון 13',
                                  desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                                  price: '120',
                                  image: Images.panda,
                                  type: '1',
                                )),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12)
                            .copyWith(top: 15, bottom: 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                                child: AddEmptyProductContainer(
                              type: '2',
                              title: 'אייפון 13',
                              desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                              price: '120',
                              image: Images.chico,
                            )),
                            SizedBox(
                              width: 44,
                            ),
                            Expanded(
                                child: AddEmptyProductContainer(
                              title: 'אייפון 13',
                              desc: 'מגהץ דור 3 4 מצבים \nיכולות  חדשניות',
                              price: '120',
                              image: Images.cubik,
                              type: '2',
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
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
                                controller: _nameController,
                                style: AppTheme.bold(
                                    size: 20, color: AppColors.textGray),
                                decoration: InputDecoration(
                                  suffixIcon: SvgPicture.asset(
                                    Svgs.icEditRect,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  suffixIconConstraints: const BoxConstraints(),
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
                                style: AppTheme.bold(
                                    size: 20, color: AppColors.textGray),
                                decoration: InputDecoration(
                                  suffixIcon: SvgPicture.asset(
                                    Svgs.icEditRect,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  suffixIconConstraints: const BoxConstraints(),
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
                                controller: _phoneController,
                                style: AppTheme.bold(
                                    size: 20, color: AppColors.textGray),
                                decoration: InputDecoration(
                                  suffixIcon: SvgPicture.asset(
                                    Svgs.icEditRect,
                                  ),
                                  contentPadding: EdgeInsets.zero,
                                  suffixIconConstraints: const BoxConstraints(),
                                  filled: true,
                                  // hintText: '0520000000',
                                  fillColor: Colors.transparent,
                                ),
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
                    ],
                  );
                }),
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

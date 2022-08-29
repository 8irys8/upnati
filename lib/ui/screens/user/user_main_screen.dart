import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/custom_input.dart';

class UserMainScreen extends StatefulWidget {
  const UserMainScreen({Key? key}) : super(key: key);

  @override
  State<UserMainScreen> createState() => _UserMainScreenState();
}

class _UserMainScreenState extends State<UserMainScreen> {
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _cardNumberController = TextEditingController();
  final _postalCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              LocaleKeys.user_info_my_account.tr(),
              style: AppTheme.bold(size: 18),
            ),
            leading: Column(
              children: [
                Transform.translate(
                    offset: const Offset(-8, 0),
                    child: Text('1',
                        style: AppTheme.bold(size: 10, color: AppColors.roze))),
                SvgPicture.asset(
                  Svgs.icRing,
                  height: 18,
                  fit: BoxFit.scaleDown,
                ),
              ],
            )),
        backgroundColor: AppColors.rozeLight,
        body: SingleChildScrollView(
          child: SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 39,
              ),
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(300),
                    child: Image.asset(
                      Images.shelfImg,
                      fit: BoxFit.fill,
                      height: 190,
                    )),
              ),
              const SizedBox(
                height: 17,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('אדל  מזרחי',
                        style: AppTheme.bold(
                          size: 18,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset(
                      Svgs.icEditGray,
                      height: 12,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      Svgs.icRedHeart,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(LocaleKeys.user_info_details_liked.tr(),
                        style: AppTheme.regular(
                          size: 14,
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.butterfly),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.panda),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.cubik),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.chico),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.icecream),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.kelley),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.minion),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12, left: 12),
                        child: _ImageTile(image: Images.shelfImg),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Text(LocaleKeys.user_info_details_purchased.tr(),
                    style: AppTheme.regular(
                      size: 14,
                    )),
              ),
              const SizedBox(
                height: 11,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.butterfly),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.panda),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.cubik),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.chico),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.icecream),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.kelley),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 12,
                        ),
                        child: _ImageTile(image: Images.minion),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 12, left: 12),
                        child: _ImageTile(image: Images.shelfImg),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 29,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 37),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.user_info_shipping_address.tr(),
                      style: AppTheme.regular(
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomInput(
                      controller: _nameController,
                      hint: LocaleKeys.user_info_name_hint.tr(),
                      hintStyle: AppTheme.regular(
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomInput(
                      controller: _addressController,
                      hint: LocaleKeys.user_info_address_hint.tr(),
                      hintStyle: AppTheme.regular(
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    CustomInput(
                      controller: _postalCodeController,
                      hint: LocaleKeys.user_info_postal_code_hint.tr(),
                      hintStyle: AppTheme.regular(
                        size: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 27,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          LocaleKeys.user_info_credit_card.tr(),
                          style: AppTheme.regular(
                            size: 14,
                          ),
                        ),
                        Text(LocaleKeys.user_info_edited.tr(),
                            style: AppTheme.regular(
                              size: 14,
                            ).copyWith(decoration: TextDecoration.underline))
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    CustomInput(
                        controller: _cardNumberController,
                        hint: '**** **** **** 1234',
                        hintStyle: AppTheme.regular(size: 14)),
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ),
              )
            ],
          )),
        ));
  }
}

class _ImageTile extends StatelessWidget {
  final String image;
  const _ImageTile({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            width: 2,
            color: AppColors.white,
          ),
        ),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              Images.butterfly,
              fit: BoxFit.cover,
              height: 94,
              // width: 110,
            )));
  }
}

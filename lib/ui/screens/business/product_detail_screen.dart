import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as easy_localization;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:upnati/core/config/enums.dart';
import 'package:upnati/core/exceptions/app_exceptions.dart';
import 'package:upnati/logic/blocs/business/business_cubit.dart';
import 'package:upnati/logic/models/business/image_url_payload.dart';
import 'package:upnati/logic/models/business/item_form.dart';
import 'package:upnati/logic/models/business/item_response.dart';
import 'package:upnati/logic/models/description.dart';
import 'package:upnati/logic/models/local_description.dart';
import 'package:upnati/resources/resource.dart';
import 'package:upnati/resources/resources.dart';
import 'package:upnati/ui/widgets/checked_steps_radio.dart';
import 'package:upnati/ui/widgets/custom_button.dart';
import 'package:upnati/ui/widgets/custom_checkbox.dart';
import 'package:upnati/ui/widgets/custom_dropdown.dart';
import 'package:upnati/ui/widgets/custom_input.dart';
import 'package:upnati/ui/widgets/custom_radio.dart';
import 'package:upnati/ui/widgets/icon_box.dart';
import 'package:video_player/video_player.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class ProduceDetailScreen extends StatefulWidget with AutoRouteWrapper {
  final ItemResponse? item;
  const ProduceDetailScreen({Key? key, this.item}) : super(key: key);

  @override
  State<ProduceDetailScreen> createState() => _ProduceDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
        create: (context) => GetIt.I<BusinessCubit>(), child: this);
  }
}

class _ProduceDetailScreenState extends State<ProduceDetailScreen> {
  final nameController = TextEditingController();
  final descController = TextEditingController();
  final priceController = TextEditingController();
  final quantityController = TextEditingController();
  final discountPrice = TextEditingController();
  final discountPercent = TextEditingController();
  final deliveryPrice = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _selectedCategory;
  final ValueNotifier<String?> _selectedDeliveryType = ValueNotifier(null);
  final ValueNotifier<String?> _discountType = ValueNotifier(null);
  final ValueNotifier<bool> _freeDelivery = ValueNotifier(false);
  List<File> _itemImage = [];
  List<File> _itemVideo = [];
  VideoPlayerController? _controller;
  List<String> _uploadedImages = [];
  List<String> _uploadedVideo = [];
  bool _isUploadingImage = true;
  bool _isUploadingVideo = true;
  List<String> _remoteImage = [];
  List<String> _remoteVideo = [];

  @override
  void initState() {
    super.initState();
    context.read<BusinessCubit>().getItemCategory();
    if (widget.item != null) {
      nameController.text = widget.item?.name ?? '';
      descController.text = widget.item?.description?.full ?? '';
      priceController.text = widget.item?.price?.toStringAsFixed(2) ?? '';
      quantityController.text = widget.item?.inStock?.toString() ?? '';
      _selectedCategory = widget.item?.itemCategory;
      _remoteImage = [...widget.item?.imageUrls ?? []];
      _remoteVideo = [...widget.item?.videoUrls ?? []];
    }
  }

  void _uploadImage() {
    _isUploadingImage = true;
    _isUploadingVideo = true;
    if (_itemImage.isNotEmpty) {
      _isUploadingImage = false;
      context.read<BusinessCubit>().getUploadImages(files: _itemImage);
    }

    if (_itemVideo.isNotEmpty) {
      _isUploadingVideo = false;
      context.read<BusinessCubit>().getUploadVideos(files: _itemVideo);
    }
  }

  void _createItem() {
    if (!_isUploadingImage || !_isUploadingVideo) return;
    var newItem = ItemForm(
      currency: BankCurrency.NIS.name,
      imageUrls: _uploadedImages,
      videoUrls: _uploadedVideo,
      delivery: DeliveryReq(
        price: _freeDelivery.value ? 0 : double.parse(deliveryPrice.text),
        // preparationTime: null,
        // deliveryTime: '1',
      ),
      inStock: int.tryParse(quantityController.text),
      singleValuePriceModifiers: [
        SingleValuePriceModifierForm(
            value: _discountType.value == PriceModifier.spm_ds.name
                ? double.tryParse(discountPrice.text)
                : double.tryParse(discountPercent.text),
            type: _discountType.value ?? '')
      ],
      name: [
        LocalName(locale: LocaleType.he.name, name: nameController.text),
      ],
      itemCategory: _selectedCategory,
      description: [
        LocalDescription(
          locale: LocaleType.he.name,
          description: Description(full: descController.text),
        )
      ],
      itemPrice: double.tryParse(priceController.text),
    );
    if (_formKey.currentState!.validate()) {
      if (widget.item == null) {
        context.read<BusinessCubit>().createNewItem(newItem);
      } else {
        context
            .read<BusinessCubit>()
            .updateItem(newItem.copyWith(id: widget.item?.id));
      }
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('בבקשה מלא את כל השדות')));
    }
  }

  void _putFile() async {
    // _uploadedImg = false;
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
                          setState(() {
                            _itemImage.add(File(image.path));
                          });
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Camera')),
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker().pickMultiImage();
                        if (image.isNotEmpty) {
                          setState(() {
                            _itemImage.addAll(image.map((e) => File(e.path)));
                          });
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Gallery')),
                ],
              ),
            ));
  }

  void _putVideo() async {
    // _uploadedImg = false;
    var result = await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Choose Video'),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickVideo(source: ImageSource.camera);
                        if (image != null) {
                          setState(() {
                            _itemVideo = [File(image.path)];
                            _controller = VideoPlayerController.file(
                              _itemVideo[0],
                              // ignore: prefer-async-await
                            )..initialize().then((_) {
                                if (!mounted) return;
                                // ignore: no-empty-block
                                setState(() {});
                              });
                          });
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Camera')),
                  TextButton(
                      onPressed: () async {
                        var image = await ImagePicker()
                            .pickVideo(source: ImageSource.gallery);
                        if (image != null) {
                          setState(() {
                            _itemVideo = [File(image.path)];
                            _controller = VideoPlayerController.file(
                              _itemVideo[0],
                              // ignore: prefer-async-await
                            )..initialize().then((_) {
                                if (!mounted) return;
                                // ignore: no-empty-block
                                setState(() {});
                              });
                          });
                          Navigator.of(context).pop(true);
                        } else {
                          Navigator.of(context).pop(false);
                        }
                      },
                      child: const Text('Gallery')),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        appBarTheme: const AppBarTheme(
          color: AppColors.background,
          elevation: 0,
          iconTheme: IconThemeData(
            color: AppColors.text,
          ),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => context.router.pop(),
                icon: const Icon(Icons.chevron_right_outlined, size: 40))
          ],
          title: Text(
            LocaleKeys.add_product_title.tr(),
            style: AppTheme.regular(color: AppColors.text),
          ),
          centerTitle: true,
        ),
        body: BlocListener<BusinessCubit, BusinessState>(
          listener: (context, state) {
            state.whenOrNull(
              successItemResponse: (item) {
                Navigator.of(context).pop(item);
              },
              error: (error) {
                if (error.error is AppExceptions) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(error.message ?? ''),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Something went wrong'),
                    ),
                  );
                }
              },
              successFiles: (files) {
                _isUploadingImage = true;
                _uploadedImages = files.urls ?? [];
                _createItem();
              },
              successVideo: (video) {
                _isUploadingVideo = true;
                _uploadedVideo = video.urls ?? [];
                _createItem();
              },
            );
          },
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 37.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            LocaleKeys.add_product_product_area.tr(),
                            style: AppTheme.regular(
                                size: 12, color: AppColors.textGray),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomInput(
                                color: Colors.white,
                                label: LocaleKeys.add_product_name.tr(),
                                controller: nameController,
                                validator: FormBuilderValidators.required(
                                    errorText: 'נדרש'),
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              BlocBuilder<BusinessCubit, BusinessState>(
                                buildWhen: (previous, current) =>
                                    current.maybeWhen(
                                        successBusinessMap: (_) => true,
                                        loading: () => true,
                                        orElse: () => false),
                                builder: (context, state) {
                                  return state.maybeWhen(
                                      orElse: () => const Center(
                                            child: SpinKitCircle(
                                              color: AppColors.darkBlue,
                                            ),
                                          ),
                                      successBusinessMap: (mapInfoResponse) =>
                                          CustomDropdown(
                                            initialValue: _selectedCategory,
                                            onChanged: (value) =>
                                                _selectedCategory = value,
                                            color: Colors.white,
                                            validator:
                                                FormBuilderValidators.required(
                                                    errorText: 'נדרש'),
                                            label: LocaleKeys
                                                .add_product_category
                                                .tr(),
                                            hint: LocaleKeys
                                                .add_product_dropdown_help
                                                .tr(),
                                            items: mapInfoResponse
                                                .map((e) => Item(
                                                    name: e?.name ?? '',
                                                    value: e?.name ?? ''))
                                                .toList(),
                                          ));
                                },
                              ),
                              const SizedBox(
                                height: 29,
                              ),
                              Text(
                                LocaleKeys.add_product_pdoduct_type.tr(),
                                style: AppTheme.regular(
                                  size: 12,
                                  color: AppColors.textGray,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              ValueListenableBuilder(
                                  valueListenable: _selectedDeliveryType,
                                  builder: (context, value, child) {
                                    return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () =>
                                              _selectedDeliveryType.value = '1',
                                          child: CustomRadio(
                                            label: LocaleKeys
                                                .add_product_product_type_3
                                                .tr(),
                                            ismultiLine: true,
                                            value: value == '1',
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () =>
                                              _selectedDeliveryType.value = '2',
                                          child: CustomRadio(
                                            label: LocaleKeys
                                                .add_product_product_type_2
                                                .tr(),
                                            value: value == '2',
                                            ismultiLine: true,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () =>
                                              _selectedDeliveryType.value = '3',
                                          child: CustomRadio(
                                            label: LocaleKeys
                                                .add_product_product_type_1
                                                .tr(),
                                            value: value == '3',
                                            ismultiLine: true,
                                          ),
                                        ),
                                      ],
                                    );
                                  }),
                              const SizedBox(
                                height: 7,
                              ),
                              CustomInput(
                                color: Colors.white,
                                isMultiline: true,
                                borderRadius: 5,
                                validator: FormBuilderValidators.required(
                                    errorText: 'נדרש'),
                                controller: descController,
                                label: LocaleKeys.add_product_product_desc.tr(),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                LocaleKeys.add_product_product_photo.tr(),
                                style: AppTheme.regular(
                                  size: 12,
                                  color: AppColors.textGray,
                                ),
                              ),
                              Text(
                                LocaleKeys.add_product_product_photo_desc.tr(),
                                style: AppTheme.regular(
                                  size: 10,
                                  color: AppColors.textGray,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  LocaleKeys.add_product_product_first_photo
                                      .tr(),
                                  textAlign: TextAlign.left,
                                  style: AppTheme.regular(
                                    size: 10,
                                    color: AppColors.textGray,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Directionality(
                                textDirection: TextDirection.ltr,
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: 12,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 17,
                                          childAspectRatio: 0.9),
                                  itemBuilder: (context, index) {
                                    return _remoteImage.length > index
                                        ? GestureDetector(
                                            onTap: () {
                                              var cubit =
                                                  context.read<BusinessCubit>();
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                      'האם אתה בטוח שברצונך למחוק את התמונה?',
                                                    ),
                                                    content: const Text(
                                                      'לחץ על "כן" כדי למחוק את התמונה',
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text(
                                                          'לא',
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          cubit.deleteItemImage(
                                                              id: widget.item
                                                                      ?.id ??
                                                                  '',
                                                              payload: ImageUrlPayload(
                                                                  url: _remoteImage[
                                                                      index]));
                                                          setState(() {
                                                            _remoteImage
                                                                .removeAt(
                                                                    index);
                                                          });
                                                          // Navigator.of(context)
                                                          //     .pop();
                                                        },
                                                        child: const Text(
                                                          'כן',
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Image.network(
                                                _remoteImage[index],
                                                fit: BoxFit.cover,
                                                // height: 60,
                                              ),
                                            ),
                                          )
                                        : _itemImage.length >
                                                index - _remoteImage.length
                                            ? GestureDetector(
                                                onTap: () {
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        title: const Text(
                                                          'האם אתה בטוח שברצונך למחוק את התמונה?',
                                                        ),
                                                        content: const Text(
                                                          'לחץ על "כן" כדי למחוק את התמונה',
                                                        ),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: const Text(
                                                              'לא',
                                                            ),
                                                          ),
                                                          TextButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                _itemImage.removeAt(_itemImage
                                                                        .length -
                                                                    (index -
                                                                        (_remoteImage.length -
                                                                            1)));
                                                              });
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child: const Text(
                                                              'כן',
                                                            ),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  child: Image.file(
                                                    _itemImage[_itemImage
                                                            .length -
                                                        (index -
                                                            (_remoteImage
                                                                    .length -
                                                                1))],
                                                    fit: BoxFit.cover,
                                                    // height: 60,
                                                  ),
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () => _putFile(),
                                                child: IconBox(
                                                  icon: SvgPicture.asset(
                                                    Svgs.icCamera,
                                                    color: index == 0
                                                        ? AppColors.text
                                                        : AppColors.text
                                                            .withOpacity(0.14),
                                                  ),
                                                  color: index == 0
                                                      ? AppColors.text
                                                      : null,
                                                  text: LocaleKeys
                                                      .add_product_camera_desc
                                                      .tr(),
                                                ),
                                              );
                                  },
                                ),
                              ),
                              const SizedBox(
                                height: 17,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(11),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: AppColors.gray.withOpacity(.36),
                                width: 0.5,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  LocaleKeys.add_product_product_video.tr(),
                                  style: AppTheme.regular(
                                      size: 14, color: AppColors.textGray),
                                ),
                                Text(
                                  LocaleKeys.add_product_product_video_desc
                                      .tr(),
                                  style: AppTheme.regular(
                                      size: 14, color: AppColors.textGray),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Center(
                                  child: SizedBox(
                                    width: 161,
                                    height: 131,
                                    child: _itemVideo.isEmpty
                                        ? GestureDetector(
                                            onTap: () => _putVideo(),
                                            child: IconBox(
                                              // color: AppColors.text,
                                              icon: SvgPicture.asset(
                                                Svgs.icVideo,
                                              ),
                                              text: LocaleKeys
                                                  .add_product_video_camera_desc
                                                  .tr(),
                                            ),
                                          )
                                        : GestureDetector(
                                            onTap: () {
                                              showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    title: const Text(
                                                      'האם אתה בטוח שברצונך למחוק את הסרטון?',
                                                    ),
                                                    content: const Text(
                                                      'לחץ על "כן" כדי למחוק את הסרטון',
                                                    ),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text(
                                                          'לא',
                                                        ),
                                                      ),
                                                      TextButton(
                                                        onPressed: () {
                                                          setState(() {
                                                            _itemVideo.clear();
                                                          });
                                                          Navigator.of(context)
                                                              .pop();
                                                        },
                                                        child: const Text(
                                                          'כן',
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: _controller == null
                                                  ? const SpinKitCircle(
                                                      color: AppColors.darkBlue,
                                                    )
                                                  : VideoPlayer(_controller!),
                                            ),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(11),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: AppColors.gray.withOpacity(.36),
                                width: 0.5,
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 3,
                                      child: CustomInput(
                                        controller: priceController,
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required(
                                              errorText: 'נדרש'),
                                          FormBuilderValidators.numeric(
                                              errorText: 'מספרים בלבד'),
                                        ]),
                                        label:
                                            LocaleKeys.add_product_price.tr(),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 13,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: CustomInput(
                                        controller: quantityController,
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required(
                                              errorText: 'נדרש'),
                                          FormBuilderValidators.numeric(
                                              errorText: 'מספרים בלבד'),
                                        ]),
                                        label:
                                            LocaleKeys.add_product_count.tr(),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                ValueListenableBuilder<String?>(
                                    valueListenable: _discountType,
                                    builder: (context, value, child) {
                                      return Row(
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () => _discountType
                                                          .value =
                                                      PriceModifier.spm_dp.name,
                                                  child: CustomRadio(
                                                    label: LocaleKeys
                                                        .add_product_discount
                                                        .tr(),
                                                    value: value ==
                                                        PriceModifier
                                                            .spm_dp.name,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                CustomInput(
                                                  controller: discountPercent,
                                                  enabled: value ==
                                                      PriceModifier.spm_dp.name,
                                                  validator: value ==
                                                          PriceModifier
                                                              .spm_dp.name
                                                      ? FormBuilderValidators
                                                          .compose([
                                                          FormBuilderValidators
                                                              .required(
                                                                  errorText:
                                                                      'נדרש'),
                                                          FormBuilderValidators
                                                              .numeric(
                                                                  errorText:
                                                                      'מספרים בלבד'),
                                                        ])
                                                      : null,
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 13,
                                          ),
                                          Expanded(
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () => _discountType
                                                          .value =
                                                      PriceModifier.spm_ds.name,
                                                  child: CustomRadio(
                                                    label: LocaleKeys
                                                        .add_product_inPrice
                                                        .tr(),
                                                    value: value ==
                                                        PriceModifier
                                                            .spm_ds.name,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 4,
                                                ),
                                                CustomInput(
                                                    controller: discountPrice,
                                                    enabled: value ==
                                                        PriceModifier
                                                            .spm_ds.name,
                                                    validator: value ==
                                                            PriceModifier
                                                                .spm_ds.name
                                                        ? FormBuilderValidators
                                                            .compose([
                                                            FormBuilderValidators
                                                                .required(
                                                                    errorText:
                                                                        'נדרש'),
                                                            FormBuilderValidators
                                                                .numeric(
                                                                    errorText:
                                                                        'מספרים בלבד'),
                                                          ])
                                                        : null),
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                        ],
                                      );
                                    }),
                                const SizedBox(
                                  height: 6,
                                ),
                                CustomCheckbox(
                                  label: LocaleKeys.add_product_for_all_in_store
                                      .tr(),
                                  value: false,
                                  onTap: () => {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 11,
                          ),
                          Container(
                            padding: const EdgeInsets.all(11),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                color: AppColors.gray.withOpacity(.36),
                                width: 0.5,
                              ),
                            ),
                            child: Column(
                              children: [
                                CustomDropdown(
                                  items: [],
                                  // validator: FormBuilderValidators.compose([
                                  //   FormBuilderValidators.required(
                                  //       errorText: 'נדרש'),
                                  // ]),
                                  label: LocaleKeys.add_product_delivery_pending
                                      .tr(),
                                  hint: LocaleKeys
                                      .add_product_delivery_pending_desc
                                      .tr(),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                CustomDropdown(
                                  // validator: FormBuilderValidators.compose([
                                  //   FormBuilderValidators.required(
                                  //       errorText: 'נדרש'),
                                  // ]),
                                  items: [],
                                  label: LocaleKeys.add_product_delivery.tr(),
                                  hint:
                                      LocaleKeys.add_product_delivery_desc.tr(),
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: ValueListenableBuilder<bool>(
                                          valueListenable: _freeDelivery,
                                          builder: (context, value, child) {
                                            return CustomInput(
                                              controller: deliveryPrice,
                                              enabled: !value,
                                              validator: value
                                                  ? null
                                                  : FormBuilderValidators
                                                      .compose([
                                                      FormBuilderValidators
                                                          .required(
                                                              errorText:
                                                                  'נדרש'),
                                                      FormBuilderValidators
                                                          .numeric(
                                                              errorText:
                                                                  'מספרים בלבד'),
                                                    ]),
                                              label: LocaleKeys
                                                  .add_product_delivery_price
                                                  .tr(),
                                            );
                                          }),
                                    ),
                                    const Spacer(
                                      flex: 2,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 11,
                                ),
                                ValueListenableBuilder<bool>(
                                    valueListenable: _freeDelivery,
                                    builder: (context, value, child) {
                                      return CustomCheckbox(
                                        label: LocaleKeys
                                            .add_product_delivery_free
                                            .tr(),
                                        value: value,
                                        onTap: () => _freeDelivery.value =
                                            !_freeDelivery.value,
                                      );
                                    }),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 19,
                          ),
                          // Row(
                          //   children: [
                          //     Expanded(
                          //       flex: 4,
                          //       child: CustomButton(
                          //         title: LocaleKeys.add_product_save_btn.tr(),
                          //         color: AppColors.darkBlue,
                          //         onPressed: () => context.router.pop(),
                          //       ),
                          //     ),
                          //     const SizedBox(
                          //       width: 6,
                          //     ),
                          //     Expanded(
                          //       flex: 1,
                          //       child: CustomButton(
                          //         color: AppColors.white,
                          //         textColor: AppColors.text,
                          //         title: LocaleKeys.add_product_cancel_btn.tr(),
                          // onPressed: () => context.router.pop(),
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(
                          //   height: 60,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                const CheckedStepsRadio(
                  secondStep: true,
                ),
                BlocBuilder<BusinessCubit, BusinessState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 37.0)
                            .copyWith(top: 11, bottom: 24),
                        child: CustomButton(
                          onPressed: () => _uploadImage(),
                          title: LocaleKeys.market_screen_save_btn.tr(),
                          color: AppColors.darkBlue,
                        ),
                      ),
                      loading: () => const Center(
                        child: SpinKitCircle(
                          color: AppColors.darkBlue,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_impl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemImpl _$$_ItemImplFromJson(Map<String, dynamic> json) => _$_ItemImpl(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      name: (json['name'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, NameLocalData.fromJson(e as Map<String, dynamic>)),
      ),
      description: (json['description'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, DescriptionLocalData.fromJson(e as Map<String, dynamic>)),
      ),
      deliveryOptions: (json['deliveryOptions'] as List<dynamic>?)
          ?.map((e) => DeliveryOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrls: (json['videoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      characteristicsMap:
          (json['characteristicsMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      itemCategory: json['itemCategory'] as String?,
      refCode: json['refCode'] as String?,
      currency: json['currency'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      deliveryPrice: (json['deliveryPrice'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      discountPercents: json['discountPercents'] as int?,
      inStock: json['inStock'] as int?,
      singleValuePriceModifiers:
          (json['singleValuePriceModifiers'] as List<dynamic>?)
              ?.map((e) =>
                  SingleValuePriceModifier.fromJson(e as Map<String, dynamic>))
              .toList(),
      dynamicValues: (json['dynamicValues'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      itemType: json['itemType'] as String?,
      stock: json['stock'] as int?,
      allImages: (json['allImages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allVideo: (json['allVideo'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deliveryTime: json['deliveryTime'] as String?,
      deliveryPreparationTime: json['deliveryPreparationTime'] as String?,
      stockConfigured: json['stockConfigured'] as bool?,
      oldTotal: (json['oldTotal'] as num?)?.toDouble(),
      image: json['image'] as String?,
      video: json['video'] as String?,
    );

Map<String, dynamic> _$$_ItemImplToJson(_$_ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name?.map((k, e) => MapEntry(k, e.toJson())),
      'description':
          instance.description?.map((k, e) => MapEntry(k, e.toJson())),
      'deliveryOptions':
          instance.deliveryOptions?.map((e) => e.toJson()).toList(),
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
      'characteristicsMap': instance.characteristicsMap,
      'itemCategory': instance.itemCategory,
      'refCode': instance.refCode,
      'currency': instance.currency,
      'price': instance.price,
      'deliveryPrice': instance.deliveryPrice,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'inStock': instance.inStock,
      'singleValuePriceModifiers':
          instance.singleValuePriceModifiers?.map((e) => e.toJson()).toList(),
      'dynamicValues': instance.dynamicValues,
      'itemType': instance.itemType,
      'stock': instance.stock,
      'allImages': instance.allImages,
      'allVideo': instance.allVideo,
      'deliveryTime': instance.deliveryTime,
      'deliveryPreparationTime': instance.deliveryPreparationTime,
      'stockConfigured': instance.stockConfigured,
      'oldTotal': instance.oldTotal,
      'image': instance.image,
      'video': instance.video,
    };

_$_NameLocalData _$$_NameLocalDataFromJson(Map<String, dynamic> json) =>
    _$_NameLocalData(
      upstoreLocale: json['upstoreLocale'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_NameLocalDataToJson(_$_NameLocalData instance) =>
    <String, dynamic>{
      'upstoreLocale': instance.upstoreLocale,
      'name': instance.name,
    };

_$_DescriptionLocalData _$$_DescriptionLocalDataFromJson(
        Map<String, dynamic> json) =>
    _$_DescriptionLocalData(
      upstoreLocale: json['upstoreLocale'] as String,
      description:
          Description.fromJson(json['description'] as Map<String, dynamic>),
      full: json['full'] as String?,
    );

Map<String, dynamic> _$$_DescriptionLocalDataToJson(
        _$_DescriptionLocalData instance) =>
    <String, dynamic>{
      'upstoreLocale': instance.upstoreLocale,
      'description': instance.description,
      'full': instance.full,
    };

_$_DeliveryOption _$$_DeliveryOptionFromJson(Map<String, dynamic> json) =>
    _$_DeliveryOption(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      name: json['name'] == null
          ? null
          : NameLocalData.fromJson(json['name'] as Map<String, dynamic>),
      business: json['business'] == null
          ? null
          : BusinessResponse.fromJson(json['business'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble(),
      deliveryType: json['deliveryType'] as String?,
      deliveryScope: json['deliveryScope'] as String?,
      deliveryTimeMin: json['deliveryTimeMin'] as int?,
      deliveryTimeMax: json['deliveryTimeMax'] as int?,
      timeUnit: json['timeUnit'] as String?,
    );

Map<String, dynamic> _$$_DeliveryOptionToJson(_$_DeliveryOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name,
      'business': instance.business,
      'price': instance.price,
      'deliveryType': instance.deliveryType,
      'deliveryScope': instance.deliveryScope,
      'deliveryTimeMin': instance.deliveryTimeMin,
      'deliveryTimeMax': instance.deliveryTimeMax,
      'timeUnit': instance.timeUnit,
    };

_$_DeliveryCompany _$$_DeliveryCompanyFromJson(Map<String, dynamic> json) =>
    _$_DeliveryCompany(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      name: json['name'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DeliveryCompanyToJson(_$_DeliveryCompany instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name,
      'imageUrls': instance.imageUrls,
    };

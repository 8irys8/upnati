// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_impl.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemImpl _$$_ItemImplFromJson(Map<String, dynamic> json) => _$_ItemImpl(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      name: (json['name'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, NameLocalData.fromJson(e as Map<String, dynamic>)),
      ),
      description: (json['description'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, DescriptionLocalData.fromJson(e as Map<String, dynamic>)),
      ),
      deliveryOptions: (json['deliveryOptions'] as List<dynamic>?)
          ?.map((e) => DeliveryOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      characteristicsMap:
          (json['characteristicsMap'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      itemCategory: json['itemCategory'] as String,
      currency: json['currency'] as String,
      price: (json['price'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      discountPercents: json['discountPercents'] as int,
      inStock: json['inStock'] as int?,
      singleValuePriceModifiers:
          (json['singleValuePriceModifiers'] as List<dynamic>?)
              ?.map((e) =>
                  SingleValuePriceModifier.fromJson(e as Map<String, dynamic>))
              .toList(),
      itemType: json['itemType'] as String?,
      stock: json['stock'] as int?,
      stockConfigured: json['stockConfigured'] as bool?,
      oldTotal: (json['oldTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ItemImplToJson(_$_ItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name,
      'description': instance.description,
      'deliveryOptions': instance.deliveryOptions,
      'imageUrls': instance.imageUrls,
      'characteristicsMap': instance.characteristicsMap,
      'itemCategory': instance.itemCategory,
      'currency': instance.currency,
      'price': instance.price,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'inStock': instance.inStock,
      'singleValuePriceModifiers': instance.singleValuePriceModifiers,
      'itemType': instance.itemType,
      'stock': instance.stock,
      'stockConfigured': instance.stockConfigured,
      'oldTotal': instance.oldTotal,
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
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemImpl.fromJson(e as Map<String, dynamic>))
          .toList(),
      company: json['company'] == null
          ? null
          : DeliveryCompany.fromJson(json['company'] as Map<String, dynamic>),
      deliveryType: json['deliveryType'] as String,
      deliverySpeed: json['deliverySpeed'] as String,
    );

Map<String, dynamic> _$$_DeliveryOptionToJson(_$_DeliveryOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'items': instance.items,
      'company': instance.company,
      'deliveryType': instance.deliveryType,
      'deliverySpeed': instance.deliverySpeed,
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

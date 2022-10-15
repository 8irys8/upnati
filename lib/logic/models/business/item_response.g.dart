// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemResponse _$$_ItemResponseFromJson(Map<String, dynamic> json) =>
    _$_ItemResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      businessId: json['businessId'] as String?,
      businessName: json['businessName'] as String?,
      businessImageUrl: json['businessImageUrl'] as String?,
      itemCategory: json['itemCategory'] as String?,
      itemType: json['itemType'] as String?,
      currency: json['currency'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
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
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      discountPercents: json['discountPercents'] as int?,
      inStock: json['inStock'] as int?,
      singleValuePriceModifiers:
          (json['singleValuePriceModifiers'] as List<dynamic>?)
              ?.map((e) =>
                  SingleValuePriceModifier.fromJson(e as Map<String, dynamic>))
              .toList(),
      stockConfigured: json['stockConfigured'] as bool?,
    );

Map<String, dynamic> _$$_ItemResponseToJson(_$_ItemResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'businessId': instance.businessId,
      'businessName': instance.businessName,
      'businessImageUrl': instance.businessImageUrl,
      'itemCategory': instance.itemCategory,
      'itemType': instance.itemType,
      'currency': instance.currency,
      'price': instance.price,
      'description': instance.description,
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
      'characteristicsMap': instance.characteristicsMap,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'inStock': instance.inStock,
      'singleValuePriceModifiers': instance.singleValuePriceModifiers,
      'stockConfigured': instance.stockConfigured,
    };

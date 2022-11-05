// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_basket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemBasketResponse _$$_ItemBasketResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ItemBasketResponse(
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
      priceModifier: json['priceModifier'] == null
          ? null
          : SingleValuePriceModifier.fromJson(
              json['priceModifier'] as Map<String, dynamic>),
      deliveryPrice: (json['deliveryPrice'] as num?)?.toDouble(),
      deliveryPreparationTime: json['deliveryPreparationTime'] as String?,
      deliveryTime: json['deliveryTime'] as String?,
      amount: json['amount'] as int?,
      favorite: json['favorite'] as bool?,
      stockConfigured: json['stockConfigured'] as bool?,
    );

Map<String, dynamic> _$$_ItemBasketResponseToJson(
        _$_ItemBasketResponse instance) =>
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
      'description': instance.description?.toJson(),
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
      'characteristicsMap': instance.characteristicsMap,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'inStock': instance.inStock,
      'priceModifier': instance.priceModifier?.toJson(),
      'deliveryPrice': instance.deliveryPrice,
      'deliveryPreparationTime': instance.deliveryPreparationTime,
      'deliveryTime': instance.deliveryTime,
      'amount': instance.amount,
      'favorite': instance.favorite,
      'stockConfigured': instance.stockConfigured,
    };

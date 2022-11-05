// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketResponse _$$_BasketResponseFromJson(Map<String, dynamic> json) =>
    _$_BasketResponse(
      id: json['id'] as String?,
      items: json['items'] == null
          ? null
          : PageItemBasketResponse.fromJson(
              json['items'] as Map<String, dynamic>),
      price: (json['price'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      discountPercents: json['discountPercents'] as int?,
    );

Map<String, dynamic> _$$_BasketResponseToJson(_$_BasketResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items?.toJson(),
      'price': instance.price,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
    };

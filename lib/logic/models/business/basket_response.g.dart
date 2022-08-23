// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BasketResponse _$$_BasketResponseFromJson(Map<String, dynamic> json) =>
    _$_BasketResponse(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      userId: json['userId'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemImpl.fromJson(e as Map<String, dynamic>))
          .toList(),
      amount: Map<String, int>.from(json['amount'] as Map),
      price: (json['price'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      discountPercents: json['discountPercents'] as int,
      oldTotal: (json['oldTotal'] as num).toDouble(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$_BasketResponseToJson(_$_BasketResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'userId': instance.userId,
      'items': instance.items,
      'amount': instance.amount,
      'price': instance.price,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'oldTotal': instance.oldTotal,
      'empty': instance.empty,
    };

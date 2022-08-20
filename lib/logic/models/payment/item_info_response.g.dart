// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemInfoResponse _$$_ItemInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_ItemInfoResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      amount: json['amount'] as int?,
      price: (json['price'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ItemInfoResponseToJson(_$_ItemInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'amount': instance.amount,
      'price': instance.price,
    };

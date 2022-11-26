// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      businessId: json['businessId'] as String?,
      businessName: json['businessName'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldTotal: (json['oldTotal'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      discountPercents: json['discountPercents'] as int?,
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'businessId': instance.businessId,
      'businessName': instance.businessName,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'oldTotal': instance.oldTotal,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commited_orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitedOrdersResponse _$$_CommitedOrdersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CommitedOrdersResponse(
      businessName: json['businessName'] as String?,
      businessId: json['businessId'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => ItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldTotal: (json['oldTotal'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num?)?.toDouble(),
      discountPercents: json['discountPercents'] as int?,
      paymentLink: json['paymentLink'] as String?,
    );

Map<String, dynamic> _$$_CommitedOrdersResponseToJson(
        _$_CommitedOrdersResponse instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'businessId': instance.businessId,
      'items': instance.items?.map((e) => e.toJson()).toList(),
      'oldTotal': instance.oldTotal,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'paymentLink': instance.paymentLink,
    };

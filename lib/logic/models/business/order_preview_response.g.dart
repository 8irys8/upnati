// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_preview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPreviewResponse _$$_OrderPreviewResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OrderPreviewResponse(
      businessName: json['businessName'] as String,
      businessId: json['businessId'] as String,
      itemPreviews: (json['itemPreviews'] as List<dynamic>)
          .map((e) => ItemPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
      oldTotal: (json['oldTotal'] as num).toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      discountPercents: json['discountPercents'] as int,
    );

Map<String, dynamic> _$$_OrderPreviewResponseToJson(
        _$_OrderPreviewResponse instance) =>
    <String, dynamic>{
      'businessName': instance.businessName,
      'businessId': instance.businessId,
      'itemPreviews': instance.itemPreviews,
      'oldTotal': instance.oldTotal,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
    };

_$_ItemPreview _$$_ItemPreviewFromJson(Map<String, dynamic> json) =>
    _$_ItemPreview(
      item: ItemResponse.fromJson(json['item'] as Map<String, dynamic>),
      amount: json['amount'] as int,
    );

Map<String, dynamic> _$$_ItemPreviewToJson(_$_ItemPreview instance) =>
    <String, dynamic>{
      'item': instance.item,
      'amount': instance.amount,
    };

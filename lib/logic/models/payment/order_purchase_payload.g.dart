// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_purchase_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPurchasePayload _$$_OrderPurchasePayloadFromJson(
        Map<String, dynamic> json) =>
    _$_OrderPurchasePayload(
      orderId: json['orderId'] as String,
      businessId: json['businessId'] as String,
      bankCurrency: json['bankCurrency'] as String,
      paymentMethod: json['paymentMethod'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemInfoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_OrderPurchasePayloadToJson(
        _$_OrderPurchasePayload instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'businessId': instance.businessId,
      'bankCurrency': instance.bankCurrency,
      'paymentMethod': instance.paymentMethod,
      'items': instance.items,
    };

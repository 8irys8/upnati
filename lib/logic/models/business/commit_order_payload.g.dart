// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_order_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitOrderPayload _$$_CommitOrderPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CommitOrderPayload(
      orders: (json['orders'] as List<dynamic>?)
          ?.map((e) => OrderPreviewResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : DeliveryInfo.fromJson(json['deliveryInfo'] as Map<String, dynamic>),
      currency: json['currency'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$_CommitOrderPayloadToJson(
        _$_CommitOrderPayload instance) =>
    <String, dynamic>{
      'orders': instance.orders?.map((e) => e.toJson()).toList(),
      'deliveryInfo': instance.deliveryInfo?.toJson(),
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
    };

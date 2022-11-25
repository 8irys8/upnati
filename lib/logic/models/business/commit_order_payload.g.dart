// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_order_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitOrderPayload _$$_CommitOrderPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CommitOrderPayload(
      items: json['items'] == null
          ? null
          : ItemCollection.fromJson(json['items'] as Map<String, dynamic>),
      deliveryInfo: json['deliveryInfo'] == null
          ? null
          : DeliveryInfo.fromJson(json['deliveryInfo'] as Map<String, dynamic>),
      currency: json['currency'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$_CommitOrderPayloadToJson(
        _$_CommitOrderPayload instance) =>
    <String, dynamic>{
      'items': instance.items?.toJson(),
      'deliveryInfo': instance.deliveryInfo?.toJson(),
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
    };

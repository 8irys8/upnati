// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_order_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommitOrderPayload _$$_CommitOrderPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_CommitOrderPayload(
      itemCollections: json['itemCollections'] == null
          ? null
          : ItemCollection.fromJson(
              json['itemCollections'] as Map<String, dynamic>),
      currency: json['currency'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
    );

Map<String, dynamic> _$$_CommitOrderPayloadToJson(
        _$_CommitOrderPayload instance) =>
    <String, dynamic>{
      'itemCollections': instance.itemCollections,
      'currency': instance.currency,
      'paymentMethod': instance.paymentMethod,
    };

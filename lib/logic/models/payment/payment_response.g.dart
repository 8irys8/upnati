// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentResponse _$$_PaymentResponseFromJson(Map<String, dynamic> json) =>
    _$_PaymentResponse(
      businessId: json['businessId'] as String?,
      orderId: json['orderId'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      bankCurrency: json['bankCurrency'] as String?,
      total: (json['total'] as num?)?.toDouble(),
      executorId: json['executorId'] as String?,
      additionalData: (json['additionalData'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_PaymentResponseToJson(_$_PaymentResponse instance) =>
    <String, dynamic>{
      'businessId': instance.businessId,
      'orderId': instance.orderId,
      'paymentMethod': instance.paymentMethod,
      'bankCurrency': instance.bankCurrency,
      'total': instance.total,
      'executorId': instance.executorId,
      'additionalData': instance.additionalData,
      'id': instance.id,
    };

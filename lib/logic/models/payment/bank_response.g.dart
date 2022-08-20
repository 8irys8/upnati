// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankResponse _$$_BankResponseFromJson(Map<String, dynamic> json) =>
    _$_BankResponse(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      entityId: json['entityId'] as String,
      bankCurrency: json['bankCurrency'] as String,
      balance: (json['balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$_BankResponseToJson(_$_BankResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'entityId': instance.entityId,
      'bankCurrency': instance.bankCurrency,
      'balance': instance.balance,
    };

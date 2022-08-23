// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignupPayload _$$_SignupPayloadFromJson(Map<String, dynamic> json) =>
    _$_SignupPayload(
      fullName: json['fullName'] as String,
      password: json['password'] as String,
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      location:
          LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      locale: json['locale'] as String,
      business: json['business'] == null
          ? null
          : BusinessForm.fromJson(json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignupPayloadToJson(_$_SignupPayload instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'password': instance.password,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'location': instance.location,
      'locale': instance.locale,
      'business': instance.business,
    };

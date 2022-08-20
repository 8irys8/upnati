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

_$_BusinessForm _$$_BusinessFormFromJson(Map<String, dynamic> json) =>
    _$_BusinessForm(
      name: json['name'] as String,
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      description: LocalDescription.fromJson(
          json['description'] as Map<String, dynamic>),
      category: json['category'] as String,
      defaultLocale: json['defaultLocale'] as String,
    );

Map<String, dynamic> _$$_BusinessFormToJson(_$_BusinessForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'location': instance.location,
      'description': instance.description,
      'category': instance.category,
      'defaultLocale': instance.defaultLocale,
    };

_$_LocalDescription _$$_LocalDescriptionFromJson(Map<String, dynamic> json) =>
    _$_LocalDescription(
      locale: json['locale'] as String,
      description:
          Description.fromJson(json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocalDescriptionToJson(_$_LocalDescription instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'description': instance.description,
    };

_$_Description _$$_DescriptionFromJson(Map<String, dynamic> json) =>
    _$_Description(
      full: json['full'] as String,
    );

Map<String, dynamic> _$$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'full': instance.full,
    };

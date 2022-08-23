// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessForm _$$_BusinessFormFromJson(Map<String, dynamic> json) =>
    _$_BusinessForm(
      name: json['name'] as String,
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      description: (json['description'] as List<dynamic>)
          .map((e) => LocalDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
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

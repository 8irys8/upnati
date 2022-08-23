// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_description.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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

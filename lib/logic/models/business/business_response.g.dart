// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessResponse _$$_BusinessResponseFromJson(Map<String, dynamic> json) =>
    _$_BusinessResponse(
      id: json['id'] as String?,
      name: json['name'] as String?,
      defaultLocale: json['defaultLocale'] as String?,
      description: json['description'] == null
          ? null
          : Description.fromJson(json['description'] as Map<String, dynamic>),
      category: json['category'] as String?,
      location: json['location'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrl: (json['videoUrl'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      deliveryScope: json['deliveryScope'] as String?,
    );

Map<String, dynamic> _$$_BusinessResponseToJson(_$_BusinessResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'defaultLocale': instance.defaultLocale,
      'description': instance.description?.toJson(),
      'category': instance.category,
      'location': instance.location,
      'imageUrls': instance.imageUrls,
      'videoUrl': instance.videoUrl,
      'deliveryScope': instance.deliveryScope,
    };

_$_LocationBusinessResponse _$$_LocationBusinessResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LocationBusinessResponse(
      country: json['country'] as String?,
      region: json['region'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$_LocationBusinessResponseToJson(
        _$_LocationBusinessResponse instance) =>
    <String, dynamic>{
      'country': instance.country,
      'region': instance.region,
      'city': instance.city,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessForm _$$_BusinessFormFromJson(Map<String, dynamic> json) =>
    _$_BusinessForm(
      name: json['name'] as String?,
      cityName: json['cityName'] as String?,
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => LocalDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      category: json['category'] as String?,
      defaultLocale: json['defaultLocale'] as String?,
      deliveryScope: json['deliveryScope'] as String?,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrls: (json['videoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_BusinessFormToJson(_$_BusinessForm instance) =>
    <String, dynamic>{
      'name': instance.name,
      'cityName': instance.cityName,
      'description': instance.description?.map((e) => e.toJson()).toList(),
      'category': instance.category,
      'defaultLocale': instance.defaultLocale,
      'deliveryScope': instance.deliveryScope,
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
    };

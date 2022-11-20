// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResponse _$$_SearchResponseFromJson(Map<String, dynamic> json) =>
    _$_SearchResponse(
      item: json['item'] == null
          ? null
          : PageItemResponse.fromJson(json['item'] as Map<String, dynamic>),
      business: json['business'] == null
          ? null
          : PageBusinessResponse.fromJson(
              json['business'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SearchResponseToJson(_$_SearchResponse instance) =>
    <String, dynamic>{
      'item': instance.item?.toJson(),
      'business': instance.business?.toJson(),
    };

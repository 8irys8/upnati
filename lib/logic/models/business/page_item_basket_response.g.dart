// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_item_basket_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageItemBasketResponse _$$_PageItemBasketResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PageItemBasketResponse(
      totalPages: json['totalPages'] as int?,
      totalElements: json['totalElements'] as int?,
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      first: json['first'] as bool?,
      last: json['last'] as bool?,
      number: json['number'] as int?,
      numberOfElements: json['numberOfElements'] as int?,
      pageable: json['pageable'] == null
          ? null
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      size: json['size'] as int?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => ItemBasketResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$_PageItemBasketResponseToJson(
        _$_PageItemBasketResponse instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'sort': instance.sort?.toJson(),
      'first': instance.first,
      'last': instance.last,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'pageable': instance.pageable?.toJson(),
      'size': instance.size,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'empty': instance.empty,
    };

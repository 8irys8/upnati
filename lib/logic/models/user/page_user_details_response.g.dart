// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_user_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageUserDetailsResponse _$$_PageUserDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PageUserDetailsResponse(
      totalPages: json['totalPages'] as int?,
      totalElements: json['totalElements'] as int?,
      sort: json['sort'] == null
          ? null
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      first: json['first'] as bool?,
      last: json['last'] as bool?,
      number: json['number'] as int?,
      pageable: json['pageable'] == null
          ? null
          : Pageable.fromJson(json['pageable'] as Map<String, dynamic>),
      numberOfElements: json['numberOfElements'] as int?,
      size: json['size'] as int?,
      content: (json['content'] as List<dynamic>?)
          ?.map((e) => UserDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$_PageUserDetailsResponseToJson(
        _$_PageUserDetailsResponse instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'sort': instance.sort,
      'first': instance.first,
      'last': instance.last,
      'number': instance.number,
      'pageable': instance.pageable,
      'numberOfElements': instance.numberOfElements,
      'size': instance.size,
      'content': instance.content,
      'empty': instance.empty,
    };

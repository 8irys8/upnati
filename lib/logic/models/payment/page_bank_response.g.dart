// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_bank_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageBankResponse _$$_PageBankResponseFromJson(Map<String, dynamic> json) =>
    _$_PageBankResponse(
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
          ?.map((e) => BankResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$_PageBankResponseToJson(_$_PageBankResponse instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'sort': instance.sort,
      'first': instance.first,
      'last': instance.last,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'pageable': instance.pageable,
      'size': instance.size,
      'content': instance.content,
      'empty': instance.empty,
    };

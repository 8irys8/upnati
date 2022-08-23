// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemForm _$$_ItemFormFromJson(Map<String, dynamic> json) => _$_ItemForm(
      id: json['id'] as String?,
      name: (json['name'] as List<dynamic>)
          .map((e) => LocalName.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemCategory: json['itemCategory'] as String,
      currency: json['currency'] as String?,
      description: (json['description'] as List<dynamic>)
          .map((e) => LocalDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemPrice: (json['itemPrice'] as num).toDouble(),
      inStock: json['inStock'] as int?,
      singleValuePriceModifiers: (json['singleValuePriceModifiers']
              as List<dynamic>?)
          ?.map((e) =>
              SingleValuePriceModifierForm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItemFormToJson(_$_ItemForm instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'itemCategory': instance.itemCategory,
      'currency': instance.currency,
      'description': instance.description,
      'itemPrice': instance.itemPrice,
      'inStock': instance.inStock,
      'singleValuePriceModifiers': instance.singleValuePriceModifiers,
    };

_$_LocalName _$$_LocalNameFromJson(Map<String, dynamic> json) => _$_LocalName(
      locale: json['locale'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_LocalNameToJson(_$_LocalName instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'name': instance.name,
    };

_$_SingleValuePriceModifierForm _$$_SingleValuePriceModifierFormFromJson(
        Map<String, dynamic> json) =>
    _$_SingleValuePriceModifierForm(
      value: (json['value'] as num?)?.toDouble(),
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_SingleValuePriceModifierFormToJson(
        _$_SingleValuePriceModifierForm instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
    };

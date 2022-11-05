// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItemForm _$$_ItemFormFromJson(Map<String, dynamic> json) => _$_ItemForm(
      id: json['id'] as String?,
      name: (json['name'] as List<dynamic>?)
          ?.map((e) => LocalName.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemCategory: json['itemCategory'] as String?,
      currency: json['currency'] as String?,
      description: (json['description'] as List<dynamic>?)
          ?.map((e) => LocalDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemPrice: (json['itemPrice'] as num?)?.toDouble(),
      delivery: json['delivery'] == null
          ? null
          : DeliveryReq.fromJson(json['delivery'] as Map<String, dynamic>),
      inStock: json['inStock'] as int?,
      singleValuePriceModifiers: (json['singleValuePriceModifiers']
              as List<dynamic>?)
          ?.map((e) =>
              SingleValuePriceModifierForm.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      videoUrls: (json['videoUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
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
      'delivery': instance.delivery,
      'inStock': instance.inStock,
      'singleValuePriceModifiers': instance.singleValuePriceModifiers,
      'imageUrls': instance.imageUrls,
      'videoUrls': instance.videoUrls,
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

_$_DeliveryReq _$$_DeliveryReqFromJson(Map<String, dynamic> json) =>
    _$_DeliveryReq(
      price: (json['price'] as num?)?.toDouble(),
      preparationTime: json['preparationTime'] as String?,
      deliveryTime: json['deliveryTime'] as String?,
    );

Map<String, dynamic> _$$_DeliveryReqToJson(_$_DeliveryReq instance) =>
    <String, dynamic>{
      'price': instance.price,
      'preparationTime': instance.preparationTime,
      'deliveryTime': instance.deliveryTime,
    };

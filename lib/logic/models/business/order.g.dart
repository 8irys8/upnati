// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Order _$$_OrderFromJson(Map<String, dynamic> json) => _$_Order(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      business: Business.fromJson(json['business'] as Map<String, dynamic>),
      userId: json['userId'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      amount: Map<String, int>.from(json['amount'] as Map),
      status: json['status'] as String,
      price: (json['price'] as num?)?.toDouble(),
      purchasePrice: (json['purchasePrice'] as num).toDouble(),
      discountPercents: json['discountPercents'] as int,
      oldTotal: (json['oldTotal'] as num).toDouble(),
    );

Map<String, dynamic> _$$_OrderToJson(_$_Order instance) => <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'business': instance.business,
      'userId': instance.userId,
      'items': instance.items,
      'amount': instance.amount,
      'status': instance.status,
      'price': instance.price,
      'purchasePrice': instance.purchasePrice,
      'discountPercents': instance.discountPercents,
      'oldTotal': instance.oldTotal,
    };

_$_Business _$$_BusinessFromJson(Map<String, dynamic> json) => _$_Business(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      name: json['name'] as String,
      defaultLocale: json['defaultLocale'] as String,
      description: (json['description'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k, DescriptionLocalData.fromJson(e as Map<String, dynamic>)),
      ),
      category: json['category'] as String,
      location:
          LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_BusinessToJson(_$_Business instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'name': instance.name,
      'defaultLocale': instance.defaultLocale,
      'description': instance.description,
      'category': instance.category,
      'location': instance.location,
      'imageUrls': instance.imageUrls,
    };

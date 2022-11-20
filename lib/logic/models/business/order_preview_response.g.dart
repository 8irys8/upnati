// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_preview_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OrderPreviewResponse _$$_OrderPreviewResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OrderPreviewResponse(
      businessId: json['businessId'] as String?,
      deliveryOptionId: json['deliveryOptionId'] as String?,
      itemCollections: json['itemCollections'] == null
          ? null
          : ItemCollection.fromJson(
              json['itemCollections'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_OrderPreviewResponseToJson(
        _$_OrderPreviewResponse instance) =>
    <String, dynamic>{
      'businessId': instance.businessId,
      'deliveryOptionId': instance.deliveryOptionId,
      'itemCollections': instance.itemCollections?.toJson(),
    };

_$_DeliveryInfo _$$_DeliveryInfoFromJson(Map<String, dynamic> json) =>
    _$_DeliveryInfo(
      address: json['address'] as String?,
      city: json['city'] as String?,
      postalCode: json['postalCode'] as String?,
      receiverName: json['receiverName'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_DeliveryInfoToJson(_$_DeliveryInfo instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'postalCode': instance.postalCode,
      'receiverName': instance.receiverName,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
    };

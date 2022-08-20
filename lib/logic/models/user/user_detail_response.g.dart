// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDetailResponse _$$_UserDetailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UserDetailResponse(
      id: json['id'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      role: json['role'] as String,
      locale: json['locale'] as String,
      location:
          LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      lastSeen: json['lastSeen'] as String,
      phoneNumber: json['phoneNumber'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      businessId: json['businessId'] as String,
    );

Map<String, dynamic> _$$_UserDetailResponseToJson(
        _$_UserDetailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'locale': instance.locale,
      'location': instance.location,
      'lastSeen': instance.lastSeen,
      'phoneNumber': instance.phoneNumber,
      'images': instance.images,
      'businessId': instance.businessId,
    };

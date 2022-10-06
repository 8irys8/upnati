// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_user_info_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirebaseUserInfoPayload _$$_FirebaseUserInfoPayloadFromJson(
        Map<String, dynamic> json) =>
    _$_FirebaseUserInfoPayload(
      displayName: json['displayName'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      lastSeen: json['lastSeen'] as String?,
      emailVerified: json['emailVerified'] as bool?,
      photoUrl: json['photoUrl'] as String?,
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      locale: json['locale'] as String?,
      appRefCode: json['appRefCode'] as String?,
      anonymous: json['anonymous'] as bool?,
    );

Map<String, dynamic> _$$_FirebaseUserInfoPayloadToJson(
        _$_FirebaseUserInfoPayload instance) =>
    <String, dynamic>{
      'displayName': instance.displayName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'lastSeen': instance.lastSeen,
      'emailVerified': instance.emailVerified,
      'photoUrl': instance.photoUrl,
      'location': instance.location?.toJson(),
      'locale': instance.locale,
      'appRefCode': instance.appRefCode,
      'anonymous': instance.anonymous,
    };

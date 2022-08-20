// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      token: json['token'] as String?,
      lastSeen: json['lastSeen'] as String?,
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      imageUrl: json['imageUrl'] as String?,
      locale: json['locale'] as String?,
      location: json['location'] == null
          ? null
          : LocationResponse.fromJson(json['location'] as Map<String, dynamic>),
      authorities: (json['authorities'] as List<dynamic>?)
          ?.map((e) => GrantedAuthority.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'lastSeen': instance.lastSeen,
      'id': instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
      'role': instance.role,
      'phoneNumber': instance.phoneNumber,
      'imageUrl': instance.imageUrl,
      'locale': instance.locale,
      'location': instance.location,
      'authorities': instance.authorities,
    };

_$_GrantedAuthority _$$_GrantedAuthorityFromJson(Map<String, dynamic> json) =>
    _$_GrantedAuthority(
      authority: json['authority'] as String?,
    );

Map<String, dynamic> _$$_GrantedAuthorityToJson(_$_GrantedAuthority instance) =>
    <String, dynamic>{
      'authority': instance.authority,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_invitation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessInvitationResponse _$$_BusinessInvitationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BusinessInvitationResponse(
      id: json['id'] as String?,
      creationDate: json['creationDate'] as String?,
      fromId: json['fromId'] as String,
      fromRole: json['fromRole'] as String,
      toId: json['toId'] as String,
      businessId: json['businessId'] as String,
      toRole: json['toRole'] as String,
      accepted: json['accepted'] as bool?,
    );

Map<String, dynamic> _$$_BusinessInvitationResponseToJson(
        _$_BusinessInvitationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creationDate': instance.creationDate,
      'fromId': instance.fromId,
      'fromRole': instance.fromRole,
      'toId': instance.toId,
      'businessId': instance.businessId,
      'toRole': instance.toRole,
      'accepted': instance.accepted,
    };

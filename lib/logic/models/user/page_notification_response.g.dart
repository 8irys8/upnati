// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_notification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PageNotificationResponse _$$_PageNotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PageNotificationResponse(
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
          ?.map((e) => NotificationResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      empty: json['empty'] as bool?,
    );

Map<String, dynamic> _$$_PageNotificationResponseToJson(
        _$_PageNotificationResponse instance) =>
    <String, dynamic>{
      'totalPages': instance.totalPages,
      'totalElements': instance.totalElements,
      'sort': instance.sort?.toJson(),
      'first': instance.first,
      'last': instance.last,
      'number': instance.number,
      'numberOfElements': instance.numberOfElements,
      'pageable': instance.pageable?.toJson(),
      'size': instance.size,
      'content': instance.content?.map((e) => e.toJson()).toList(),
      'empty': instance.empty,
    };

_$_NotificationResponse _$$_NotificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationResponse(
      id: json['id'] as String?,
      title: json['title'] as String?,
      date: json['date'] as String?,
      message: json['message'] as String?,
      senderName: json['senderName'] as String?,
      senderId: json['senderId'] as String?,
      senderImage: json['senderImage'] as String?,
      senderType: json['senderType'] as String?,
      read: json['read'] as bool?,
    );

Map<String, dynamic> _$$_NotificationResponseToJson(
        _$_NotificationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date,
      'message': instance.message,
      'senderName': instance.senderName,
      'senderId': instance.senderId,
      'senderImage': instance.senderImage,
      'senderType': instance.senderType,
      'read': instance.read,
    };

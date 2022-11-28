import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_notification_response.g.dart';
part 'page_notification_response.freezed.dart';

@freezed
class PageNotificationResponse with _$PageNotificationResponse {
  @JsonSerializable(explicitToJson: true)
  const factory PageNotificationResponse({
    final int? totalPages,
    final int? totalElements,
    final Sort? sort,
    final bool? first,
    final bool? last,
    final int? number,
    final int? numberOfElements,
    final Pageable? pageable,
    final List<NotificationResponse>? content,
    final bool? empty,
  }) = _PageNotificationResponse;

  factory PageNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$PageNotificationResponseFromJson(json);
}

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse({
    final String? id,
    final String? title,
    final String? message,
    final String? senderName,
    final String? senderId,
    final String? senderImage,
    final String? senderType,
  }) = _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);
}

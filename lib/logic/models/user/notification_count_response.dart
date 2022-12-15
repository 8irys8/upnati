import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_count_response.g.dart';
part 'notification_count_response.freezed.dart';

@freezed
class NotificationCountResponse with _$NotificationCountResponse {
  const factory NotificationCountResponse({
    final int? count,
  }) = _NotificationCountResponse;

  factory NotificationCountResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationCountResponseFromJson(json);
}

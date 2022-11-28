import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_payload.g.dart';
part 'subscription_payload.freezed.dart';

@freezed
class SubscriptionPayload with _$SubscriptionPayload {
  const factory SubscriptionPayload({
    final String? subscriberTopic,
  }) = _SubscriptionPayload;

  factory SubscriptionPayload.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPayloadFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'firebase_user_info_payload.g.dart';
part 'firebase_user_info_payload.freezed.dart';

@freezed
class FirebaseUserInfoPayload with _$FirebaseUserInfoPayload {
  @JsonSerializable(explicitToJson: true)
  const factory FirebaseUserInfoPayload({
    String? displayName,
    String? email,
    String? phoneNumber,
    String? lastSeen,
    bool? emailVerified,
    String? photoUrl,
    LocationResponse? location,
    String? locale,
    String? appRefCode,
    bool? anonymous,
  }) = _FirebaseUserInfoPayload;

  factory FirebaseUserInfoPayload.fromJson(Map<String, dynamic> json) =>
      _$FirebaseUserInfoPayloadFromJson(json);
}

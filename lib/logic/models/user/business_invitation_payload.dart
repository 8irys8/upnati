import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_invitation_payload.g.dart';
part 'business_invitation_payload.freezed.dart';

@freezed
class BusinessInvitationPayload with _$BusinessInvitationPayload {
  const factory BusinessInvitationPayload({
    required String toId,
    required String toRole,
  }) = _BusinessInvitationPayload;

  factory BusinessInvitationPayload.fromJson(Map<String, dynamic> json) =>
      _$BusinessInvitationPayloadFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'business_invitation_response.g.dart';
part 'business_invitation_response.freezed.dart';

@freezed
class BusinessInvitationResponse with _$BusinessInvitationResponse {
  const factory BusinessInvitationResponse({
    String? id,
    String? creationDate,
    required String fromId,
    required String fromRole,
    required String toId,
    required String businessId,
    required String toRole,
    bool? accepted,
  }) = _BusinessInvitationResponse;

  factory BusinessInvitationResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessInvitationResponseFromJson(json);
}

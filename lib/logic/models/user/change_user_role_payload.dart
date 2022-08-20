import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_user_role_payload.freezed.dart';
part 'change_user_role_payload.g.dart';

@freezed
class ChangeUserRolePayload with _$ChangeUserRolePayload {
  const factory ChangeUserRolePayload({
    required String role,
  }) = _ChangeUserRolePayload;

  factory ChangeUserRolePayload.fromJson(Map<String, dynamic> json) =>
      _$ChangeUserRolePayloadFromJson(json);
}

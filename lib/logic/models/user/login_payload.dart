import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_payload.g.dart';
part 'login_payload.freezed.dart';

@freezed
class LoginPayload with _$LoginPayload {
  const factory LoginPayload({
    required String identifier,
    required String password,
  }) = _LoginPayload;

  factory LoginPayload.fromJson(Map<String, dynamic> json) =>
      _$LoginPayloadFromJson(json);
}
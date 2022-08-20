import 'package:freezed_annotation/freezed_annotation.dart';

part 'restore_payload.g.dart';
part 'restore_payload.freezed.dart';

@freezed
class RestorePayload with _$RestorePayload {
  const factory RestorePayload({
    required String code,
    required String password,
  }) = _RestorePayload;

  factory RestorePayload.fromJson(Map<String, dynamic> json) =>
      _$RestorePayloadFromJson(json);
}

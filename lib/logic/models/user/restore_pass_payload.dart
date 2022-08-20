import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:upnati/core/config/enums.dart';

part 'restore_pass_payload.g.dart';
part 'restore_pass_payload.freezed.dart';

@freezed
class RestorePassPayload with _$RestorePassPayload {
  const factory RestorePassPayload({
    required String identifierType,
    required String identifier,
  }) = _RestorePassPayload;

  factory RestorePassPayload.fromJson(Map<String, dynamic> json) =>
      _$RestorePassPayloadFromJson(json);
}

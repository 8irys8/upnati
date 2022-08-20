import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_restore_payload.g.dart';
part 'confirm_restore_payload.freezed.dart';

@freezed
class ConfirmRestorePayload with _$ConfirmRestorePayload {
  const factory ConfirmRestorePayload({
    required String code,
  }) = _ConfirmRestorePayload;

  factory ConfirmRestorePayload.fromJson(Map<String, dynamic> json) =>
      _$ConfirmRestorePayloadFromJson(json);
}

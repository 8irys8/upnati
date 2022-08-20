import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_bank_payload.g.dart';
part 'create_bank_payload.freezed.dart';

@freezed
class CreateBankPayload with _$CreateBankPayload {
  const factory CreateBankPayload({
    required String bankCurrency,
  }) = _CreateBankPayload;

  factory CreateBankPayload.fromJson(Map<String, dynamic> json) =>
      _$CreateBankPayloadFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bank_response.g.dart';
part 'bank_response.freezed.dart';

@freezed
class BankResponse with _$BankResponse {
  const factory BankResponse({
    String? id,
    String? creationDate,
    required String entityId,
    required String bankCurrency,
    required double balance,
  }) = _BankResponse;

  factory BankResponse.fromJson(Map<String, dynamic> json) =>
      _$BankResponseFromJson(json);
}

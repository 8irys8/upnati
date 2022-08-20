import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_response.g.dart';
part 'payment_response.freezed.dart';

@freezed
class PaymentResponse with _$PaymentResponse {
  const factory PaymentResponse({
    String? businessId,
    String? orderId,
    String? paymentMethod,
    String? bankCurrency,
    double? total,
    String? executorId,
    Map<dynamic, String>? additionalData,
    String? id,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}

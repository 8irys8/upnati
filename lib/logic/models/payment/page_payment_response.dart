import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/payment/payment_response.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_payment_response.g.dart';
part 'page_payment_response.freezed.dart';

@freezed
class PagePaymentResponse with _$PagePaymentResponse {
  const factory PagePaymentResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    int? numberOfElements,
    Pageable? pageable,
    int? size,
    List<PaymentResponse>? content,
    bool? empty,
  }) = _PagePaymentResponse;

  factory PagePaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PagePaymentResponseFromJson(json);
}

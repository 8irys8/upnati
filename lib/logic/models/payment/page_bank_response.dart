import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/payment/bank_response.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_bank_response.g.dart';
part 'page_bank_response.freezed.dart';

@freezed
class PageBankResponse with _$PageBankResponse {
  const factory PageBankResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    int? numberOfElements,
    Pageable? pageable,
    int? size,
    List<BankResponse>? content,
    bool? empty,
  }) = _PageBankResponse;

  factory PageBankResponse.fromJson(Map<String, dynamic> json) =>
      _$PageBankResponseFromJson(json);
}

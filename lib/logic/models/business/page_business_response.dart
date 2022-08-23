import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/business_response.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';

part 'page_business_response.g.dart';
part 'page_business_response.freezed.dart';

@freezed
class PageBusinessResponse with _$PageBusinessResponse {
  const factory PageBusinessResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    int? numberOfElements,
    Pageable? pageable,
    int? size,
    required List<BusinessResponse> content,
    bool? empty,
  }) = _PageBusinessResponse;

  factory PageBusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$PageBusinessResponseFromJson(json);
}

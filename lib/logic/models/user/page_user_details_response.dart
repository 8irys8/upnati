import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/pageable.dart';
import 'package:upnati/logic/models/sort.dart';
import 'package:upnati/logic/models/user/user_detail_response.dart';

part 'page_user_details_response.g.dart';
part 'page_user_details_response.freezed.dart';

@freezed
class PageUserDetailsResponse with _$PageUserDetailsResponse {
  const factory PageUserDetailsResponse({
    int? totalPages,
    int? totalElements,
    Sort? sort,
    bool? first,
    bool? last,
    int? number,
    Pageable? pageable,
    int? numberOfElements,
    int? size,
    List<UserDetailResponse>? content,
    bool? empty,
  }) = _PageUserDetailsResponse;

  factory PageUserDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$PageUserDetailsResponseFromJson(json);
}

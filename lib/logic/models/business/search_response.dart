import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business/page_business_response.dart';
import 'package:upnati/logic/models/business/page_item_response.dart';

part 'search_response.g.dart';
part 'search_response.freezed.dart';

@freezed
class SearchResponse with _$SearchResponse {
  @JsonSerializable(explicitToJson: true)
  const factory SearchResponse({
    final PageItemResponse? item,
    final PageBusinessResponse? business,
  }) = _SearchResponse;

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);
}

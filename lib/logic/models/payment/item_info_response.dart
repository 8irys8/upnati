import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'item_info_response.g.dart';
part 'item_info_response.freezed.dart';

@freezed
class ItemInfoResponse with _$ItemInfoResponse {
  const factory ItemInfoResponse({
    String? id,
    String? name,
    int? amount,
    double? price,
  }) = _ItemInfoResponse;

  factory ItemInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$ItemInfoResponseFromJson(json);
}

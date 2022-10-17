import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'app_link_response.g.dart';
part 'app_link_response.freezed.dart';

@freezed
class AppLinkResponse with _$AppLinkResponse {
  const factory AppLinkResponse({final String? url}) = _AppLinkResponse;

  factory AppLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$AppLinkResponseFromJson(json);
}

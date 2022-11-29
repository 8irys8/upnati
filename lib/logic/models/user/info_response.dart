import 'package:freezed_annotation/freezed_annotation.dart';

part 'info_response.g.dart';
part 'info_response.freezed.dart';

@freezed
class InfoResponse with _$InfoResponse {
  const factory InfoResponse({
    final String? value,
  }) = _InfoResponse;

  factory InfoResponse.fromJson(Map<String, dynamic> json) =>
      _$InfoResponseFromJson(json);
}

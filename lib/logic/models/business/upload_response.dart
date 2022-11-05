import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'upload_response.g.dart';
part 'upload_response.freezed.dart';

@freezed
class UploadResponse with _$UploadResponse {
  const factory UploadResponse({final List<String>? urls}) = _UploadResponse;

  factory UploadResponse.fromJson(Map<String, dynamic> json) =>
      _$UploadResponseFromJson(json);
}

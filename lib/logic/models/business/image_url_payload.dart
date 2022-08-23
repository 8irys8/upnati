import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_url_payload.g.dart';
part 'image_url_payload.freezed.dart';

@freezed
class ImageUrlPayload with _$ImageUrlPayload {
  const factory ImageUrlPayload({
    required String url,
  }) = _ImageUrlPayload;

  factory ImageUrlPayload.fromJson(Map<String, dynamic> json) =>
      _$ImageUrlPayloadFromJson(json);
}

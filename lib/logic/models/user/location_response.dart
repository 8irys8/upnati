import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_response.g.dart';
part 'location_response.freezed.dart';

@freezed
class LocationResponse with _$LocationResponse {
  const factory LocationResponse({
    String? countryId,
    String? regionId,
    String? cityId,
  }) = _LocationResponse;

  factory LocationResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationResponseFromJson(json);
}

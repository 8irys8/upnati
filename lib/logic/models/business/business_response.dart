import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/description.dart';

part 'business_response.g.dart';
part 'business_response.freezed.dart';

@freezed
class BusinessResponse with _$BusinessResponse {
  const factory BusinessResponse({
    required String id,
    required String name,
    required String defaultLocale,
    required Description description,
    required String category,
    required LocationBusinessResponse location,
    List<String>? imageUrls,
  }) = _BusinessResponse;

  factory BusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessResponseFromJson(json);
}

@freezed
class LocationBusinessResponse with _$LocationBusinessResponse {
  const factory LocationBusinessResponse({
    required String country,
    required String region,
    required String city,
  }) = _LocationBusinessResponse;

  factory LocationBusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationBusinessResponseFromJson(json);
}

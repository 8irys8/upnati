import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/description.dart';

part 'business_response.g.dart';
part 'business_response.freezed.dart';

@freezed
class BusinessResponse with _$BusinessResponse {
  @JsonSerializable(explicitToJson: true)
  const factory BusinessResponse({
    final String? id,
    final String? name,
    final String? defaultLocale,
    final Description? description,
    final String? category,
    final String? location,
    final List<String>? imageUrls,
    final List<String>? videoUrl,
    final String? deliveryScope,
  }) = _BusinessResponse;

  factory BusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessResponseFromJson(json);
}

@freezed
class LocationBusinessResponse with _$LocationBusinessResponse {
  const factory LocationBusinessResponse({
    final String? country,
    final String? region,
    final String? city,
  }) = _LocationBusinessResponse;

  factory LocationBusinessResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationBusinessResponseFromJson(json);
}

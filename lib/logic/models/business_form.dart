import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/local_description.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'business_form.g.dart';
part 'business_form.freezed.dart';

@freezed
class BusinessForm with _$BusinessForm {
  @JsonSerializable(explicitToJson: true)
  const factory BusinessForm({
    final String? name,
    final String? cityName,
    // final LocationResponse? location,
    final List<LocalDescription>? description,
    final String? category,
    final String? defaultLocale,
    final String? deliveryScope,
    final List<String>? imageUrls,
    final List<String>? videoUrls,
  }) = _BusinessForm;

  factory BusinessForm.fromJson(Map<String, dynamic> json) =>
      _$BusinessFormFromJson(json);
}

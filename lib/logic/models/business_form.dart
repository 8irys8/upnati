import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/local_description.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'business_form.g.dart';
part 'business_form.freezed.dart';

@freezed
class BusinessForm with _$BusinessForm {
  const factory BusinessForm({
    required String name,
    LocationResponse? location,
    required List<LocalDescription> description,
    required String category,
    required String defaultLocale,
  }) = _BusinessForm;

  factory BusinessForm.fromJson(Map<String, dynamic> json) =>
      _$BusinessFormFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'signup_payload.g.dart';
part 'signup_payload.freezed.dart';

@freezed
class SignupPayload with _$SignupPayload {
  const factory SignupPayload({
    required String fullName,
    required String password,
    required String email,
    required String phoneNumber,
    required LocationResponse location,
    required String locale,
    BusinessForm? business,
  }) = _SignupPayload;

  factory SignupPayload.fromJson(Map<String, dynamic> json) =>
      _$SignupPayloadFromJson(json);
}

@freezed
class BusinessForm with _$BusinessForm {
  const factory BusinessForm({
    required String name,
    LocationResponse? location,
    required LocalDescription description,
    required String category,
    required String defaultLocale,
  }) = _BusinessForm;

  factory BusinessForm.fromJson(Map<String, dynamic> json) =>
      _$BusinessFormFromJson(json);
}

@freezed
class LocalDescription with _$LocalDescription {
  const factory LocalDescription({
    required String locale,
    required Description description,
  }) = _LocalDescription;

  factory LocalDescription.fromJson(Map<String, dynamic> json) =>
      _$LocalDescriptionFromJson(json);
}

@freezed
class Description with _$Description {
  const factory Description({
    required String full,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}

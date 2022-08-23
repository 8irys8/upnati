import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/business_form.dart';
import 'package:upnati/logic/models/local_description.dart';
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

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'user_detail_response.g.dart';
part 'user_detail_response.freezed.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  const factory UserDetailResponse({
    required String id,
    required String fullName,
    required String email,
    required String role, //enums
    required String locale, // en, he
    required LocationResponse location,
    required String lastSeen,
    required String phoneNumber,
    required List<String> images,
    required String businessId,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);
}

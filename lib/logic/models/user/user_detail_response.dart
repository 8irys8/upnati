import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'user_detail_response.g.dart';
part 'user_detail_response.freezed.dart';

@freezed
class UserDetailResponse with _$UserDetailResponse {
  @JsonSerializable(explicitToJson: true)
  const factory UserDetailResponse({
    String? id,
    String? fullName,
    String? email,
    String? role, //enums
    String? locale, // en, he
    LocationResponse? location,
    String? lastSeen,
    String? phoneNumber,
    List<String>? images,
    String? businessId,
  }) = _UserDetailResponse;

  factory UserDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDetailResponseFromJson(json);
}

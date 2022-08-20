import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/user/location_response.dart';

part 'auth_response.g.dart';
part 'auth_response.freezed.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse(
      {String? token,
      String? lastSeen,
      String? id,
      String? fullName,
      String? email,
      String? role,
      String? phoneNumber,
      String? imageUrl,
      String? locale,
      LocationResponse? location,
      List<GrantedAuthority>? authorities}) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class GrantedAuthority with _$GrantedAuthority {
  const factory GrantedAuthority({
    String? authority,
  }) = _GrantedAuthority;

  factory GrantedAuthority.fromJson(Map<String, dynamic> json) =>
      _$GrantedAuthorityFromJson(json);
}

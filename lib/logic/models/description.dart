import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.g.dart';
part 'description.freezed.dart';

@freezed
class Description with _$Description {
  const factory Description({
    required String full,
  }) = _Description;

  factory Description.fromJson(Map<String, dynamic> json) =>
      _$DescriptionFromJson(json);
}
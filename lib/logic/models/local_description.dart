import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/description.dart';

part 'local_description.g.dart';
part 'local_description.freezed.dart';

@freezed
class LocalDescription with _$LocalDescription {
  const factory LocalDescription({
    required String locale,
    required Description description,
  }) = _LocalDescription;

  factory LocalDescription.fromJson(Map<String, dynamic> json) =>
      _$LocalDescriptionFromJson(json);
}

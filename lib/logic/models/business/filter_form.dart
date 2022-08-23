import 'package:freezed_annotation/freezed_annotation.dart';

part 'filter_form.g.dart';
part 'filter_form.freezed.dart';

@freezed
class FilterForm with _$FilterForm {
  const factory FilterForm({
    Bundle? idToName,
    Bundle? nameToId,
  }) = _FilterForm;

  factory FilterForm.fromJson(Map<String, dynamic> json) =>
      _$FilterFormFromJson(json);
}

@freezed
class Bundle with _$Bundle {
  const factory Bundle() = _Bundle;

  factory Bundle.fromJson(Map<String, dynamic> json) => _$BundleFromJson(json);
}

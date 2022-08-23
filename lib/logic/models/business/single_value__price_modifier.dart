import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_value__price_modifier.g.dart';
part 'single_value__price_modifier.freezed.dart';

@freezed
class SingleValuePriceModifier with _$SingleValuePriceModifier {
  const factory SingleValuePriceModifier({
    double? value,
    required String type,
  }) = _SingleValuePriceModifier;

  factory SingleValuePriceModifier.fromJson(Map<String, dynamic> json) =>
      _$SingleValuePriceModifierFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:upnati/logic/models/local_description.dart';

part 'item_form.g.dart';
part 'item_form.freezed.dart';

@freezed
class ItemForm with _$ItemForm {
  const factory ItemForm({
    final String? id,
    final List<LocalName>? name,
    final String? itemCategory,
    final String? currency,
    final List<LocalDescription>? description,
    final double? itemPrice,
    final double? deliveryPrice,
    final int? inStock,
    final List<SingleValuePriceModifierForm>? singleValuePriceModifiers,
  }) = _ItemForm;

  factory ItemForm.fromJson(Map<String, dynamic> json) =>
      _$ItemFormFromJson(json);
}

@freezed
class LocalName with _$LocalName {
  const factory LocalName({
    required String locale,
    required String name,
  }) = _LocalName;

  factory LocalName.fromJson(Map<String, dynamic> json) =>
      _$LocalNameFromJson(json);
}

@freezed
class SingleValuePriceModifierForm with _$SingleValuePriceModifierForm {
  const factory SingleValuePriceModifierForm({
    double? value,
    required String type,
  }) = _SingleValuePriceModifierForm;

  factory SingleValuePriceModifierForm.fromJson(Map<String, dynamic> json) =>
      _$SingleValuePriceModifierFormFromJson(json);
}

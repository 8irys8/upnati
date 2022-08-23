import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_collection.g.dart';
part 'item_collection.freezed.dart';

@freezed
class ItemCollection with _$ItemCollection {
  const factory ItemCollection({
    required Map<dynamic, int> amount,
  }) = _ItemCollection;

  factory ItemCollection.fromJson(Map<String, dynamic> json) =>
      _$ItemCollectionFromJson(json);
}

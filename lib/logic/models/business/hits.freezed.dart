// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hits _$HitsFromJson(Map<String, dynamic> json) {
  return _Hits.fromJson(json);
}

/// @nodoc
mixin _$Hits {
  int? get found => throw _privateConstructorUsedError;
  int? get start => throw _privateConstructorUsedError;
  String? get cursor => throw _privateConstructorUsedError;
  List<Hit>? get hit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitsCopyWith<Hits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitsCopyWith<$Res> {
  factory $HitsCopyWith(Hits value, $Res Function(Hits) then) =
      _$HitsCopyWithImpl<$Res>;
  $Res call({int? found, int? start, String? cursor, List<Hit>? hit});
}

/// @nodoc
class _$HitsCopyWithImpl<$Res> implements $HitsCopyWith<$Res> {
  _$HitsCopyWithImpl(this._value, this._then);

  final Hits _value;
  // ignore: unused_field
  final $Res Function(Hits) _then;

  @override
  $Res call({
    Object? found = freezed,
    Object? start = freezed,
    Object? cursor = freezed,
    Object? hit = freezed,
  }) {
    return _then(_value.copyWith(
      found: found == freezed
          ? _value.found
          : found // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      cursor: cursor == freezed
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hit: hit == freezed
          ? _value.hit
          : hit // ignore: cast_nullable_to_non_nullable
              as List<Hit>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HitsCopyWith<$Res> implements $HitsCopyWith<$Res> {
  factory _$$_HitsCopyWith(_$_Hits value, $Res Function(_$_Hits) then) =
      __$$_HitsCopyWithImpl<$Res>;
  @override
  $Res call({int? found, int? start, String? cursor, List<Hit>? hit});
}

/// @nodoc
class __$$_HitsCopyWithImpl<$Res> extends _$HitsCopyWithImpl<$Res>
    implements _$$_HitsCopyWith<$Res> {
  __$$_HitsCopyWithImpl(_$_Hits _value, $Res Function(_$_Hits) _then)
      : super(_value, (v) => _then(v as _$_Hits));

  @override
  _$_Hits get _value => super._value as _$_Hits;

  @override
  $Res call({
    Object? found = freezed,
    Object? start = freezed,
    Object? cursor = freezed,
    Object? hit = freezed,
  }) {
    return _then(_$_Hits(
      found: found == freezed
          ? _value.found
          : found // ignore: cast_nullable_to_non_nullable
              as int?,
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int?,
      cursor: cursor == freezed
          ? _value.cursor
          : cursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hit: hit == freezed
          ? _value._hit
          : hit // ignore: cast_nullable_to_non_nullable
              as List<Hit>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hits implements _Hits {
  const _$_Hits({this.found, this.start, this.cursor, final List<Hit>? hit})
      : _hit = hit;

  factory _$_Hits.fromJson(Map<String, dynamic> json) => _$$_HitsFromJson(json);

  @override
  final int? found;
  @override
  final int? start;
  @override
  final String? cursor;
  final List<Hit>? _hit;
  @override
  List<Hit>? get hit {
    final value = _hit;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Hits(found: $found, start: $start, cursor: $cursor, hit: $hit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hits &&
            const DeepCollectionEquality().equals(other.found, found) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.cursor, cursor) &&
            const DeepCollectionEquality().equals(other._hit, _hit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(found),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(cursor),
      const DeepCollectionEquality().hash(_hit));

  @JsonKey(ignore: true)
  @override
  _$$_HitsCopyWith<_$_Hits> get copyWith =>
      __$$_HitsCopyWithImpl<_$_Hits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitsToJson(
      this,
    );
  }
}

abstract class _Hits implements Hits {
  const factory _Hits(
      {final int? found,
      final int? start,
      final String? cursor,
      final List<Hit>? hit}) = _$_Hits;

  factory _Hits.fromJson(Map<String, dynamic> json) = _$_Hits.fromJson;

  @override
  int? get found;
  @override
  int? get start;
  @override
  String? get cursor;
  @override
  List<Hit>? get hit;
  @override
  @JsonKey(ignore: true)
  _$$_HitsCopyWith<_$_Hits> get copyWith => throw _privateConstructorUsedError;
}

Hit _$HitFromJson(Map<String, dynamic> json) {
  return _Hit.fromJson(json);
}

/// @nodoc
mixin _$Hit {
  String? get id => throw _privateConstructorUsedError;
  Map<dynamic, List<String>>? get fields => throw _privateConstructorUsedError;
  Map<dynamic, String>? get exprs => throw _privateConstructorUsedError;
  Map<dynamic, String>? get highlights => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HitCopyWith<Hit> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HitCopyWith<$Res> {
  factory $HitCopyWith(Hit value, $Res Function(Hit) then) =
      _$HitCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      Map<dynamic, List<String>>? fields,
      Map<dynamic, String>? exprs,
      Map<dynamic, String>? highlights});
}

/// @nodoc
class _$HitCopyWithImpl<$Res> implements $HitCopyWith<$Res> {
  _$HitCopyWithImpl(this._value, this._then);

  final Hit _value;
  // ignore: unused_field
  final $Res Function(Hit) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? fields = freezed,
    Object? exprs = freezed,
    Object? highlights = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, List<String>>?,
      exprs: exprs == freezed
          ? _value.exprs
          : exprs // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      highlights: highlights == freezed
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HitCopyWith<$Res> implements $HitCopyWith<$Res> {
  factory _$$_HitCopyWith(_$_Hit value, $Res Function(_$_Hit) then) =
      __$$_HitCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      Map<dynamic, List<String>>? fields,
      Map<dynamic, String>? exprs,
      Map<dynamic, String>? highlights});
}

/// @nodoc
class __$$_HitCopyWithImpl<$Res> extends _$HitCopyWithImpl<$Res>
    implements _$$_HitCopyWith<$Res> {
  __$$_HitCopyWithImpl(_$_Hit _value, $Res Function(_$_Hit) _then)
      : super(_value, (v) => _then(v as _$_Hit));

  @override
  _$_Hit get _value => super._value as _$_Hit;

  @override
  $Res call({
    Object? id = freezed,
    Object? fields = freezed,
    Object? exprs = freezed,
    Object? highlights = freezed,
  }) {
    return _then(_$_Hit(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: fields == freezed
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, List<String>>?,
      exprs: exprs == freezed
          ? _value._exprs
          : exprs // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
      highlights: highlights == freezed
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hit implements _Hit {
  const _$_Hit(
      {this.id,
      final Map<dynamic, List<String>>? fields,
      final Map<dynamic, String>? exprs,
      final Map<dynamic, String>? highlights})
      : _fields = fields,
        _exprs = exprs,
        _highlights = highlights;

  factory _$_Hit.fromJson(Map<String, dynamic> json) => _$$_HitFromJson(json);

  @override
  final String? id;
  final Map<dynamic, List<String>>? _fields;
  @override
  Map<dynamic, List<String>>? get fields {
    final value = _fields;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, String>? _exprs;
  @override
  Map<dynamic, String>? get exprs {
    final value = _exprs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<dynamic, String>? _highlights;
  @override
  Map<dynamic, String>? get highlights {
    final value = _highlights;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Hit(id: $id, fields: $fields, exprs: $exprs, highlights: $highlights)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hit &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            const DeepCollectionEquality().equals(other._exprs, _exprs) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_fields),
      const DeepCollectionEquality().hash(_exprs),
      const DeepCollectionEquality().hash(_highlights));

  @JsonKey(ignore: true)
  @override
  _$$_HitCopyWith<_$_Hit> get copyWith =>
      __$$_HitCopyWithImpl<_$_Hit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HitToJson(
      this,
    );
  }
}

abstract class _Hit implements Hit {
  const factory _Hit(
      {final String? id,
      final Map<dynamic, List<String>>? fields,
      final Map<dynamic, String>? exprs,
      final Map<dynamic, String>? highlights}) = _$_Hit;

  factory _Hit.fromJson(Map<String, dynamic> json) = _$_Hit.fromJson;

  @override
  String? get id;
  @override
  Map<dynamic, List<String>>? get fields;
  @override
  Map<dynamic, String>? get exprs;
  @override
  Map<dynamic, String>? get highlights;
  @override
  @JsonKey(ignore: true)
  _$$_HitCopyWith<_$_Hit> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterForm _$FilterFormFromJson(Map<String, dynamic> json) {
  return _FilterForm.fromJson(json);
}

/// @nodoc
mixin _$FilterForm {
  Bundle? get idToName => throw _privateConstructorUsedError;
  Bundle? get nameToId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterFormCopyWith<FilterForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterFormCopyWith<$Res> {
  factory $FilterFormCopyWith(
          FilterForm value, $Res Function(FilterForm) then) =
      _$FilterFormCopyWithImpl<$Res>;
  $Res call({Bundle? idToName, Bundle? nameToId});

  $BundleCopyWith<$Res>? get idToName;
  $BundleCopyWith<$Res>? get nameToId;
}

/// @nodoc
class _$FilterFormCopyWithImpl<$Res> implements $FilterFormCopyWith<$Res> {
  _$FilterFormCopyWithImpl(this._value, this._then);

  final FilterForm _value;
  // ignore: unused_field
  final $Res Function(FilterForm) _then;

  @override
  $Res call({
    Object? idToName = freezed,
    Object? nameToId = freezed,
  }) {
    return _then(_value.copyWith(
      idToName: idToName == freezed
          ? _value.idToName
          : idToName // ignore: cast_nullable_to_non_nullable
              as Bundle?,
      nameToId: nameToId == freezed
          ? _value.nameToId
          : nameToId // ignore: cast_nullable_to_non_nullable
              as Bundle?,
    ));
  }

  @override
  $BundleCopyWith<$Res>? get idToName {
    if (_value.idToName == null) {
      return null;
    }

    return $BundleCopyWith<$Res>(_value.idToName!, (value) {
      return _then(_value.copyWith(idToName: value));
    });
  }

  @override
  $BundleCopyWith<$Res>? get nameToId {
    if (_value.nameToId == null) {
      return null;
    }

    return $BundleCopyWith<$Res>(_value.nameToId!, (value) {
      return _then(_value.copyWith(nameToId: value));
    });
  }
}

/// @nodoc
abstract class _$$_FilterFormCopyWith<$Res>
    implements $FilterFormCopyWith<$Res> {
  factory _$$_FilterFormCopyWith(
          _$_FilterForm value, $Res Function(_$_FilterForm) then) =
      __$$_FilterFormCopyWithImpl<$Res>;
  @override
  $Res call({Bundle? idToName, Bundle? nameToId});

  @override
  $BundleCopyWith<$Res>? get idToName;
  @override
  $BundleCopyWith<$Res>? get nameToId;
}

/// @nodoc
class __$$_FilterFormCopyWithImpl<$Res> extends _$FilterFormCopyWithImpl<$Res>
    implements _$$_FilterFormCopyWith<$Res> {
  __$$_FilterFormCopyWithImpl(
      _$_FilterForm _value, $Res Function(_$_FilterForm) _then)
      : super(_value, (v) => _then(v as _$_FilterForm));

  @override
  _$_FilterForm get _value => super._value as _$_FilterForm;

  @override
  $Res call({
    Object? idToName = freezed,
    Object? nameToId = freezed,
  }) {
    return _then(_$_FilterForm(
      idToName: idToName == freezed
          ? _value.idToName
          : idToName // ignore: cast_nullable_to_non_nullable
              as Bundle?,
      nameToId: nameToId == freezed
          ? _value.nameToId
          : nameToId // ignore: cast_nullable_to_non_nullable
              as Bundle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterForm implements _FilterForm {
  const _$_FilterForm({this.idToName, this.nameToId});

  factory _$_FilterForm.fromJson(Map<String, dynamic> json) =>
      _$$_FilterFormFromJson(json);

  @override
  final Bundle? idToName;
  @override
  final Bundle? nameToId;

  @override
  String toString() {
    return 'FilterForm(idToName: $idToName, nameToId: $nameToId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterForm &&
            const DeepCollectionEquality().equals(other.idToName, idToName) &&
            const DeepCollectionEquality().equals(other.nameToId, nameToId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idToName),
      const DeepCollectionEquality().hash(nameToId));

  @JsonKey(ignore: true)
  @override
  _$$_FilterFormCopyWith<_$_FilterForm> get copyWith =>
      __$$_FilterFormCopyWithImpl<_$_FilterForm>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterFormToJson(
      this,
    );
  }
}

abstract class _FilterForm implements FilterForm {
  const factory _FilterForm({final Bundle? idToName, final Bundle? nameToId}) =
      _$_FilterForm;

  factory _FilterForm.fromJson(Map<String, dynamic> json) =
      _$_FilterForm.fromJson;

  @override
  Bundle? get idToName;
  @override
  Bundle? get nameToId;
  @override
  @JsonKey(ignore: true)
  _$$_FilterFormCopyWith<_$_FilterForm> get copyWith =>
      throw _privateConstructorUsedError;
}

Bundle _$BundleFromJson(Map<String, dynamic> json) {
  return _Bundle.fromJson(json);
}

/// @nodoc
mixin _$Bundle {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BundleCopyWith<$Res> {
  factory $BundleCopyWith(Bundle value, $Res Function(Bundle) then) =
      _$BundleCopyWithImpl<$Res>;
}

/// @nodoc
class _$BundleCopyWithImpl<$Res> implements $BundleCopyWith<$Res> {
  _$BundleCopyWithImpl(this._value, this._then);

  final Bundle _value;
  // ignore: unused_field
  final $Res Function(Bundle) _then;
}

/// @nodoc
abstract class _$$_BundleCopyWith<$Res> {
  factory _$$_BundleCopyWith(_$_Bundle value, $Res Function(_$_Bundle) then) =
      __$$_BundleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BundleCopyWithImpl<$Res> extends _$BundleCopyWithImpl<$Res>
    implements _$$_BundleCopyWith<$Res> {
  __$$_BundleCopyWithImpl(_$_Bundle _value, $Res Function(_$_Bundle) _then)
      : super(_value, (v) => _then(v as _$_Bundle));

  @override
  _$_Bundle get _value => super._value as _$_Bundle;
}

/// @nodoc
@JsonSerializable()
class _$_Bundle implements _Bundle {
  const _$_Bundle();

  factory _$_Bundle.fromJson(Map<String, dynamic> json) =>
      _$$_BundleFromJson(json);

  @override
  String toString() {
    return 'Bundle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Bundle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_BundleToJson(
      this,
    );
  }
}

abstract class _Bundle implements Bundle {
  const factory _Bundle() = _$_Bundle;

  factory _Bundle.fromJson(Map<String, dynamic> json) = _$_Bundle.fromJson;
}

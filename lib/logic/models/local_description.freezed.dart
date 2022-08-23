// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalDescription _$LocalDescriptionFromJson(Map<String, dynamic> json) {
  return _LocalDescription.fromJson(json);
}

/// @nodoc
mixin _$LocalDescription {
  String get locale => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalDescriptionCopyWith<LocalDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalDescriptionCopyWith<$Res> {
  factory $LocalDescriptionCopyWith(
          LocalDescription value, $Res Function(LocalDescription) then) =
      _$LocalDescriptionCopyWithImpl<$Res>;
  $Res call({String locale, Description description});

  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class _$LocalDescriptionCopyWithImpl<$Res>
    implements $LocalDescriptionCopyWith<$Res> {
  _$LocalDescriptionCopyWithImpl(this._value, this._then);

  final LocalDescription _value;
  // ignore: unused_field
  final $Res Function(LocalDescription) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }

  @override
  $DescriptionCopyWith<$Res> get description {
    return $DescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }
}

/// @nodoc
abstract class _$$_LocalDescriptionCopyWith<$Res>
    implements $LocalDescriptionCopyWith<$Res> {
  factory _$$_LocalDescriptionCopyWith(
          _$_LocalDescription value, $Res Function(_$_LocalDescription) then) =
      __$$_LocalDescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String locale, Description description});

  @override
  $DescriptionCopyWith<$Res> get description;
}

/// @nodoc
class __$$_LocalDescriptionCopyWithImpl<$Res>
    extends _$LocalDescriptionCopyWithImpl<$Res>
    implements _$$_LocalDescriptionCopyWith<$Res> {
  __$$_LocalDescriptionCopyWithImpl(
      _$_LocalDescription _value, $Res Function(_$_LocalDescription) _then)
      : super(_value, (v) => _then(v as _$_LocalDescription));

  @override
  _$_LocalDescription get _value => super._value as _$_LocalDescription;

  @override
  $Res call({
    Object? locale = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_LocalDescription(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalDescription implements _LocalDescription {
  const _$_LocalDescription({required this.locale, required this.description});

  factory _$_LocalDescription.fromJson(Map<String, dynamic> json) =>
      _$$_LocalDescriptionFromJson(json);

  @override
  final String locale;
  @override
  final Description description;

  @override
  String toString() {
    return 'LocalDescription(locale: $locale, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalDescription &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_LocalDescriptionCopyWith<_$_LocalDescription> get copyWith =>
      __$$_LocalDescriptionCopyWithImpl<_$_LocalDescription>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalDescriptionToJson(
      this,
    );
  }
}

abstract class _LocalDescription implements LocalDescription {
  const factory _LocalDescription(
      {required final String locale,
      required final Description description}) = _$_LocalDescription;

  factory _LocalDescription.fromJson(Map<String, dynamic> json) =
      _$_LocalDescription.fromJson;

  @override
  String get locale;
  @override
  Description get description;
  @override
  @JsonKey(ignore: true)
  _$$_LocalDescriptionCopyWith<_$_LocalDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

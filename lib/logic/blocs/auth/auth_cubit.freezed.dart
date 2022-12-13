// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({dynamic err});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_$_Error(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.err);

  @override
  final dynamic err;

  @override
  String toString() {
    return 'AuthState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.err, err));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(err));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final dynamic err) = _$_Error;

  dynamic get err;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'AuthState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements AuthState {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_SuccessWithProviderCopyWith<$Res> {
  factory _$$_SuccessWithProviderCopyWith(_$_SuccessWithProvider value,
          $Res Function(_$_SuccessWithProvider) then) =
      __$$_SuccessWithProviderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessWithProviderCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SuccessWithProviderCopyWith<$Res> {
  __$$_SuccessWithProviderCopyWithImpl(_$_SuccessWithProvider _value,
      $Res Function(_$_SuccessWithProvider) _then)
      : super(_value, (v) => _then(v as _$_SuccessWithProvider));

  @override
  _$_SuccessWithProvider get _value => super._value as _$_SuccessWithProvider;
}

/// @nodoc

class _$_SuccessWithProvider implements _SuccessWithProvider {
  const _$_SuccessWithProvider();

  @override
  String toString() {
    return 'AuthState.successWithProvider()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SuccessWithProvider);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return successWithProvider();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return successWithProvider?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (successWithProvider != null) {
      return successWithProvider();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return successWithProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return successWithProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (successWithProvider != null) {
      return successWithProvider(this);
    }
    return orElse();
  }
}

abstract class _SuccessWithProvider implements AuthState {
  const factory _SuccessWithProvider() = _$_SuccessWithProvider;
}

/// @nodoc
abstract class _$$_SuccessResponseCopyWith<$Res> {
  factory _$$_SuccessResponseCopyWith(
          _$_SuccessResponse value, $Res Function(_$_SuccessResponse) then) =
      __$$_SuccessResponseCopyWithImpl<$Res>;
  $Res call({AuthResponse response});

  $AuthResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$_SuccessResponseCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_SuccessResponseCopyWith<$Res> {
  __$$_SuccessResponseCopyWithImpl(
      _$_SuccessResponse _value, $Res Function(_$_SuccessResponse) _then)
      : super(_value, (v) => _then(v as _$_SuccessResponse));

  @override
  _$_SuccessResponse get _value => super._value as _$_SuccessResponse;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$_SuccessResponse(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthResponse,
    ));
  }

  @override
  $AuthResponseCopyWith<$Res> get response {
    return $AuthResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$_SuccessResponse implements _SuccessResponse {
  const _$_SuccessResponse(this.response);

  @override
  final AuthResponse response;

  @override
  String toString() {
    return 'AuthState.successResponse(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessResponse &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessResponseCopyWith<_$_SuccessResponse> get copyWith =>
      __$$_SuccessResponseCopyWithImpl<_$_SuccessResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic err) error,
    required TResult Function() success,
    required TResult Function() successWithProvider,
    required TResult Function(AuthResponse response) successResponse,
  }) {
    return successResponse(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
  }) {
    return successResponse?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic err)? error,
    TResult Function()? success,
    TResult Function()? successWithProvider,
    TResult Function(AuthResponse response)? successResponse,
    required TResult orElse(),
  }) {
    if (successResponse != null) {
      return successResponse(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_SuccessWithProvider value) successWithProvider,
    required TResult Function(_SuccessResponse value) successResponse,
  }) {
    return successResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
  }) {
    return successResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_SuccessWithProvider value)? successWithProvider,
    TResult Function(_SuccessResponse value)? successResponse,
    required TResult orElse(),
  }) {
    if (successResponse != null) {
      return successResponse(this);
    }
    return orElse();
  }
}

abstract class _SuccessResponse implements AuthState {
  const factory _SuccessResponse(final AuthResponse response) =
      _$_SuccessResponse;

  AuthResponse get response;
  @JsonKey(ignore: true)
  _$$_SuccessResponseCopyWith<_$_SuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

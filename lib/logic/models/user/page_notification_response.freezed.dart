// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'page_notification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageNotificationResponse _$PageNotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _PageNotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$PageNotificationResponse {
  int? get totalPages => throw _privateConstructorUsedError;
  int? get totalElements => throw _privateConstructorUsedError;
  Sort? get sort => throw _privateConstructorUsedError;
  bool? get first => throw _privateConstructorUsedError;
  bool? get last => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;
  int? get numberOfElements => throw _privateConstructorUsedError;
  Pageable? get pageable => throw _privateConstructorUsedError;
  List<NotificationResponse>? get content => throw _privateConstructorUsedError;
  bool? get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageNotificationResponseCopyWith<PageNotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageNotificationResponseCopyWith<$Res> {
  factory $PageNotificationResponseCopyWith(PageNotificationResponse value,
          $Res Function(PageNotificationResponse) then) =
      _$PageNotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {int? totalPages,
      int? totalElements,
      Sort? sort,
      bool? first,
      bool? last,
      int? number,
      int? numberOfElements,
      Pageable? pageable,
      List<NotificationResponse>? content,
      bool? empty});

  $SortCopyWith<$Res>? get sort;
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class _$PageNotificationResponseCopyWithImpl<$Res>
    implements $PageNotificationResponseCopyWith<$Res> {
  _$PageNotificationResponseCopyWithImpl(this._value, this._then);

  final PageNotificationResponse _value;
  // ignore: unused_field
  final $Res Function(PageNotificationResponse) _then;

  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? sort = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
    Object? pageable = freezed,
    Object? content = freezed,
    Object? empty = freezed,
  }) {
    return _then(_value.copyWith(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      pageable: pageable == freezed
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<NotificationResponse>?,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $SortCopyWith<$Res>? get sort {
    if (_value.sort == null) {
      return null;
    }

    return $SortCopyWith<$Res>(_value.sort!, (value) {
      return _then(_value.copyWith(sort: value));
    });
  }

  @override
  $PageableCopyWith<$Res>? get pageable {
    if (_value.pageable == null) {
      return null;
    }

    return $PageableCopyWith<$Res>(_value.pageable!, (value) {
      return _then(_value.copyWith(pageable: value));
    });
  }
}

/// @nodoc
abstract class _$$_PageNotificationResponseCopyWith<$Res>
    implements $PageNotificationResponseCopyWith<$Res> {
  factory _$$_PageNotificationResponseCopyWith(
          _$_PageNotificationResponse value,
          $Res Function(_$_PageNotificationResponse) then) =
      __$$_PageNotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? totalPages,
      int? totalElements,
      Sort? sort,
      bool? first,
      bool? last,
      int? number,
      int? numberOfElements,
      Pageable? pageable,
      List<NotificationResponse>? content,
      bool? empty});

  @override
  $SortCopyWith<$Res>? get sort;
  @override
  $PageableCopyWith<$Res>? get pageable;
}

/// @nodoc
class __$$_PageNotificationResponseCopyWithImpl<$Res>
    extends _$PageNotificationResponseCopyWithImpl<$Res>
    implements _$$_PageNotificationResponseCopyWith<$Res> {
  __$$_PageNotificationResponseCopyWithImpl(_$_PageNotificationResponse _value,
      $Res Function(_$_PageNotificationResponse) _then)
      : super(_value, (v) => _then(v as _$_PageNotificationResponse));

  @override
  _$_PageNotificationResponse get _value =>
      super._value as _$_PageNotificationResponse;

  @override
  $Res call({
    Object? totalPages = freezed,
    Object? totalElements = freezed,
    Object? sort = freezed,
    Object? first = freezed,
    Object? last = freezed,
    Object? number = freezed,
    Object? numberOfElements = freezed,
    Object? pageable = freezed,
    Object? content = freezed,
    Object? empty = freezed,
  }) {
    return _then(_$_PageNotificationResponse(
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalElements: totalElements == freezed
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: sort == freezed
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort?,
      first: first == freezed
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool?,
      last: last == freezed
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool?,
      number: number == freezed
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      numberOfElements: numberOfElements == freezed
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int?,
      pageable: pageable == freezed
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable?,
      content: content == freezed
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<NotificationResponse>?,
      empty: empty == freezed
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_PageNotificationResponse implements _PageNotificationResponse {
  const _$_PageNotificationResponse(
      {this.totalPages,
      this.totalElements,
      this.sort,
      this.first,
      this.last,
      this.number,
      this.numberOfElements,
      this.pageable,
      final List<NotificationResponse>? content,
      this.empty})
      : _content = content;

  factory _$_PageNotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PageNotificationResponseFromJson(json);

  @override
  final int? totalPages;
  @override
  final int? totalElements;
  @override
  final Sort? sort;
  @override
  final bool? first;
  @override
  final bool? last;
  @override
  final int? number;
  @override
  final int? numberOfElements;
  @override
  final Pageable? pageable;
  final List<NotificationResponse>? _content;
  @override
  List<NotificationResponse>? get content {
    final value = _content;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? empty;

  @override
  String toString() {
    return 'PageNotificationResponse(totalPages: $totalPages, totalElements: $totalElements, sort: $sort, first: $first, last: $last, number: $number, numberOfElements: $numberOfElements, pageable: $pageable, content: $content, empty: $empty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageNotificationResponse &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages) &&
            const DeepCollectionEquality()
                .equals(other.totalElements, totalElements) &&
            const DeepCollectionEquality().equals(other.sort, sort) &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.last, last) &&
            const DeepCollectionEquality().equals(other.number, number) &&
            const DeepCollectionEquality()
                .equals(other.numberOfElements, numberOfElements) &&
            const DeepCollectionEquality().equals(other.pageable, pageable) &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            const DeepCollectionEquality().equals(other.empty, empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalPages),
      const DeepCollectionEquality().hash(totalElements),
      const DeepCollectionEquality().hash(sort),
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(last),
      const DeepCollectionEquality().hash(number),
      const DeepCollectionEquality().hash(numberOfElements),
      const DeepCollectionEquality().hash(pageable),
      const DeepCollectionEquality().hash(_content),
      const DeepCollectionEquality().hash(empty));

  @JsonKey(ignore: true)
  @override
  _$$_PageNotificationResponseCopyWith<_$_PageNotificationResponse>
      get copyWith => __$$_PageNotificationResponseCopyWithImpl<
          _$_PageNotificationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageNotificationResponseToJson(
      this,
    );
  }
}

abstract class _PageNotificationResponse implements PageNotificationResponse {
  const factory _PageNotificationResponse(
      {final int? totalPages,
      final int? totalElements,
      final Sort? sort,
      final bool? first,
      final bool? last,
      final int? number,
      final int? numberOfElements,
      final Pageable? pageable,
      final List<NotificationResponse>? content,
      final bool? empty}) = _$_PageNotificationResponse;

  factory _PageNotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_PageNotificationResponse.fromJson;

  @override
  int? get totalPages;
  @override
  int? get totalElements;
  @override
  Sort? get sort;
  @override
  bool? get first;
  @override
  bool? get last;
  @override
  int? get number;
  @override
  int? get numberOfElements;
  @override
  Pageable? get pageable;
  @override
  List<NotificationResponse>? get content;
  @override
  bool? get empty;
  @override
  @JsonKey(ignore: true)
  _$$_PageNotificationResponseCopyWith<_$_PageNotificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
mixin _$NotificationResponse {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get senderName => throw _privateConstructorUsedError;
  String? get senderId => throw _privateConstructorUsedError;
  String? get senderImage => throw _privateConstructorUsedError;
  String? get senderType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      String? message,
      String? senderName,
      String? senderId,
      String? senderImage,
      String? senderType});
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  final NotificationResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? senderName = freezed,
    Object? senderId = freezed,
    Object? senderImage = freezed,
    Object? senderType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderImage: senderImage == freezed
          ? _value.senderImage
          : senderImage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderType: senderType == freezed
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotificationResponseCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$$_NotificationResponseCopyWith(_$_NotificationResponse value,
          $Res Function(_$_NotificationResponse) then) =
      __$$_NotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      String? message,
      String? senderName,
      String? senderId,
      String? senderImage,
      String? senderType});
}

/// @nodoc
class __$$_NotificationResponseCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res>
    implements _$$_NotificationResponseCopyWith<$Res> {
  __$$_NotificationResponseCopyWithImpl(_$_NotificationResponse _value,
      $Res Function(_$_NotificationResponse) _then)
      : super(_value, (v) => _then(v as _$_NotificationResponse));

  @override
  _$_NotificationResponse get _value => super._value as _$_NotificationResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? senderName = freezed,
    Object? senderId = freezed,
    Object? senderImage = freezed,
    Object? senderType = freezed,
  }) {
    return _then(_$_NotificationResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      senderName: senderName == freezed
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String?,
      senderId: senderId == freezed
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String?,
      senderImage: senderImage == freezed
          ? _value.senderImage
          : senderImage // ignore: cast_nullable_to_non_nullable
              as String?,
      senderType: senderType == freezed
          ? _value.senderType
          : senderType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponse implements _NotificationResponse {
  const _$_NotificationResponse(
      {this.id,
      this.title,
      this.message,
      this.senderName,
      this.senderId,
      this.senderImage,
      this.senderType});

  factory _$_NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationResponseFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? message;
  @override
  final String? senderName;
  @override
  final String? senderId;
  @override
  final String? senderImage;
  @override
  final String? senderType;

  @override
  String toString() {
    return 'NotificationResponse(id: $id, title: $title, message: $message, senderName: $senderName, senderId: $senderId, senderImage: $senderImage, senderType: $senderType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.senderName, senderName) &&
            const DeepCollectionEquality().equals(other.senderId, senderId) &&
            const DeepCollectionEquality()
                .equals(other.senderImage, senderImage) &&
            const DeepCollectionEquality()
                .equals(other.senderType, senderType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(senderName),
      const DeepCollectionEquality().hash(senderId),
      const DeepCollectionEquality().hash(senderImage),
      const DeepCollectionEquality().hash(senderType));

  @JsonKey(ignore: true)
  @override
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      __$$_NotificationResponseCopyWithImpl<_$_NotificationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationResponseToJson(
      this,
    );
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
      {final String? id,
      final String? title,
      final String? message,
      final String? senderName,
      final String? senderId,
      final String? senderImage,
      final String? senderType}) = _$_NotificationResponse;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponse.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get message;
  @override
  String? get senderName;
  @override
  String? get senderId;
  @override
  String? get senderImage;
  @override
  String? get senderType;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationResponseCopyWith<_$_NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

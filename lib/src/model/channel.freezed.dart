// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChannelData _$ChannelDataFromJson(Map<String, dynamic> json) {
  return _ChannelData.fromJson(json);
}

/// @nodoc
mixin _$ChannelData {
  ChannelProviderData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelDataCopyWith<ChannelData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelDataCopyWith<$Res> {
  factory $ChannelDataCopyWith(
          ChannelData value, $Res Function(ChannelData) then) =
      _$ChannelDataCopyWithImpl<$Res, ChannelData>;
  @useResult
  $Res call({ChannelProviderData data});

  $ChannelProviderDataCopyWith<$Res> get data;
}

/// @nodoc
class _$ChannelDataCopyWithImpl<$Res, $Val extends ChannelData>
    implements $ChannelDataCopyWith<$Res> {
  _$ChannelDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChannelProviderData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ChannelProviderDataCopyWith<$Res> get data {
    return $ChannelProviderDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChannelDataImplCopyWith<$Res>
    implements $ChannelDataCopyWith<$Res> {
  factory _$$ChannelDataImplCopyWith(
          _$ChannelDataImpl value, $Res Function(_$ChannelDataImpl) then) =
      __$$ChannelDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChannelProviderData data});

  @override
  $ChannelProviderDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChannelDataImplCopyWithImpl<$Res>
    extends _$ChannelDataCopyWithImpl<$Res, _$ChannelDataImpl>
    implements _$$ChannelDataImplCopyWith<$Res> {
  __$$ChannelDataImplCopyWithImpl(
      _$ChannelDataImpl _value, $Res Function(_$ChannelDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChannelDataImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChannelProviderData,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChannelDataImpl implements _ChannelData {
  const _$ChannelDataImpl({required this.data});

  factory _$ChannelDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelDataImplFromJson(json);

  @override
  final ChannelProviderData data;

  @override
  String toString() {
    return 'ChannelData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelDataImplCopyWith<_$ChannelDataImpl> get copyWith =>
      __$$ChannelDataImplCopyWithImpl<_$ChannelDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelDataImplToJson(
      this,
    );
  }
}

abstract class _ChannelData implements ChannelData {
  const factory _ChannelData({required final ChannelProviderData data}) =
      _$ChannelDataImpl;

  factory _ChannelData.fromJson(Map<String, dynamic> json) =
      _$ChannelDataImpl.fromJson;

  @override
  ChannelProviderData get data;
  @override
  @JsonKey(ignore: true)
  _$$ChannelDataImplCopyWith<_$ChannelDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelProviderData _$ChannelProviderDataFromJson(Map<String, dynamic> json) {
  return _ChannelProviderData.fromJson(json);
}

/// @nodoc
mixin _$ChannelProviderData {
  List<String> get tokens => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelProviderDataCopyWith<ChannelProviderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelProviderDataCopyWith<$Res> {
  factory $ChannelProviderDataCopyWith(
          ChannelProviderData value, $Res Function(ChannelProviderData) then) =
      _$ChannelProviderDataCopyWithImpl<$Res, ChannelProviderData>;
  @useResult
  $Res call({List<String> tokens});
}

/// @nodoc
class _$ChannelProviderDataCopyWithImpl<$Res, $Val extends ChannelProviderData>
    implements $ChannelProviderDataCopyWith<$Res> {
  _$ChannelProviderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelProviderDataImplCopyWith<$Res>
    implements $ChannelProviderDataCopyWith<$Res> {
  factory _$$ChannelProviderDataImplCopyWith(_$ChannelProviderDataImpl value,
          $Res Function(_$ChannelProviderDataImpl) then) =
      __$$ChannelProviderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> tokens});
}

/// @nodoc
class __$$ChannelProviderDataImplCopyWithImpl<$Res>
    extends _$ChannelProviderDataCopyWithImpl<$Res, _$ChannelProviderDataImpl>
    implements _$$ChannelProviderDataImplCopyWith<$Res> {
  __$$ChannelProviderDataImplCopyWithImpl(_$ChannelProviderDataImpl _value,
      $Res Function(_$ChannelProviderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
  }) {
    return _then(_$ChannelProviderDataImpl(
      tokens: null == tokens
          ? _value._tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ChannelProviderDataImpl implements _ChannelProviderData {
  const _$ChannelProviderDataImpl({required final List<String> tokens})
      : _tokens = tokens;

  factory _$ChannelProviderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelProviderDataImplFromJson(json);

  final List<String> _tokens;
  @override
  List<String> get tokens {
    if (_tokens is EqualUnmodifiableListView) return _tokens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tokens);
  }

  @override
  String toString() {
    return 'ChannelProviderData(tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelProviderDataImpl &&
            const DeepCollectionEquality().equals(other._tokens, _tokens));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tokens));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelProviderDataImplCopyWith<_$ChannelProviderDataImpl> get copyWith =>
      __$$ChannelProviderDataImplCopyWithImpl<_$ChannelProviderDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelProviderDataImplToJson(
      this,
    );
  }
}

abstract class _ChannelProviderData implements ChannelProviderData {
  const factory _ChannelProviderData({required final List<String> tokens}) =
      _$ChannelProviderDataImpl;

  factory _ChannelProviderData.fromJson(Map<String, dynamic> json) =
      _$ChannelProviderDataImpl.fromJson;

  @override
  List<String> get tokens;
  @override
  @JsonKey(ignore: true)
  _$$ChannelProviderDataImplCopyWith<_$ChannelProviderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

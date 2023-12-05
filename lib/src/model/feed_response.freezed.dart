// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnNewMessageResponse _$OnNewMessageResponseFromJson(Map<String, dynamic> json) {
  return _OnNewMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$OnNewMessageResponse {
  FeedMetadata get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnNewMessageResponseCopyWith<OnNewMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnNewMessageResponseCopyWith<$Res> {
  factory $OnNewMessageResponseCopyWith(OnNewMessageResponse value,
          $Res Function(OnNewMessageResponse) then) =
      _$OnNewMessageResponseCopyWithImpl<$Res, OnNewMessageResponse>;
  @useResult
  $Res call({FeedMetadata metadata});

  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$OnNewMessageResponseCopyWithImpl<$Res,
        $Val extends OnNewMessageResponse>
    implements $OnNewMessageResponseCopyWith<$Res> {
  _$OnNewMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnNewMessageResponseImplCopyWith<$Res>
    implements $OnNewMessageResponseCopyWith<$Res> {
  factory _$$OnNewMessageResponseImplCopyWith(_$OnNewMessageResponseImpl value,
          $Res Function(_$OnNewMessageResponseImpl) then) =
      __$$OnNewMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FeedMetadata metadata});

  @override
  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$OnNewMessageResponseImplCopyWithImpl<$Res>
    extends _$OnNewMessageResponseCopyWithImpl<$Res, _$OnNewMessageResponseImpl>
    implements _$$OnNewMessageResponseImplCopyWith<$Res> {
  __$$OnNewMessageResponseImplCopyWithImpl(_$OnNewMessageResponseImpl _value,
      $Res Function(_$OnNewMessageResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_$OnNewMessageResponseImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$OnNewMessageResponseImpl implements _OnNewMessageResponse {
  const _$OnNewMessageResponseImpl({required this.metadata});

  factory _$OnNewMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnNewMessageResponseImplFromJson(json);

  @override
  final FeedMetadata metadata;

  @override
  String toString() {
    return 'OnNewMessageResponse(metadata: $metadata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnNewMessageResponseImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnNewMessageResponseImplCopyWith<_$OnNewMessageResponseImpl>
      get copyWith =>
          __$$OnNewMessageResponseImplCopyWithImpl<_$OnNewMessageResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnNewMessageResponseImplToJson(
      this,
    );
  }
}

abstract class _OnNewMessageResponse implements OnNewMessageResponse {
  const factory _OnNewMessageResponse({required final FeedMetadata metadata}) =
      _$OnNewMessageResponseImpl;

  factory _OnNewMessageResponse.fromJson(Map<String, dynamic> json) =
      _$OnNewMessageResponseImpl.fromJson;

  @override
  FeedMetadata get metadata;
  @override
  @JsonKey(ignore: true)
  _$$OnNewMessageResponseImplCopyWith<_$OnNewMessageResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

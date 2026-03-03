// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnNewMessageResponse {

 FeedMetadata get metadata;
/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OnNewMessageResponseCopyWith<OnNewMessageResponse> get copyWith => _$OnNewMessageResponseCopyWithImpl<OnNewMessageResponse>(this as OnNewMessageResponse, _$identity);

  /// Serializes this OnNewMessageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OnNewMessageResponse&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata);

@override
String toString() {
  return 'OnNewMessageResponse(metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class $OnNewMessageResponseCopyWith<$Res>  {
  factory $OnNewMessageResponseCopyWith(OnNewMessageResponse value, $Res Function(OnNewMessageResponse) _then) = _$OnNewMessageResponseCopyWithImpl;
@useResult
$Res call({
 FeedMetadata metadata
});


$FeedMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class _$OnNewMessageResponseCopyWithImpl<$Res>
    implements $OnNewMessageResponseCopyWith<$Res> {
  _$OnNewMessageResponseCopyWithImpl(this._self, this._then);

  final OnNewMessageResponse _self;
  final $Res Function(OnNewMessageResponse) _then;

/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? metadata = null,}) {
  return _then(_self.copyWith(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as FeedMetadata,
  ));
}
/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedMetadataCopyWith<$Res> get metadata {
  
  return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}


/// Adds pattern-matching-related methods to [OnNewMessageResponse].
extension OnNewMessageResponsePatterns on OnNewMessageResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OnNewMessageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OnNewMessageResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OnNewMessageResponse value)  $default,){
final _that = this;
switch (_that) {
case _OnNewMessageResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OnNewMessageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _OnNewMessageResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FeedMetadata metadata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OnNewMessageResponse() when $default != null:
return $default(_that.metadata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FeedMetadata metadata)  $default,) {final _that = this;
switch (_that) {
case _OnNewMessageResponse():
return $default(_that.metadata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FeedMetadata metadata)?  $default,) {final _that = this;
switch (_that) {
case _OnNewMessageResponse() when $default != null:
return $default(_that.metadata);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _OnNewMessageResponse implements OnNewMessageResponse {
  const _OnNewMessageResponse({required this.metadata});
  factory _OnNewMessageResponse.fromJson(Map<String, dynamic> json) => _$OnNewMessageResponseFromJson(json);

@override final  FeedMetadata metadata;

/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OnNewMessageResponseCopyWith<_OnNewMessageResponse> get copyWith => __$OnNewMessageResponseCopyWithImpl<_OnNewMessageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OnNewMessageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OnNewMessageResponse&&(identical(other.metadata, metadata) || other.metadata == metadata));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,metadata);

@override
String toString() {
  return 'OnNewMessageResponse(metadata: $metadata)';
}


}

/// @nodoc
abstract mixin class _$OnNewMessageResponseCopyWith<$Res> implements $OnNewMessageResponseCopyWith<$Res> {
  factory _$OnNewMessageResponseCopyWith(_OnNewMessageResponse value, $Res Function(_OnNewMessageResponse) _then) = __$OnNewMessageResponseCopyWithImpl;
@override @useResult
$Res call({
 FeedMetadata metadata
});


@override $FeedMetadataCopyWith<$Res> get metadata;

}
/// @nodoc
class __$OnNewMessageResponseCopyWithImpl<$Res>
    implements _$OnNewMessageResponseCopyWith<$Res> {
  __$OnNewMessageResponseCopyWithImpl(this._self, this._then);

  final _OnNewMessageResponse _self;
  final $Res Function(_OnNewMessageResponse) _then;

/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? metadata = null,}) {
  return _then(_OnNewMessageResponse(
metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as FeedMetadata,
  ));
}

/// Create a copy of OnNewMessageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FeedMetadataCopyWith<$Res> get metadata {
  
  return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
    return _then(_self.copyWith(metadata: value));
  });
}
}

// dart format on

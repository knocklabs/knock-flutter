// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$KnockApiResponse {

 int get status; StatusCode get statusCode; String? get body; Object? get error;
/// Create a copy of KnockApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KnockApiResponseCopyWith<KnockApiResponse> get copyWith => _$KnockApiResponseCopyWithImpl<KnockApiResponse>(this as KnockApiResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KnockApiResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusCode,body,const DeepCollectionEquality().hash(error));



}

/// @nodoc
abstract mixin class $KnockApiResponseCopyWith<$Res>  {
  factory $KnockApiResponseCopyWith(KnockApiResponse value, $Res Function(KnockApiResponse) _then) = _$KnockApiResponseCopyWithImpl;
@useResult
$Res call({
 int status, StatusCode statusCode, String? body, Object? error
});




}
/// @nodoc
class _$KnockApiResponseCopyWithImpl<$Res>
    implements $KnockApiResponseCopyWith<$Res> {
  _$KnockApiResponseCopyWithImpl(this._self, this._then);

  final KnockApiResponse _self;
  final $Res Function(KnockApiResponse) _then;

/// Create a copy of KnockApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusCode = null,Object? body = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as StatusCode,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error ,
  ));
}

}


/// Adds pattern-matching-related methods to [KnockApiResponse].
extension KnockApiResponsePatterns on KnockApiResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KnockApiResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KnockApiResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KnockApiResponse value)  $default,){
final _that = this;
switch (_that) {
case _KnockApiResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KnockApiResponse value)?  $default,){
final _that = this;
switch (_that) {
case _KnockApiResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int status,  StatusCode statusCode,  String? body,  Object? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KnockApiResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.body,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int status,  StatusCode statusCode,  String? body,  Object? error)  $default,) {final _that = this;
switch (_that) {
case _KnockApiResponse():
return $default(_that.status,_that.statusCode,_that.body,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int status,  StatusCode statusCode,  String? body,  Object? error)?  $default,) {final _that = this;
switch (_that) {
case _KnockApiResponse() when $default != null:
return $default(_that.status,_that.statusCode,_that.body,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _KnockApiResponse extends KnockApiResponse {
  const _KnockApiResponse({required this.status, required this.statusCode, this.body, this.error}): super._();
  

@override final  int status;
@override final  StatusCode statusCode;
@override final  String? body;
@override final  Object? error;

/// Create a copy of KnockApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KnockApiResponseCopyWith<_KnockApiResponse> get copyWith => __$KnockApiResponseCopyWithImpl<_KnockApiResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KnockApiResponse&&(identical(other.status, status) || other.status == status)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.body, body) || other.body == body)&&const DeepCollectionEquality().equals(other.error, error));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusCode,body,const DeepCollectionEquality().hash(error));



}

/// @nodoc
abstract mixin class _$KnockApiResponseCopyWith<$Res> implements $KnockApiResponseCopyWith<$Res> {
  factory _$KnockApiResponseCopyWith(_KnockApiResponse value, $Res Function(_KnockApiResponse) _then) = __$KnockApiResponseCopyWithImpl;
@override @useResult
$Res call({
 int status, StatusCode statusCode, String? body, Object? error
});




}
/// @nodoc
class __$KnockApiResponseCopyWithImpl<$Res>
    implements _$KnockApiResponseCopyWith<$Res> {
  __$KnockApiResponseCopyWithImpl(this._self, this._then);

  final _KnockApiResponse _self;
  final $Res Function(_KnockApiResponse) _then;

/// Create a copy of KnockApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusCode = null,Object? body = freezed,Object? error = freezed,}) {
  return _then(_KnockApiResponse(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as StatusCode,body: freezed == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error ,
  ));
}


}

// dart format on

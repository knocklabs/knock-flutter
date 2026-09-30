// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ChannelTypePreference {

/// If [value] is set then [conditions] should not be set.
 bool? get value;/// If [conditions] is set then [value] should not be set.
 List<PreferenceCondition>? get conditions;
/// Create a copy of ChannelTypePreference
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChannelTypePreferenceCopyWith<ChannelTypePreference> get copyWith => _$ChannelTypePreferenceCopyWithImpl<ChannelTypePreference>(this as ChannelTypePreference, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as ChannelTypePreference;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ChannelTypePreference&&(identical(other.value, _this.value) || other.value == _this.value)&&const DeepCollectionEquality().equals(other.conditions, _this.conditions));
}


@override
int get hashCode {
  final _this = this as ChannelTypePreference;
  return Object.hash(runtimeType,_this.value,const DeepCollectionEquality().hash(_this.conditions));
}

@override
String toString() {
  final _this = this as ChannelTypePreference;
  return 'ChannelTypePreference(value: ${_this.value}, conditions: ${_this.conditions})';
}


}

/// @nodoc
abstract mixin class $ChannelTypePreferenceCopyWith<$Res>  {
  factory $ChannelTypePreferenceCopyWith(ChannelTypePreference value, $Res Function(ChannelTypePreference) _then) = _$ChannelTypePreferenceCopyWithImpl;
@useResult
$Res call({
 bool? value, List<PreferenceCondition>? conditions
});




}
/// @nodoc
class _$ChannelTypePreferenceCopyWithImpl<$Res>
    implements $ChannelTypePreferenceCopyWith<$Res> {
  _$ChannelTypePreferenceCopyWithImpl(this._self, this._then);

  final ChannelTypePreference _self;
  final $Res Function(ChannelTypePreference) _then;

/// Create a copy of ChannelTypePreference
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? conditions = freezed,}) {
  return _then(ChannelTypePreference(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}

}


/// Adds pattern-matching-related methods to [ChannelTypePreference].
extension ChannelTypePreferencePatterns on ChannelTypePreference {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelTypePreference value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelTypePreference() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelTypePreference value)  $default,){
final _that = this;
switch (_that) {
case _ChannelTypePreference():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelTypePreference value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelTypePreference() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? value,  List<PreferenceCondition>? conditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelTypePreference() when $default != null:
return $default(_that.value,_that.conditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? value,  List<PreferenceCondition>? conditions)  $default,) {final _that = this;
switch (_that) {
case _ChannelTypePreference():
return $default(_that.value,_that.conditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? value,  List<PreferenceCondition>? conditions)?  $default,) {final _that = this;
switch (_that) {
case _ChannelTypePreference() when $default != null:
return $default(_that.value,_that.conditions);case _:
  return null;

}
}

}

/// @nodoc


class _ChannelTypePreference implements ChannelTypePreference {
   _ChannelTypePreference({this.value,  List<PreferenceCondition>? conditions}): _conditions = conditions;
  

/// If [value] is set then [conditions] should not be set.
@override final  bool? value;
/// If [conditions] is set then [value] should not be set.
 final  List<PreferenceCondition>? _conditions;
/// If [conditions] is set then [value] should not be set.
@override List<PreferenceCondition>? get conditions {
  final value = _conditions;
  if (value == null) return null;
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of ChannelTypePreference
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelTypePreferenceCopyWith<_ChannelTypePreference> get copyWith => __$ChannelTypePreferenceCopyWithImpl<_ChannelTypePreference>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelTypePreference&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.conditions, _conditions));
}


@override
int get hashCode {
    return Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_conditions));
}

@override
String toString() {
    return 'ChannelTypePreference(value: $value, conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class _$ChannelTypePreferenceCopyWith<$Res> implements $ChannelTypePreferenceCopyWith<$Res> {
  factory _$ChannelTypePreferenceCopyWith(_ChannelTypePreference value, $Res Function(_ChannelTypePreference) _then) = __$ChannelTypePreferenceCopyWithImpl;
@override @useResult
$Res call({
 bool? value, List<PreferenceCondition>? conditions
});




}
/// @nodoc
class __$ChannelTypePreferenceCopyWithImpl<$Res>
    implements _$ChannelTypePreferenceCopyWith<$Res> {
  __$ChannelTypePreferenceCopyWithImpl(this._self, this._then);

  final _ChannelTypePreference _self;
  final $Res Function(_ChannelTypePreference) _then;

/// Create a copy of ChannelTypePreference
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? conditions = freezed,}) {
  return _then(_ChannelTypePreference(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,conditions: freezed == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}


}

/// @nodoc
mixin _$WorkflowPreferenceSetting {

/// If [value] is set then [channelTypePreferences] and [conditions] should
/// not be set.
 bool? get value;/// If [channelTypePreferences] is set then [value] should not be set.
 ChannelTypePreferences? get channelTypePreferences;/// If [conditions] is set then [value] should not be set.
 List<PreferenceCondition>? get conditions;
/// Create a copy of WorkflowPreferenceSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkflowPreferenceSettingCopyWith<WorkflowPreferenceSetting> get copyWith => _$WorkflowPreferenceSettingCopyWithImpl<WorkflowPreferenceSetting>(this as WorkflowPreferenceSetting, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as WorkflowPreferenceSetting;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkflowPreferenceSetting&&(identical(other.value, _this.value) || other.value == _this.value)&&const DeepCollectionEquality().equals(other.channelTypePreferences, _this.channelTypePreferences)&&const DeepCollectionEquality().equals(other.conditions, _this.conditions));
}


@override
int get hashCode {
  final _this = this as WorkflowPreferenceSetting;
  return Object.hash(runtimeType,_this.value,const DeepCollectionEquality().hash(_this.channelTypePreferences),const DeepCollectionEquality().hash(_this.conditions));
}

@override
String toString() {
  final _this = this as WorkflowPreferenceSetting;
  return 'WorkflowPreferenceSetting(value: ${_this.value}, channelTypePreferences: ${_this.channelTypePreferences}, conditions: ${_this.conditions})';
}


}

/// @nodoc
abstract mixin class $WorkflowPreferenceSettingCopyWith<$Res>  {
  factory $WorkflowPreferenceSettingCopyWith(WorkflowPreferenceSetting value, $Res Function(WorkflowPreferenceSetting) _then) = _$WorkflowPreferenceSettingCopyWithImpl;
@useResult
$Res call({
 bool? value, ChannelTypePreferences? channelTypePreferences, List<PreferenceCondition>? conditions
});




}
/// @nodoc
class _$WorkflowPreferenceSettingCopyWithImpl<$Res>
    implements $WorkflowPreferenceSettingCopyWith<$Res> {
  _$WorkflowPreferenceSettingCopyWithImpl(this._self, this._then);

  final WorkflowPreferenceSetting _self;
  final $Res Function(WorkflowPreferenceSetting) _then;

/// Create a copy of WorkflowPreferenceSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? channelTypePreferences = freezed,Object? conditions = freezed,}) {
  return _then(WorkflowPreferenceSetting(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,channelTypePreferences: freezed == channelTypePreferences ? _self.channelTypePreferences : channelTypePreferences // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkflowPreferenceSetting].
extension WorkflowPreferenceSettingPatterns on WorkflowPreferenceSetting {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkflowPreferenceSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkflowPreferenceSetting value)  $default,){
final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkflowPreferenceSetting value)?  $default,){
final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? value,  ChannelTypePreferences? channelTypePreferences,  List<PreferenceCondition>? conditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting() when $default != null:
return $default(_that.value,_that.channelTypePreferences,_that.conditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? value,  ChannelTypePreferences? channelTypePreferences,  List<PreferenceCondition>? conditions)  $default,) {final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting():
return $default(_that.value,_that.channelTypePreferences,_that.conditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? value,  ChannelTypePreferences? channelTypePreferences,  List<PreferenceCondition>? conditions)?  $default,) {final _that = this;
switch (_that) {
case _WorkflowPreferenceSetting() when $default != null:
return $default(_that.value,_that.channelTypePreferences,_that.conditions);case _:
  return null;

}
}

}

/// @nodoc


class _WorkflowPreferenceSetting implements WorkflowPreferenceSetting {
   _WorkflowPreferenceSetting({this.value,  ChannelTypePreferences? channelTypePreferences,  List<PreferenceCondition>? conditions}): _channelTypePreferences = channelTypePreferences,_conditions = conditions;
  

/// If [value] is set then [channelTypePreferences] and [conditions] should
/// not be set.
@override final  bool? value;
/// If [channelTypePreferences] is set then [value] should not be set.
 final  ChannelTypePreferences? _channelTypePreferences;
/// If [channelTypePreferences] is set then [value] should not be set.
@override ChannelTypePreferences? get channelTypePreferences {
  final value = _channelTypePreferences;
  if (value == null) return null;
  if (_channelTypePreferences is EqualUnmodifiableMapView) return _channelTypePreferences;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

/// If [conditions] is set then [value] should not be set.
 final  List<PreferenceCondition>? _conditions;
/// If [conditions] is set then [value] should not be set.
@override List<PreferenceCondition>? get conditions {
  final value = _conditions;
  if (value == null) return null;
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of WorkflowPreferenceSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkflowPreferenceSettingCopyWith<_WorkflowPreferenceSetting> get copyWith => __$WorkflowPreferenceSettingCopyWithImpl<_WorkflowPreferenceSetting>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkflowPreferenceSetting&&(identical(other.value, value) || other.value == value)&&const DeepCollectionEquality().equals(other.channelTypePreferences, _channelTypePreferences)&&const DeepCollectionEquality().equals(other.conditions, _conditions));
}


@override
int get hashCode {
    return Object.hash(runtimeType,value,const DeepCollectionEquality().hash(_channelTypePreferences),const DeepCollectionEquality().hash(_conditions));
}

@override
String toString() {
    return 'WorkflowPreferenceSetting(value: $value, channelTypePreferences: $channelTypePreferences, conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class _$WorkflowPreferenceSettingCopyWith<$Res> implements $WorkflowPreferenceSettingCopyWith<$Res> {
  factory _$WorkflowPreferenceSettingCopyWith(_WorkflowPreferenceSetting value, $Res Function(_WorkflowPreferenceSetting) _then) = __$WorkflowPreferenceSettingCopyWithImpl;
@override @useResult
$Res call({
 bool? value, ChannelTypePreferences? channelTypePreferences, List<PreferenceCondition>? conditions
});




}
/// @nodoc
class __$WorkflowPreferenceSettingCopyWithImpl<$Res>
    implements _$WorkflowPreferenceSettingCopyWith<$Res> {
  __$WorkflowPreferenceSettingCopyWithImpl(this._self, this._then);

  final _WorkflowPreferenceSetting _self;
  final $Res Function(_WorkflowPreferenceSetting) _then;

/// Create a copy of WorkflowPreferenceSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? channelTypePreferences = freezed,Object? conditions = freezed,}) {
  return _then(_WorkflowPreferenceSetting(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as bool?,channelTypePreferences: freezed == channelTypePreferences ? _self._channelTypePreferences : channelTypePreferences // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,conditions: freezed == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}


}

_ChannelTypesJson _$ChannelTypesJsonFromJson(
  Map<String, dynamic> json
) {
    return _ChannelTypesJsonImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ChannelTypesJson {

@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson) dynamic get channelTypes;
/// Create a copy of _ChannelTypesJson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelTypesJsonCopyWith<_ChannelTypesJson> get copyWith => __$ChannelTypesJsonCopyWithImpl<_ChannelTypesJson>(this as _ChannelTypesJson, _$identity);

  /// Serializes this _ChannelTypesJson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as _ChannelTypesJson;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelTypesJson&&const DeepCollectionEquality().equals(other.channelTypes, _this.channelTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as _ChannelTypesJson;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.channelTypes));
}

@override
String toString() {
  final _this = this as _ChannelTypesJson;
  return '_ChannelTypesJson(channelTypes: ${_this.channelTypes})';
}


}

/// @nodoc
abstract mixin class _$ChannelTypesJsonCopyWith<$Res>  {
  factory _$ChannelTypesJsonCopyWith(_ChannelTypesJson value, $Res Function(_ChannelTypesJson) _then) = __$ChannelTypesJsonCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson) dynamic channelTypes
});




}
/// @nodoc
class __$ChannelTypesJsonCopyWithImpl<$Res>
    implements _$ChannelTypesJsonCopyWith<$Res> {
  __$ChannelTypesJsonCopyWithImpl(this._self, this._then);

  final _ChannelTypesJson _self;
  final $Res Function(_ChannelTypesJson) _then;

/// Create a copy of _ChannelTypesJson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channelTypes = freezed,}) {
  return _then(_ChannelTypesJson(
channelTypes: freezed == channelTypes ? _self.channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [_ChannelTypesJson].
extension _ChannelTypesJsonPatterns on _ChannelTypesJson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ChannelTypesJsonImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ChannelTypesJsonImpl value)  $default,){
final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ChannelTypesJsonImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson)  dynamic channelTypes)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl() when $default != null:
return $default(_that.channelTypes);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson)  dynamic channelTypes)  $default,) {final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl():
return $default(_that.channelTypes);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson)  dynamic channelTypes)?  $default,) {final _that = this;
switch (_that) {
case _ChannelTypesJsonImpl() when $default != null:
return $default(_that.channelTypes);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ChannelTypesJsonImpl implements _ChannelTypesJson {
  const _ChannelTypesJsonImpl({@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson) required this.channelTypes});
  factory _ChannelTypesJsonImpl.fromJson(Map<String, dynamic> json) => _$ChannelTypesJsonImplFromJson(json);

@override@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson) final  dynamic channelTypes;

/// Create a copy of _ChannelTypesJson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChannelTypesJsonImplCopyWith<_ChannelTypesJsonImpl> get copyWith => __$ChannelTypesJsonImplCopyWithImpl<_ChannelTypesJsonImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChannelTypesJsonImplToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ChannelTypesJsonImpl&&const DeepCollectionEquality().equals(other.channelTypes, channelTypes));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(channelTypes));
}

@override
String toString() {
    return '_ChannelTypesJson(channelTypes: $channelTypes)';
}


}

/// @nodoc
abstract mixin class _$ChannelTypesJsonImplCopyWith<$Res> implements _$ChannelTypesJsonCopyWith<$Res> {
  factory _$ChannelTypesJsonImplCopyWith(_ChannelTypesJsonImpl value, $Res Function(_ChannelTypesJsonImpl) _then) = __$ChannelTypesJsonImplCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'channel_types', toJson: _nonNullChannelTypePreferencesToJson, fromJson: _nonNullChannelTypePreferencesFromJson) dynamic channelTypes
});




}
/// @nodoc
class __$ChannelTypesJsonImplCopyWithImpl<$Res>
    implements _$ChannelTypesJsonImplCopyWith<$Res> {
  __$ChannelTypesJsonImplCopyWithImpl(this._self, this._then);

  final _ChannelTypesJsonImpl _self;
  final $Res Function(_ChannelTypesJsonImpl) _then;

/// Create a copy of _ChannelTypesJson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channelTypes = freezed,}) {
  return _then(_ChannelTypesJsonImpl(
channelTypes: freezed == channelTypes ? _self.channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

_ConditionsJson _$ConditionsJsonFromJson(
  Map<String, dynamic> json
) {
    return _ConditionsJsonImpl.fromJson(
      json
    );
}

/// @nodoc
mixin _$ConditionsJson {

 List<PreferenceCondition>? get conditions;
/// Create a copy of _ConditionsJson
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionsJsonCopyWith<_ConditionsJson> get copyWith => __$ConditionsJsonCopyWithImpl<_ConditionsJson>(this as _ConditionsJson, _$identity);

  /// Serializes this _ConditionsJson to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as _ConditionsJson;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConditionsJson&&const DeepCollectionEquality().equals(other.conditions, _this.conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as _ConditionsJson;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.conditions));
}

@override
String toString() {
  final _this = this as _ConditionsJson;
  return '_ConditionsJson(conditions: ${_this.conditions})';
}


}

/// @nodoc
abstract mixin class _$ConditionsJsonCopyWith<$Res>  {
  factory _$ConditionsJsonCopyWith(_ConditionsJson value, $Res Function(_ConditionsJson) _then) = __$ConditionsJsonCopyWithImpl;
@useResult
$Res call({
 List<PreferenceCondition>? conditions
});




}
/// @nodoc
class __$ConditionsJsonCopyWithImpl<$Res>
    implements _$ConditionsJsonCopyWith<$Res> {
  __$ConditionsJsonCopyWithImpl(this._self, this._then);

  final _ConditionsJson _self;
  final $Res Function(_ConditionsJson) _then;

/// Create a copy of _ConditionsJson
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? conditions = freezed,}) {
  return _then(_ConditionsJson(
conditions: freezed == conditions ? _self.conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}

}


/// Adds pattern-matching-related methods to [_ConditionsJson].
extension _ConditionsJsonPatterns on _ConditionsJson {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ConditionsJsonImpl value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ConditionsJsonImpl() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ConditionsJsonImpl value)  $default,){
final _that = this;
switch (_that) {
case _ConditionsJsonImpl():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ConditionsJsonImpl value)?  $default,){
final _that = this;
switch (_that) {
case _ConditionsJsonImpl() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PreferenceCondition>? conditions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ConditionsJsonImpl() when $default != null:
return $default(_that.conditions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PreferenceCondition>? conditions)  $default,) {final _that = this;
switch (_that) {
case _ConditionsJsonImpl():
return $default(_that.conditions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PreferenceCondition>? conditions)?  $default,) {final _that = this;
switch (_that) {
case _ConditionsJsonImpl() when $default != null:
return $default(_that.conditions);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ConditionsJsonImpl implements _ConditionsJson {
  const _ConditionsJsonImpl({required  List<PreferenceCondition>? conditions}): _conditions = conditions;
  factory _ConditionsJsonImpl.fromJson(Map<String, dynamic> json) => _$ConditionsJsonImplFromJson(json);

 final  List<PreferenceCondition>? _conditions;
@override List<PreferenceCondition>? get conditions {
  final value = _conditions;
  if (value == null) return null;
  if (_conditions is EqualUnmodifiableListView) return _conditions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of _ConditionsJson
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ConditionsJsonImplCopyWith<_ConditionsJsonImpl> get copyWith => __$ConditionsJsonImplCopyWithImpl<_ConditionsJsonImpl>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ConditionsJsonImplToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ConditionsJsonImpl&&const DeepCollectionEquality().equals(other.conditions, _conditions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_conditions));
}

@override
String toString() {
    return '_ConditionsJson(conditions: $conditions)';
}


}

/// @nodoc
abstract mixin class _$ConditionsJsonImplCopyWith<$Res> implements _$ConditionsJsonCopyWith<$Res> {
  factory _$ConditionsJsonImplCopyWith(_ConditionsJsonImpl value, $Res Function(_ConditionsJsonImpl) _then) = __$ConditionsJsonImplCopyWithImpl;
@override @useResult
$Res call({
 List<PreferenceCondition>? conditions
});




}
/// @nodoc
class __$ConditionsJsonImplCopyWithImpl<$Res>
    implements _$ConditionsJsonImplCopyWith<$Res> {
  __$ConditionsJsonImplCopyWithImpl(this._self, this._then);

  final _ConditionsJsonImpl _self;
  final $Res Function(_ConditionsJsonImpl) _then;

/// Create a copy of _ConditionsJson
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? conditions = freezed,}) {
  return _then(_ConditionsJsonImpl(
conditions: freezed == conditions ? _self._conditions : conditions // ignore: cast_nullable_to_non_nullable
as List<PreferenceCondition>?,
  ));
}


}

/// @nodoc
mixin _$SetPreferencesProperties {

@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? get channelTypes;@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get workflows;@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get categories;
/// Create a copy of SetPreferencesProperties
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SetPreferencesPropertiesCopyWith<SetPreferencesProperties> get copyWith => _$SetPreferencesPropertiesCopyWithImpl<SetPreferencesProperties>(this as SetPreferencesProperties, _$identity);

  /// Serializes this SetPreferencesProperties to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as SetPreferencesProperties;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SetPreferencesProperties&&const DeepCollectionEquality().equals(other.channelTypes, _this.channelTypes)&&const DeepCollectionEquality().equals(other.workflows, _this.workflows)&&const DeepCollectionEquality().equals(other.categories, _this.categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as SetPreferencesProperties;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.channelTypes),const DeepCollectionEquality().hash(_this.workflows),const DeepCollectionEquality().hash(_this.categories));
}

@override
String toString() {
  final _this = this as SetPreferencesProperties;
  return 'SetPreferencesProperties(channelTypes: ${_this.channelTypes}, workflows: ${_this.workflows}, categories: ${_this.categories})';
}


}

/// @nodoc
abstract mixin class $SetPreferencesPropertiesCopyWith<$Res>  {
  factory $SetPreferencesPropertiesCopyWith(SetPreferencesProperties value, $Res Function(SetPreferencesProperties) _then) = _$SetPreferencesPropertiesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? channelTypes,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? workflows,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? categories
});




}
/// @nodoc
class _$SetPreferencesPropertiesCopyWithImpl<$Res>
    implements $SetPreferencesPropertiesCopyWith<$Res> {
  _$SetPreferencesPropertiesCopyWithImpl(this._self, this._then);

  final SetPreferencesProperties _self;
  final $Res Function(SetPreferencesProperties) _then;

/// Create a copy of SetPreferencesProperties
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? channelTypes = freezed,Object? workflows = freezed,Object? categories = freezed,}) {
  return _then(SetPreferencesProperties(
channelTypes: freezed == channelTypes ? _self.channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,workflows: freezed == workflows ? _self.workflows : workflows // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,
  ));
}

}


/// Adds pattern-matching-related methods to [SetPreferencesProperties].
extension SetPreferencesPropertiesPatterns on SetPreferencesProperties {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SetPreferencesProperties value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SetPreferencesProperties() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SetPreferencesProperties value)  $default,){
final _that = this;
switch (_that) {
case _SetPreferencesProperties():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SetPreferencesProperties value)?  $default,){
final _that = this;
switch (_that) {
case _SetPreferencesProperties() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SetPreferencesProperties() when $default != null:
return $default(_that.channelTypes,_that.workflows,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)  $default,) {final _that = this;
switch (_that) {
case _SetPreferencesProperties():
return $default(_that.channelTypes,_that.workflows,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)?  $default,) {final _that = this;
switch (_that) {
case _SetPreferencesProperties() when $default != null:
return $default(_that.channelTypes,_that.workflows,_that.categories);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _SetPreferencesProperties implements SetPreferencesProperties {
  const _SetPreferencesProperties({@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) required  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) required  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) required  WorkflowPreferences? categories}): _channelTypes = channelTypes,_workflows = workflows,_categories = categories;
  

 final  ChannelTypePreferences? _channelTypes;
@override@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? get channelTypes {
  final value = _channelTypes;
  if (value == null) return null;
  if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  WorkflowPreferences? _workflows;
@override@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get workflows {
  final value = _workflows;
  if (value == null) return null;
  if (_workflows is EqualUnmodifiableMapView) return _workflows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  WorkflowPreferences? _categories;
@override@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableMapView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SetPreferencesProperties
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SetPreferencesPropertiesCopyWith<_SetPreferencesProperties> get copyWith => __$SetPreferencesPropertiesCopyWithImpl<_SetPreferencesProperties>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SetPreferencesPropertiesToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SetPreferencesProperties&&const DeepCollectionEquality().equals(other.channelTypes, _channelTypes)&&const DeepCollectionEquality().equals(other.workflows, _workflows)&&const DeepCollectionEquality().equals(other.categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_channelTypes),const DeepCollectionEquality().hash(_workflows),const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'SetPreferencesProperties(channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$SetPreferencesPropertiesCopyWith<$Res> implements $SetPreferencesPropertiesCopyWith<$Res> {
  factory _$SetPreferencesPropertiesCopyWith(_SetPreferencesProperties value, $Res Function(_SetPreferencesProperties) _then) = __$SetPreferencesPropertiesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? channelTypes,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? workflows,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? categories
});




}
/// @nodoc
class __$SetPreferencesPropertiesCopyWithImpl<$Res>
    implements _$SetPreferencesPropertiesCopyWith<$Res> {
  __$SetPreferencesPropertiesCopyWithImpl(this._self, this._then);

  final _SetPreferencesProperties _self;
  final $Res Function(_SetPreferencesProperties) _then;

/// Create a copy of SetPreferencesProperties
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? channelTypes = freezed,Object? workflows = freezed,Object? categories = freezed,}) {
  return _then(_SetPreferencesProperties(
channelTypes: freezed == channelTypes ? _self._channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,workflows: freezed == workflows ? _self._workflows : workflows // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,
  ));
}


}


/// @nodoc
mixin _$PreferenceSet {

 String get id;@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? get channelTypes;@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get workflows;@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get categories;
/// Create a copy of PreferenceSet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreferenceSetCopyWith<PreferenceSet> get copyWith => _$PreferenceSetCopyWithImpl<PreferenceSet>(this as PreferenceSet, _$identity);

  /// Serializes this PreferenceSet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PreferenceSet;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreferenceSet&&(identical(other.id, _this.id) || other.id == _this.id)&&const DeepCollectionEquality().equals(other.channelTypes, _this.channelTypes)&&const DeepCollectionEquality().equals(other.workflows, _this.workflows)&&const DeepCollectionEquality().equals(other.categories, _this.categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PreferenceSet;
  return Object.hash(runtimeType,_this.id,const DeepCollectionEquality().hash(_this.channelTypes),const DeepCollectionEquality().hash(_this.workflows),const DeepCollectionEquality().hash(_this.categories));
}

@override
String toString() {
  final _this = this as PreferenceSet;
  return 'PreferenceSet(id: ${_this.id}, channelTypes: ${_this.channelTypes}, workflows: ${_this.workflows}, categories: ${_this.categories})';
}


}

/// @nodoc
abstract mixin class $PreferenceSetCopyWith<$Res>  {
  factory $PreferenceSetCopyWith(PreferenceSet value, $Res Function(PreferenceSet) _then) = _$PreferenceSetCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? channelTypes,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? workflows,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? categories
});




}
/// @nodoc
class _$PreferenceSetCopyWithImpl<$Res>
    implements $PreferenceSetCopyWith<$Res> {
  _$PreferenceSetCopyWithImpl(this._self, this._then);

  final PreferenceSet _self;
  final $Res Function(PreferenceSet) _then;

/// Create a copy of PreferenceSet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? channelTypes = freezed,Object? workflows = freezed,Object? categories = freezed,}) {
  return _then(PreferenceSet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,channelTypes: freezed == channelTypes ? _self.channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,workflows: freezed == workflows ? _self.workflows : workflows // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,categories: freezed == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,
  ));
}

}


/// Adds pattern-matching-related methods to [PreferenceSet].
extension PreferenceSetPatterns on PreferenceSet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreferenceSet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreferenceSet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreferenceSet value)  $default,){
final _that = this;
switch (_that) {
case _PreferenceSet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreferenceSet value)?  $default,){
final _that = this;
switch (_that) {
case _PreferenceSet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreferenceSet() when $default != null:
return $default(_that.id,_that.channelTypes,_that.workflows,_that.categories);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)  $default,) {final _that = this;
switch (_that) {
case _PreferenceSet():
return $default(_that.id,_that.channelTypes,_that.workflows,_that.categories);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson)  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson)  WorkflowPreferences? categories)?  $default,) {final _that = this;
switch (_that) {
case _PreferenceSet() when $default != null:
return $default(_that.id,_that.channelTypes,_that.workflows,_that.categories);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PreferenceSet implements PreferenceSet {
  const _PreferenceSet({required this.id, @JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) required  ChannelTypePreferences? channelTypes, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) required  WorkflowPreferences? workflows, @JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) required  WorkflowPreferences? categories}): _channelTypes = channelTypes,_workflows = workflows,_categories = categories;
  factory _PreferenceSet.fromJson(Map<String, dynamic> json) => _$PreferenceSetFromJson(json);

@override final  String id;
 final  ChannelTypePreferences? _channelTypes;
@override@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? get channelTypes {
  final value = _channelTypes;
  if (value == null) return null;
  if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  WorkflowPreferences? _workflows;
@override@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get workflows {
  final value = _workflows;
  if (value == null) return null;
  if (_workflows is EqualUnmodifiableMapView) return _workflows;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

 final  WorkflowPreferences? _categories;
@override@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? get categories {
  final value = _categories;
  if (value == null) return null;
  if (_categories is EqualUnmodifiableMapView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of PreferenceSet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreferenceSetCopyWith<_PreferenceSet> get copyWith => __$PreferenceSetCopyWithImpl<_PreferenceSet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreferenceSetToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreferenceSet&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.channelTypes, _channelTypes)&&const DeepCollectionEquality().equals(other.workflows, _workflows)&&const DeepCollectionEquality().equals(other.categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_channelTypes),const DeepCollectionEquality().hash(_workflows),const DeepCollectionEquality().hash(_categories));
}

@override
String toString() {
    return 'PreferenceSet(id: $id, channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$PreferenceSetCopyWith<$Res> implements $PreferenceSetCopyWith<$Res> {
  factory _$PreferenceSetCopyWith(_PreferenceSet value, $Res Function(_PreferenceSet) _then) = __$PreferenceSetCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'channel_types', toJson: _channelTypePreferencesToJson, fromJson: _channelTypePreferencesFromJson) ChannelTypePreferences? channelTypes,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? workflows,@JsonKey(toJson: _workflowPreferencesToJson, fromJson: _workflowPreferencesFromJson) WorkflowPreferences? categories
});




}
/// @nodoc
class __$PreferenceSetCopyWithImpl<$Res>
    implements _$PreferenceSetCopyWith<$Res> {
  __$PreferenceSetCopyWithImpl(this._self, this._then);

  final _PreferenceSet _self;
  final $Res Function(_PreferenceSet) _then;

/// Create a copy of PreferenceSet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? channelTypes = freezed,Object? workflows = freezed,Object? categories = freezed,}) {
  return _then(_PreferenceSet(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,channelTypes: freezed == channelTypes ? _self._channelTypes : channelTypes // ignore: cast_nullable_to_non_nullable
as ChannelTypePreferences?,workflows: freezed == workflows ? _self._workflows : workflows // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,categories: freezed == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as WorkflowPreferences?,
  ));
}


}


/// @nodoc
mixin _$PreferenceCondition {

 String get variable; String get operator; String get argument;
/// Create a copy of PreferenceCondition
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PreferenceConditionCopyWith<PreferenceCondition> get copyWith => _$PreferenceConditionCopyWithImpl<PreferenceCondition>(this as PreferenceCondition, _$identity);

  /// Serializes this PreferenceCondition to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PreferenceCondition;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PreferenceCondition&&(identical(other.variable, _this.variable) || other.variable == _this.variable)&&(identical(other.operator, _this.operator) || other.operator == _this.operator)&&(identical(other.argument, _this.argument) || other.argument == _this.argument));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PreferenceCondition;
  return Object.hash(runtimeType,_this.variable,_this.operator,_this.argument);
}

@override
String toString() {
  final _this = this as PreferenceCondition;
  return 'PreferenceCondition(variable: ${_this.variable}, operator: ${_this.operator}, argument: ${_this.argument})';
}


}

/// @nodoc
abstract mixin class $PreferenceConditionCopyWith<$Res>  {
  factory $PreferenceConditionCopyWith(PreferenceCondition value, $Res Function(PreferenceCondition) _then) = _$PreferenceConditionCopyWithImpl;
@useResult
$Res call({
 String variable, String operator, String argument
});




}
/// @nodoc
class _$PreferenceConditionCopyWithImpl<$Res>
    implements $PreferenceConditionCopyWith<$Res> {
  _$PreferenceConditionCopyWithImpl(this._self, this._then);

  final PreferenceCondition _self;
  final $Res Function(PreferenceCondition) _then;

/// Create a copy of PreferenceCondition
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? variable = null,Object? operator = null,Object? argument = null,}) {
  return _then(PreferenceCondition(
variable: null == variable ? _self.variable : variable // ignore: cast_nullable_to_non_nullable
as String,operator: null == operator ? _self.operator : operator // ignore: cast_nullable_to_non_nullable
as String,argument: null == argument ? _self.argument : argument // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PreferenceCondition].
extension PreferenceConditionPatterns on PreferenceCondition {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PreferenceCondition value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PreferenceCondition() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PreferenceCondition value)  $default,){
final _that = this;
switch (_that) {
case _PreferenceCondition():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PreferenceCondition value)?  $default,){
final _that = this;
switch (_that) {
case _PreferenceCondition() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String variable,  String operator,  String argument)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PreferenceCondition() when $default != null:
return $default(_that.variable,_that.operator,_that.argument);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String variable,  String operator,  String argument)  $default,) {final _that = this;
switch (_that) {
case _PreferenceCondition():
return $default(_that.variable,_that.operator,_that.argument);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String variable,  String operator,  String argument)?  $default,) {final _that = this;
switch (_that) {
case _PreferenceCondition() when $default != null:
return $default(_that.variable,_that.operator,_that.argument);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PreferenceCondition implements PreferenceCondition {
  const _PreferenceCondition({required this.variable, required this.operator, required this.argument});
  factory _PreferenceCondition.fromJson(Map<String, dynamic> json) => _$PreferenceConditionFromJson(json);

@override final  String variable;
@override final  String operator;
@override final  String argument;

/// Create a copy of PreferenceCondition
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PreferenceConditionCopyWith<_PreferenceCondition> get copyWith => __$PreferenceConditionCopyWithImpl<_PreferenceCondition>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PreferenceConditionToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PreferenceCondition&&(identical(other.variable, variable) || other.variable == variable)&&(identical(other.operator, operator) || other.operator == operator)&&(identical(other.argument, argument) || other.argument == argument));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,variable,operator,argument);
}

@override
String toString() {
    return 'PreferenceCondition(variable: $variable, operator: $operator, argument: $argument)';
}


}

/// @nodoc
abstract mixin class _$PreferenceConditionCopyWith<$Res> implements $PreferenceConditionCopyWith<$Res> {
  factory _$PreferenceConditionCopyWith(_PreferenceCondition value, $Res Function(_PreferenceCondition) _then) = __$PreferenceConditionCopyWithImpl;
@override @useResult
$Res call({
 String variable, String operator, String argument
});




}
/// @nodoc
class __$PreferenceConditionCopyWithImpl<$Res>
    implements _$PreferenceConditionCopyWith<$Res> {
  __$PreferenceConditionCopyWithImpl(this._self, this._then);

  final _PreferenceCondition _self;
  final $Res Function(_PreferenceCondition) _then;

/// Create a copy of PreferenceCondition
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? variable = null,Object? operator = null,Object? argument = null,}) {
  return _then(_PreferenceCondition(
variable: null == variable ? _self.variable : variable // ignore: cast_nullable_to_non_nullable
as String,operator: null == operator ? _self.operator : operator // ignore: cast_nullable_to_non_nullable
as String,argument: null == argument ? _self.argument : argument // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

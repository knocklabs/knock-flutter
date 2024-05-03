// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelTypePreference {
  /// If [value] is set then [conditions] should not be set.
  bool? get value => throw _privateConstructorUsedError;

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelTypePreferenceCopyWith<ChannelTypePreference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelTypePreferenceCopyWith<$Res> {
  factory $ChannelTypePreferenceCopyWith(ChannelTypePreference value,
          $Res Function(ChannelTypePreference) then) =
      _$ChannelTypePreferenceCopyWithImpl<$Res, ChannelTypePreference>;
  @useResult
  $Res call({bool? value, List<PreferenceCondition>? conditions});
}

/// @nodoc
class _$ChannelTypePreferenceCopyWithImpl<$Res,
        $Val extends ChannelTypePreference>
    implements $ChannelTypePreferenceCopyWith<$Res> {
  _$ChannelTypePreferenceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelTypePreferenceImplCopyWith<$Res>
    implements $ChannelTypePreferenceCopyWith<$Res> {
  factory _$$ChannelTypePreferenceImplCopyWith(
          _$ChannelTypePreferenceImpl value,
          $Res Function(_$ChannelTypePreferenceImpl) then) =
      __$$ChannelTypePreferenceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? value, List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$$ChannelTypePreferenceImplCopyWithImpl<$Res>
    extends _$ChannelTypePreferenceCopyWithImpl<$Res,
        _$ChannelTypePreferenceImpl>
    implements _$$ChannelTypePreferenceImplCopyWith<$Res> {
  __$$ChannelTypePreferenceImplCopyWithImpl(_$ChannelTypePreferenceImpl _value,
      $Res Function(_$ChannelTypePreferenceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_$ChannelTypePreferenceImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc

class _$ChannelTypePreferenceImpl implements _ChannelTypePreference {
  _$ChannelTypePreferenceImpl(
      {this.value, final List<PreferenceCondition>? conditions})
      : _conditions = conditions;

  /// If [value] is set then [conditions] should not be set.
  @override
  final bool? value;

  /// If [conditions] is set then [value] should not be set.
  final List<PreferenceCondition>? _conditions;

  /// If [conditions] is set then [value] should not be set.
  @override
  List<PreferenceCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChannelTypePreference(value: $value, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelTypePreferenceImpl &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_conditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelTypePreferenceImplCopyWith<_$ChannelTypePreferenceImpl>
      get copyWith => __$$ChannelTypePreferenceImplCopyWithImpl<
          _$ChannelTypePreferenceImpl>(this, _$identity);
}

abstract class _ChannelTypePreference implements ChannelTypePreference {
  factory _ChannelTypePreference(
          {final bool? value, final List<PreferenceCondition>? conditions}) =
      _$ChannelTypePreferenceImpl;

  @override

  /// If [value] is set then [conditions] should not be set.
  bool? get value;
  @override

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions;
  @override
  @JsonKey(ignore: true)
  _$$ChannelTypePreferenceImplCopyWith<_$ChannelTypePreferenceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkflowPreferenceSetting {
  /// If [value] is set then [channelTypePreferences] and [conditions] should
  /// not be set.
  bool? get value => throw _privateConstructorUsedError;

  /// If [channelTypePreferences] is set then [value] should not be set.
  Map<ChannelType, ChannelTypePreference>? get channelTypePreferences =>
      throw _privateConstructorUsedError;

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkflowPreferenceSettingCopyWith<WorkflowPreferenceSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowPreferenceSettingCopyWith<$Res> {
  factory $WorkflowPreferenceSettingCopyWith(WorkflowPreferenceSetting value,
          $Res Function(WorkflowPreferenceSetting) then) =
      _$WorkflowPreferenceSettingCopyWithImpl<$Res, WorkflowPreferenceSetting>;
  @useResult
  $Res call(
      {bool? value,
      Map<ChannelType, ChannelTypePreference>? channelTypePreferences,
      List<PreferenceCondition>? conditions});
}

/// @nodoc
class _$WorkflowPreferenceSettingCopyWithImpl<$Res,
        $Val extends WorkflowPreferenceSetting>
    implements $WorkflowPreferenceSettingCopyWith<$Res> {
  _$WorkflowPreferenceSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? channelTypePreferences = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelTypePreferences: freezed == channelTypePreferences
          ? _value.channelTypePreferences
          : channelTypePreferences // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkflowPreferenceSettingImplCopyWith<$Res>
    implements $WorkflowPreferenceSettingCopyWith<$Res> {
  factory _$$WorkflowPreferenceSettingImplCopyWith(
          _$WorkflowPreferenceSettingImpl value,
          $Res Function(_$WorkflowPreferenceSettingImpl) then) =
      __$$WorkflowPreferenceSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? value,
      Map<ChannelType, ChannelTypePreference>? channelTypePreferences,
      List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$$WorkflowPreferenceSettingImplCopyWithImpl<$Res>
    extends _$WorkflowPreferenceSettingCopyWithImpl<$Res,
        _$WorkflowPreferenceSettingImpl>
    implements _$$WorkflowPreferenceSettingImplCopyWith<$Res> {
  __$$WorkflowPreferenceSettingImplCopyWithImpl(
      _$WorkflowPreferenceSettingImpl _value,
      $Res Function(_$WorkflowPreferenceSettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? channelTypePreferences = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_$WorkflowPreferenceSettingImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelTypePreferences: freezed == channelTypePreferences
          ? _value._channelTypePreferences
          : channelTypePreferences // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc

class _$WorkflowPreferenceSettingImpl implements _WorkflowPreferenceSetting {
  _$WorkflowPreferenceSettingImpl(
      {this.value,
      final Map<ChannelType, ChannelTypePreference>? channelTypePreferences,
      final List<PreferenceCondition>? conditions})
      : _channelTypePreferences = channelTypePreferences,
        _conditions = conditions;

  /// If [value] is set then [channelTypePreferences] and [conditions] should
  /// not be set.
  @override
  final bool? value;

  /// If [channelTypePreferences] is set then [value] should not be set.
  final Map<ChannelType, ChannelTypePreference>? _channelTypePreferences;

  /// If [channelTypePreferences] is set then [value] should not be set.
  @override
  Map<ChannelType, ChannelTypePreference>? get channelTypePreferences {
    final value = _channelTypePreferences;
    if (value == null) return null;
    if (_channelTypePreferences is EqualUnmodifiableMapView)
      return _channelTypePreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// If [conditions] is set then [value] should not be set.
  final List<PreferenceCondition>? _conditions;

  /// If [conditions] is set then [value] should not be set.
  @override
  List<PreferenceCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'WorkflowPreferenceSetting(value: $value, channelTypePreferences: $channelTypePreferences, conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowPreferenceSettingImpl &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(
                other._channelTypePreferences, _channelTypePreferences) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      value,
      const DeepCollectionEquality().hash(_channelTypePreferences),
      const DeepCollectionEquality().hash(_conditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowPreferenceSettingImplCopyWith<_$WorkflowPreferenceSettingImpl>
      get copyWith => __$$WorkflowPreferenceSettingImplCopyWithImpl<
          _$WorkflowPreferenceSettingImpl>(this, _$identity);
}

abstract class _WorkflowPreferenceSetting implements WorkflowPreferenceSetting {
  factory _WorkflowPreferenceSetting(
          {final bool? value,
          final Map<ChannelType, ChannelTypePreference>? channelTypePreferences,
          final List<PreferenceCondition>? conditions}) =
      _$WorkflowPreferenceSettingImpl;

  @override

  /// If [value] is set then [channelTypePreferences] and [conditions] should
  /// not be set.
  bool? get value;
  @override

  /// If [channelTypePreferences] is set then [value] should not be set.
  Map<ChannelType, ChannelTypePreference>? get channelTypePreferences;
  @override

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowPreferenceSettingImplCopyWith<_$WorkflowPreferenceSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_ChannelTypesJson _$ChannelTypesJsonFromJson(Map<String, dynamic> json) {
  return __ChannelTypesJson.fromJson(json);
}

/// @nodoc
mixin _$ChannelTypesJson {
  @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson)
  dynamic get channelTypes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ChannelTypesJsonCopyWith<_ChannelTypesJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ChannelTypesJsonCopyWith<$Res> {
  factory _$ChannelTypesJsonCopyWith(
          _ChannelTypesJson value, $Res Function(_ChannelTypesJson) then) =
      __$ChannelTypesJsonCopyWithImpl<$Res, _ChannelTypesJson>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      dynamic channelTypes});
}

/// @nodoc
class __$ChannelTypesJsonCopyWithImpl<$Res, $Val extends _ChannelTypesJson>
    implements _$ChannelTypesJsonCopyWith<$Res> {
  __$ChannelTypesJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
  }) {
    return _then(_value.copyWith(
      channelTypes: freezed == channelTypes
          ? _value.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelTypesJsonImplCopyWith<$Res>
    implements _$ChannelTypesJsonCopyWith<$Res> {
  factory _$$_ChannelTypesJsonImplCopyWith(_$_ChannelTypesJsonImpl value,
          $Res Function(_$_ChannelTypesJsonImpl) then) =
      __$$_ChannelTypesJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      dynamic channelTypes});
}

/// @nodoc
class __$$_ChannelTypesJsonImplCopyWithImpl<$Res>
    extends __$ChannelTypesJsonCopyWithImpl<$Res, _$_ChannelTypesJsonImpl>
    implements _$$_ChannelTypesJsonImplCopyWith<$Res> {
  __$$_ChannelTypesJsonImplCopyWithImpl(_$_ChannelTypesJsonImpl _value,
      $Res Function(_$_ChannelTypesJsonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
  }) {
    return _then(_$_ChannelTypesJsonImpl(
      channelTypes: freezed == channelTypes
          ? _value.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChannelTypesJsonImpl implements __ChannelTypesJson {
  const _$_ChannelTypesJsonImpl(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      required this.channelTypes});

  factory _$_ChannelTypesJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelTypesJsonImplFromJson(json);

  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson)
  final dynamic channelTypes;

  @override
  String toString() {
    return '_ChannelTypesJson(channelTypes: $channelTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelTypesJsonImpl &&
            const DeepCollectionEquality()
                .equals(other.channelTypes, channelTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(channelTypes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelTypesJsonImplCopyWith<_$_ChannelTypesJsonImpl> get copyWith =>
      __$$_ChannelTypesJsonImplCopyWithImpl<_$_ChannelTypesJsonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelTypesJsonImplToJson(
      this,
    );
  }
}

abstract class __ChannelTypesJson implements _ChannelTypesJson {
  const factory __ChannelTypesJson(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      required final dynamic channelTypes}) = _$_ChannelTypesJsonImpl;

  factory __ChannelTypesJson.fromJson(Map<String, dynamic> json) =
      _$_ChannelTypesJsonImpl.fromJson;

  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson)
  dynamic get channelTypes;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelTypesJsonImplCopyWith<_$_ChannelTypesJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

_ConditionsJson _$ConditionsJsonFromJson(Map<String, dynamic> json) {
  return __ConditionsJson.fromJson(json);
}

/// @nodoc
mixin _$ConditionsJson {
  List<PreferenceCondition>? get conditions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConditionsJsonCopyWith<_ConditionsJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConditionsJsonCopyWith<$Res> {
  factory _$ConditionsJsonCopyWith(
          _ConditionsJson value, $Res Function(_ConditionsJson) then) =
      __$ConditionsJsonCopyWithImpl<$Res, _ConditionsJson>;
  @useResult
  $Res call({List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$ConditionsJsonCopyWithImpl<$Res, $Val extends _ConditionsJson>
    implements _$ConditionsJsonCopyWith<$Res> {
  __$ConditionsJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = freezed,
  }) {
    return _then(_value.copyWith(
      conditions: freezed == conditions
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConditionsJsonImplCopyWith<$Res>
    implements _$ConditionsJsonCopyWith<$Res> {
  factory _$$_ConditionsJsonImplCopyWith(_$_ConditionsJsonImpl value,
          $Res Function(_$_ConditionsJsonImpl) then) =
      __$$_ConditionsJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$$_ConditionsJsonImplCopyWithImpl<$Res>
    extends __$ConditionsJsonCopyWithImpl<$Res, _$_ConditionsJsonImpl>
    implements _$$_ConditionsJsonImplCopyWith<$Res> {
  __$$_ConditionsJsonImplCopyWithImpl(
      _$_ConditionsJsonImpl _value, $Res Function(_$_ConditionsJsonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = freezed,
  }) {
    return _then(_$_ConditionsJsonImpl(
      conditions: freezed == conditions
          ? _value._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ConditionsJsonImpl implements __ConditionsJson {
  const _$_ConditionsJsonImpl(
      {required final List<PreferenceCondition>? conditions})
      : _conditions = conditions;

  factory _$_ConditionsJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ConditionsJsonImplFromJson(json);

  final List<PreferenceCondition>? _conditions;
  @override
  List<PreferenceCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return '_ConditionsJson(conditions: $conditions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConditionsJsonImpl &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConditionsJsonImplCopyWith<_$_ConditionsJsonImpl> get copyWith =>
      __$$_ConditionsJsonImplCopyWithImpl<_$_ConditionsJsonImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConditionsJsonImplToJson(
      this,
    );
  }
}

abstract class __ConditionsJson implements _ConditionsJson {
  const factory __ConditionsJson(
          {required final List<PreferenceCondition>? conditions}) =
      _$_ConditionsJsonImpl;

  factory __ConditionsJson.fromJson(Map<String, dynamic> json) =
      _$_ConditionsJsonImpl.fromJson;

  @override
  List<PreferenceCondition>? get conditions;
  @override
  @JsonKey(ignore: true)
  _$$_ConditionsJsonImplCopyWith<_$_ConditionsJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetPreferencesProperties {
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes =>
      throw _privateConstructorUsedError;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows =>
      throw _privateConstructorUsedError;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetPreferencesPropertiesCopyWith<SetPreferencesProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetPreferencesPropertiesCopyWith<$Res> {
  factory $SetPreferencesPropertiesCopyWith(SetPreferencesProperties value,
          $Res Function(SetPreferencesProperties) then) =
      _$SetPreferencesPropertiesCopyWithImpl<$Res, SetPreferencesProperties>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? categories});
}

/// @nodoc
class _$SetPreferencesPropertiesCopyWithImpl<$Res,
        $Val extends SetPreferencesProperties>
    implements $SetPreferencesPropertiesCopyWith<$Res> {
  _$SetPreferencesPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      channelTypes: freezed == channelTypes
          ? _value.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      workflows: freezed == workflows
          ? _value.workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetPreferencesPropertiesImplCopyWith<$Res>
    implements $SetPreferencesPropertiesCopyWith<$Res> {
  factory _$$SetPreferencesPropertiesImplCopyWith(
          _$SetPreferencesPropertiesImpl value,
          $Res Function(_$SetPreferencesPropertiesImpl) then) =
      __$$SetPreferencesPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? categories});
}

/// @nodoc
class __$$SetPreferencesPropertiesImplCopyWithImpl<$Res>
    extends _$SetPreferencesPropertiesCopyWithImpl<$Res,
        _$SetPreferencesPropertiesImpl>
    implements _$$SetPreferencesPropertiesImplCopyWith<$Res> {
  __$$SetPreferencesPropertiesImplCopyWithImpl(
      _$SetPreferencesPropertiesImpl _value,
      $Res Function(_$SetPreferencesPropertiesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$SetPreferencesPropertiesImpl(
      channelTypes: freezed == channelTypes
          ? _value._channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      workflows: freezed == workflows
          ? _value._workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SetPreferencesPropertiesImpl implements _SetPreferencesProperties {
  const _$SetPreferencesPropertiesImpl(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      required final Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final Map<String, WorkflowPreferenceSetting>? categories})
      : _channelTypes = channelTypes,
        _workflows = workflows,
        _categories = categories;

  final Map<ChannelType, ChannelTypePreference>? _channelTypes;
  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes {
    final value = _channelTypes;
    if (value == null) return null;
    if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, WorkflowPreferenceSetting>? _workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows {
    final value = _workflows;
    if (value == null) return null;
    if (_workflows is EqualUnmodifiableMapView) return _workflows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, WorkflowPreferenceSetting>? _categories;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SetPreferencesProperties(channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetPreferencesPropertiesImpl &&
            const DeepCollectionEquality()
                .equals(other._channelTypes, _channelTypes) &&
            const DeepCollectionEquality()
                .equals(other._workflows, _workflows) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channelTypes),
      const DeepCollectionEquality().hash(_workflows),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetPreferencesPropertiesImplCopyWith<_$SetPreferencesPropertiesImpl>
      get copyWith => __$$SetPreferencesPropertiesImplCopyWithImpl<
          _$SetPreferencesPropertiesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetPreferencesPropertiesImplToJson(
      this,
    );
  }
}

abstract class _SetPreferencesProperties implements SetPreferencesProperties {
  const factory _SetPreferencesProperties(
          {@JsonKey(
              name: 'channel_types',
              toJson: _channelTypePreferencesToJson,
              fromJson: _channelTypePreferencesFromJson)
          required final Map<ChannelType, ChannelTypePreference>? channelTypes,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? workflows,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? categories}) =
      _$SetPreferencesPropertiesImpl;

  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$SetPreferencesPropertiesImplCopyWith<_$SetPreferencesPropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreferenceSet _$PreferenceSetFromJson(Map<String, dynamic> json) {
  return _PreferenceSet.fromJson(json);
}

/// @nodoc
mixin _$PreferenceSet {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes =>
      throw _privateConstructorUsedError;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows =>
      throw _privateConstructorUsedError;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceSetCopyWith<PreferenceSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceSetCopyWith<$Res> {
  factory $PreferenceSetCopyWith(
          PreferenceSet value, $Res Function(PreferenceSet) then) =
      _$PreferenceSetCopyWithImpl<$Res, PreferenceSet>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? categories});
}

/// @nodoc
class _$PreferenceSetCopyWithImpl<$Res, $Val extends PreferenceSet>
    implements $PreferenceSetCopyWith<$Res> {
  _$PreferenceSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelTypes: freezed == channelTypes
          ? _value.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      workflows: freezed == workflows
          ? _value.workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceSetImplCopyWith<$Res>
    implements $PreferenceSetCopyWith<$Res> {
  factory _$$PreferenceSetImplCopyWith(
          _$PreferenceSetImpl value, $Res Function(_$PreferenceSetImpl) then) =
      __$$PreferenceSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      Map<String, WorkflowPreferenceSetting>? categories});
}

/// @nodoc
class __$$PreferenceSetImplCopyWithImpl<$Res>
    extends _$PreferenceSetCopyWithImpl<$Res, _$PreferenceSetImpl>
    implements _$$PreferenceSetImplCopyWith<$Res> {
  __$$PreferenceSetImplCopyWithImpl(
      _$PreferenceSetImpl _value, $Res Function(_$PreferenceSetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$PreferenceSetImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelTypes: freezed == channelTypes
          ? _value._channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, ChannelTypePreference>?,
      workflows: freezed == workflows
          ? _value._workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Map<String, WorkflowPreferenceSetting>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PreferenceSetImpl implements _PreferenceSet {
  const _$PreferenceSetImpl(
      {required this.id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      required final Map<ChannelType, ChannelTypePreference>? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final Map<String, WorkflowPreferenceSetting>? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final Map<String, WorkflowPreferenceSetting>? categories})
      : _channelTypes = channelTypes,
        _workflows = workflows,
        _categories = categories;

  factory _$PreferenceSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceSetImplFromJson(json);

  @override
  final String id;
  final Map<ChannelType, ChannelTypePreference>? _channelTypes;
  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes {
    final value = _channelTypes;
    if (value == null) return null;
    if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, WorkflowPreferenceSetting>? _workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows {
    final value = _workflows;
    if (value == null) return null;
    if (_workflows is EqualUnmodifiableMapView) return _workflows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, WorkflowPreferenceSetting>? _categories;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PreferenceSet(id: $id, channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceSetImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._channelTypes, _channelTypes) &&
            const DeepCollectionEquality()
                .equals(other._workflows, _workflows) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_channelTypes),
      const DeepCollectionEquality().hash(_workflows),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceSetImplCopyWith<_$PreferenceSetImpl> get copyWith =>
      __$$PreferenceSetImplCopyWithImpl<_$PreferenceSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceSetImplToJson(
      this,
    );
  }
}

abstract class _PreferenceSet implements PreferenceSet {
  const factory _PreferenceSet(
          {required final String id,
          @JsonKey(
              name: 'channel_types',
              toJson: _channelTypePreferencesToJson,
              fromJson: _channelTypePreferencesFromJson)
          required final Map<ChannelType, ChannelTypePreference>? channelTypes,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? workflows,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? categories}) =
      _$PreferenceSetImpl;

  factory _PreferenceSet.fromJson(Map<String, dynamic> json) =
      _$PreferenceSetImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  Map<ChannelType, ChannelTypePreference>? get channelTypes;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  Map<String, WorkflowPreferenceSetting>? get categories;
  @override
  @JsonKey(ignore: true)
  _$$PreferenceSetImplCopyWith<_$PreferenceSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PreferenceCondition _$PreferenceConditionFromJson(Map<String, dynamic> json) {
  return _PreferenceCondition.fromJson(json);
}

/// @nodoc
mixin _$PreferenceCondition {
  String get variable => throw _privateConstructorUsedError;
  String get operator => throw _privateConstructorUsedError;
  String get argument => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferenceConditionCopyWith<PreferenceCondition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferenceConditionCopyWith<$Res> {
  factory $PreferenceConditionCopyWith(
          PreferenceCondition value, $Res Function(PreferenceCondition) then) =
      _$PreferenceConditionCopyWithImpl<$Res, PreferenceCondition>;
  @useResult
  $Res call({String variable, String operator, String argument});
}

/// @nodoc
class _$PreferenceConditionCopyWithImpl<$Res, $Val extends PreferenceCondition>
    implements $PreferenceConditionCopyWith<$Res> {
  _$PreferenceConditionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variable = null,
    Object? operator = null,
    Object? argument = null,
  }) {
    return _then(_value.copyWith(
      variable: null == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      argument: null == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreferenceConditionImplCopyWith<$Res>
    implements $PreferenceConditionCopyWith<$Res> {
  factory _$$PreferenceConditionImplCopyWith(_$PreferenceConditionImpl value,
          $Res Function(_$PreferenceConditionImpl) then) =
      __$$PreferenceConditionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variable, String operator, String argument});
}

/// @nodoc
class __$$PreferenceConditionImplCopyWithImpl<$Res>
    extends _$PreferenceConditionCopyWithImpl<$Res, _$PreferenceConditionImpl>
    implements _$$PreferenceConditionImplCopyWith<$Res> {
  __$$PreferenceConditionImplCopyWithImpl(_$PreferenceConditionImpl _value,
      $Res Function(_$PreferenceConditionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variable = null,
    Object? operator = null,
    Object? argument = null,
  }) {
    return _then(_$PreferenceConditionImpl(
      variable: null == variable
          ? _value.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      argument: null == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PreferenceConditionImpl implements _PreferenceCondition {
  const _$PreferenceConditionImpl(
      {required this.variable, required this.operator, required this.argument});

  factory _$PreferenceConditionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreferenceConditionImplFromJson(json);

  @override
  final String variable;
  @override
  final String operator;
  @override
  final String argument;

  @override
  String toString() {
    return 'PreferenceCondition(variable: $variable, operator: $operator, argument: $argument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreferenceConditionImpl &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.argument, argument) ||
                other.argument == argument));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, variable, operator, argument);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreferenceConditionImplCopyWith<_$PreferenceConditionImpl> get copyWith =>
      __$$PreferenceConditionImplCopyWithImpl<_$PreferenceConditionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreferenceConditionImplToJson(
      this,
    );
  }
}

abstract class _PreferenceCondition implements PreferenceCondition {
  const factory _PreferenceCondition(
      {required final String variable,
      required final String operator,
      required final String argument}) = _$PreferenceConditionImpl;

  factory _PreferenceCondition.fromJson(Map<String, dynamic> json) =
      _$PreferenceConditionImpl.fromJson;

  @override
  String get variable;
  @override
  String get operator;
  @override
  String get argument;
  @override
  @JsonKey(ignore: true)
  _$$PreferenceConditionImplCopyWith<_$PreferenceConditionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

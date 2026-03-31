// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ChannelTypePreference {
  /// If [value] is set then [conditions] should not be set.
  bool? get value;

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions;

  /// Create a copy of ChannelTypePreference
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelTypePreferenceCopyWith<ChannelTypePreference> get copyWith =>
      _$ChannelTypePreferenceCopyWithImpl<ChannelTypePreference>(
          this as ChannelTypePreference, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelTypePreference &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(conditions));

  @override
  String toString() {
    return 'ChannelTypePreference(value: $value, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $ChannelTypePreferenceCopyWith<$Res> {
  factory $ChannelTypePreferenceCopyWith(ChannelTypePreference value,
          $Res Function(ChannelTypePreference) _then) =
      _$ChannelTypePreferenceCopyWithImpl;
  @useResult
  $Res call({bool? value, List<PreferenceCondition>? conditions});
}

/// @nodoc
class _$ChannelTypePreferenceCopyWithImpl<$Res>
    implements $ChannelTypePreferenceCopyWith<$Res> {
  _$ChannelTypePreferenceCopyWithImpl(this._self, this._then);

  final ChannelTypePreference _self;
  final $Res Function(ChannelTypePreference) _then;

  /// Create a copy of ChannelTypePreference
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditions: freezed == conditions
          ? _self.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChannelTypePreference value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChannelTypePreference value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChannelTypePreference value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool? value, List<PreferenceCondition>? conditions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference() when $default != null:
        return $default(_that.value, _that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool? value, List<PreferenceCondition>? conditions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference():
        return $default(_that.value, _that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool? value, List<PreferenceCondition>? conditions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypePreference() when $default != null:
        return $default(_that.value, _that.conditions);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ChannelTypePreference implements ChannelTypePreference {
  _ChannelTypePreference(
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

  /// Create a copy of ChannelTypePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelTypePreferenceCopyWith<_ChannelTypePreference> get copyWith =>
      __$ChannelTypePreferenceCopyWithImpl<_ChannelTypePreference>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelTypePreference &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'ChannelTypePreference(value: $value, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class _$ChannelTypePreferenceCopyWith<$Res>
    implements $ChannelTypePreferenceCopyWith<$Res> {
  factory _$ChannelTypePreferenceCopyWith(_ChannelTypePreference value,
          $Res Function(_ChannelTypePreference) _then) =
      __$ChannelTypePreferenceCopyWithImpl;
  @override
  @useResult
  $Res call({bool? value, List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$ChannelTypePreferenceCopyWithImpl<$Res>
    implements _$ChannelTypePreferenceCopyWith<$Res> {
  __$ChannelTypePreferenceCopyWithImpl(this._self, this._then);

  final _ChannelTypePreference _self;
  final $Res Function(_ChannelTypePreference) _then;

  /// Create a copy of ChannelTypePreference
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_ChannelTypePreference(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc
mixin _$WorkflowPreferenceSetting {
  /// If [value] is set then [channelTypePreferences] and [conditions] should
  /// not be set.
  bool? get value;

  /// If [channelTypePreferences] is set then [value] should not be set.
  ChannelTypePreferences? get channelTypePreferences;

  /// If [conditions] is set then [value] should not be set.
  List<PreferenceCondition>? get conditions;

  /// Create a copy of WorkflowPreferenceSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WorkflowPreferenceSettingCopyWith<WorkflowPreferenceSetting> get copyWith =>
      _$WorkflowPreferenceSettingCopyWithImpl<WorkflowPreferenceSetting>(
          this as WorkflowPreferenceSetting, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WorkflowPreferenceSetting &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality()
                .equals(other.channelTypePreferences, channelTypePreferences) &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      value,
      const DeepCollectionEquality().hash(channelTypePreferences),
      const DeepCollectionEquality().hash(conditions));

  @override
  String toString() {
    return 'WorkflowPreferenceSetting(value: $value, channelTypePreferences: $channelTypePreferences, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $WorkflowPreferenceSettingCopyWith<$Res> {
  factory $WorkflowPreferenceSettingCopyWith(WorkflowPreferenceSetting value,
          $Res Function(WorkflowPreferenceSetting) _then) =
      _$WorkflowPreferenceSettingCopyWithImpl;
  @useResult
  $Res call(
      {bool? value,
      ChannelTypePreferences? channelTypePreferences,
      List<PreferenceCondition>? conditions});
}

/// @nodoc
class _$WorkflowPreferenceSettingCopyWithImpl<$Res>
    implements $WorkflowPreferenceSettingCopyWith<$Res> {
  _$WorkflowPreferenceSettingCopyWithImpl(this._self, this._then);

  final WorkflowPreferenceSetting _self;
  final $Res Function(WorkflowPreferenceSetting) _then;

  /// Create a copy of WorkflowPreferenceSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? channelTypePreferences = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_self.copyWith(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelTypePreferences: freezed == channelTypePreferences
          ? _self.channelTypePreferences
          : channelTypePreferences // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      conditions: freezed == conditions
          ? _self.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WorkflowPreferenceSetting value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WorkflowPreferenceSetting value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WorkflowPreferenceSetting value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool? value,
            ChannelTypePreferences? channelTypePreferences,
            List<PreferenceCondition>? conditions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting() when $default != null:
        return $default(
            _that.value, _that.channelTypePreferences, _that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool? value,
            ChannelTypePreferences? channelTypePreferences,
            List<PreferenceCondition>? conditions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting():
        return $default(
            _that.value, _that.channelTypePreferences, _that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool? value,
            ChannelTypePreferences? channelTypePreferences,
            List<PreferenceCondition>? conditions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WorkflowPreferenceSetting() when $default != null:
        return $default(
            _that.value, _that.channelTypePreferences, _that.conditions);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WorkflowPreferenceSetting implements WorkflowPreferenceSetting {
  _WorkflowPreferenceSetting(
      {this.value,
      final ChannelTypePreferences? channelTypePreferences,
      final List<PreferenceCondition>? conditions})
      : _channelTypePreferences = channelTypePreferences,
        _conditions = conditions;

  /// If [value] is set then [channelTypePreferences] and [conditions] should
  /// not be set.
  @override
  final bool? value;

  /// If [channelTypePreferences] is set then [value] should not be set.
  final ChannelTypePreferences? _channelTypePreferences;

  /// If [channelTypePreferences] is set then [value] should not be set.
  @override
  ChannelTypePreferences? get channelTypePreferences {
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

  /// Create a copy of WorkflowPreferenceSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WorkflowPreferenceSettingCopyWith<_WorkflowPreferenceSetting>
      get copyWith =>
          __$WorkflowPreferenceSettingCopyWithImpl<_WorkflowPreferenceSetting>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WorkflowPreferenceSetting &&
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

  @override
  String toString() {
    return 'WorkflowPreferenceSetting(value: $value, channelTypePreferences: $channelTypePreferences, conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class _$WorkflowPreferenceSettingCopyWith<$Res>
    implements $WorkflowPreferenceSettingCopyWith<$Res> {
  factory _$WorkflowPreferenceSettingCopyWith(_WorkflowPreferenceSetting value,
          $Res Function(_WorkflowPreferenceSetting) _then) =
      __$WorkflowPreferenceSettingCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? value,
      ChannelTypePreferences? channelTypePreferences,
      List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$WorkflowPreferenceSettingCopyWithImpl<$Res>
    implements _$WorkflowPreferenceSettingCopyWith<$Res> {
  __$WorkflowPreferenceSettingCopyWithImpl(this._self, this._then);

  final _WorkflowPreferenceSetting _self;
  final $Res Function(_WorkflowPreferenceSetting) _then;

  /// Create a copy of WorkflowPreferenceSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = freezed,
    Object? channelTypePreferences = freezed,
    Object? conditions = freezed,
  }) {
    return _then(_WorkflowPreferenceSetting(
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelTypePreferences: freezed == channelTypePreferences
          ? _self._channelTypePreferences
          : channelTypePreferences // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc
mixin _$ChannelTypesJson {
  @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson)
  dynamic get channelTypes;

  /// Create a copy of ChannelTypesJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChannelTypesJsonCopyWith<ChannelTypesJson> get copyWith =>
      _$ChannelTypesJsonCopyWithImpl<ChannelTypesJson>(
          this as ChannelTypesJson, _$identity);

  /// Serializes this ChannelTypesJson to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChannelTypesJson &&
            const DeepCollectionEquality()
                .equals(other.channelTypes, channelTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(channelTypes));

  @override
  String toString() {
    return 'ChannelTypesJson(channelTypes: $channelTypes)';
  }
}

/// @nodoc
abstract mixin class $ChannelTypesJsonCopyWith<$Res> {
  factory $ChannelTypesJsonCopyWith(
          ChannelTypesJson value, $Res Function(ChannelTypesJson) _then) =
      _$ChannelTypesJsonCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      dynamic channelTypes});
}

/// @nodoc
class _$ChannelTypesJsonCopyWithImpl<$Res>
    implements $ChannelTypesJsonCopyWith<$Res> {
  _$ChannelTypesJsonCopyWithImpl(this._self, this._then);

  final ChannelTypesJson _self;
  final $Res Function(ChannelTypesJson) _then;

  /// Create a copy of ChannelTypesJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
  }) {
    return _then(_self.copyWith(
      channelTypes: freezed == channelTypes
          ? _self.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// Adds pattern-matching-related methods to [ChannelTypesJson].
extension ChannelTypesJsonPatterns on ChannelTypesJson {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ChannelTypesJson value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ChannelTypesJson value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ChannelTypesJson value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _nonNullChannelTypePreferencesToJson,
                fromJson: _nonNullChannelTypePreferencesFromJson)
            dynamic channelTypes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson() when $default != null:
        return $default(_that.channelTypes);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _nonNullChannelTypePreferencesToJson,
                fromJson: _nonNullChannelTypePreferencesFromJson)
            dynamic channelTypes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson():
        return $default(_that.channelTypes);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _nonNullChannelTypePreferencesToJson,
                fromJson: _nonNullChannelTypePreferencesFromJson)
            dynamic channelTypes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ChannelTypesJson() when $default != null:
        return $default(_that.channelTypes);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ChannelTypesJson implements ChannelTypesJson {
  const _ChannelTypesJson(
      {@JsonKey(
          name: 'channel_types',
          toJson: _nonNullChannelTypePreferencesToJson,
          fromJson: _nonNullChannelTypePreferencesFromJson)
      required this.channelTypes});
  factory _ChannelTypesJson.fromJson(Map<String, dynamic> json) =>
      _$ChannelTypesJsonFromJson(json);

  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson)
  final dynamic channelTypes;

  /// Create a copy of ChannelTypesJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChannelTypesJsonCopyWith<_ChannelTypesJson> get copyWith =>
      __$ChannelTypesJsonCopyWithImpl<_ChannelTypesJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChannelTypesJsonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelTypesJson &&
            const DeepCollectionEquality()
                .equals(other.channelTypes, channelTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(channelTypes));

  @override
  String toString() {
    return 'ChannelTypesJson(channelTypes: $channelTypes)';
  }
}

/// @nodoc
abstract mixin class _$ChannelTypesJsonCopyWith<$Res>
    implements $ChannelTypesJsonCopyWith<$Res> {
  factory _$ChannelTypesJsonCopyWith(
          _ChannelTypesJson value, $Res Function(_ChannelTypesJson) _then) =
      __$ChannelTypesJsonCopyWithImpl;
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
class __$ChannelTypesJsonCopyWithImpl<$Res>
    implements _$ChannelTypesJsonCopyWith<$Res> {
  __$ChannelTypesJsonCopyWithImpl(this._self, this._then);

  final _ChannelTypesJson _self;
  final $Res Function(_ChannelTypesJson) _then;

  /// Create a copy of ChannelTypesJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channelTypes = freezed,
  }) {
    return _then(_ChannelTypesJson(
      channelTypes: freezed == channelTypes
          ? _self.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
mixin _$ConditionsJson {
  List<PreferenceCondition>? get conditions;

  /// Create a copy of ConditionsJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ConditionsJsonCopyWith<ConditionsJson> get copyWith =>
      _$ConditionsJsonCopyWithImpl<ConditionsJson>(
          this as ConditionsJson, _$identity);

  /// Serializes this ConditionsJson to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ConditionsJson &&
            const DeepCollectionEquality()
                .equals(other.conditions, conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(conditions));

  @override
  String toString() {
    return 'ConditionsJson(conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class $ConditionsJsonCopyWith<$Res> {
  factory $ConditionsJsonCopyWith(
          ConditionsJson value, $Res Function(ConditionsJson) _then) =
      _$ConditionsJsonCopyWithImpl;
  @useResult
  $Res call({List<PreferenceCondition>? conditions});
}

/// @nodoc
class _$ConditionsJsonCopyWithImpl<$Res>
    implements $ConditionsJsonCopyWith<$Res> {
  _$ConditionsJsonCopyWithImpl(this._self, this._then);

  final ConditionsJson _self;
  final $Res Function(ConditionsJson) _then;

  /// Create a copy of ConditionsJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conditions = freezed,
  }) {
    return _then(_self.copyWith(
      conditions: freezed == conditions
          ? _self.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ConditionsJson].
extension ConditionsJsonPatterns on ConditionsJson {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ConditionsJson value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConditionsJson value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ConditionsJson value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<PreferenceCondition>? conditions)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson() when $default != null:
        return $default(_that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<PreferenceCondition>? conditions) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson():
        return $default(_that.conditions);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<PreferenceCondition>? conditions)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ConditionsJson() when $default != null:
        return $default(_that.conditions);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _ConditionsJson implements ConditionsJson {
  const _ConditionsJson({required final List<PreferenceCondition>? conditions})
      : _conditions = conditions;
  factory _ConditionsJson.fromJson(Map<String, dynamic> json) =>
      _$ConditionsJsonFromJson(json);

  final List<PreferenceCondition>? _conditions;
  @override
  List<PreferenceCondition>? get conditions {
    final value = _conditions;
    if (value == null) return null;
    if (_conditions is EqualUnmodifiableListView) return _conditions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ConditionsJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ConditionsJsonCopyWith<_ConditionsJson> get copyWith =>
      __$ConditionsJsonCopyWithImpl<_ConditionsJson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ConditionsJsonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConditionsJson &&
            const DeepCollectionEquality()
                .equals(other._conditions, _conditions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_conditions));

  @override
  String toString() {
    return 'ConditionsJson(conditions: $conditions)';
  }
}

/// @nodoc
abstract mixin class _$ConditionsJsonCopyWith<$Res>
    implements $ConditionsJsonCopyWith<$Res> {
  factory _$ConditionsJsonCopyWith(
          _ConditionsJson value, $Res Function(_ConditionsJson) _then) =
      __$ConditionsJsonCopyWithImpl;
  @override
  @useResult
  $Res call({List<PreferenceCondition>? conditions});
}

/// @nodoc
class __$ConditionsJsonCopyWithImpl<$Res>
    implements _$ConditionsJsonCopyWith<$Res> {
  __$ConditionsJsonCopyWithImpl(this._self, this._then);

  final _ConditionsJson _self;
  final $Res Function(_ConditionsJson) _then;

  /// Create a copy of ConditionsJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? conditions = freezed,
  }) {
    return _then(_ConditionsJson(
      conditions: freezed == conditions
          ? _self._conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<PreferenceCondition>?,
    ));
  }
}

/// @nodoc
mixin _$SetPreferencesProperties {
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  ChannelTypePreferences? get channelTypes;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get workflows;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get categories;

  /// Create a copy of SetPreferencesProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SetPreferencesPropertiesCopyWith<SetPreferencesProperties> get copyWith =>
      _$SetPreferencesPropertiesCopyWithImpl<SetPreferencesProperties>(
          this as SetPreferencesProperties, _$identity);

  /// Serializes this SetPreferencesProperties to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetPreferencesProperties &&
            const DeepCollectionEquality()
                .equals(other.channelTypes, channelTypes) &&
            const DeepCollectionEquality().equals(other.workflows, workflows) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(channelTypes),
      const DeepCollectionEquality().hash(workflows),
      const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'SetPreferencesProperties(channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $SetPreferencesPropertiesCopyWith<$Res> {
  factory $SetPreferencesPropertiesCopyWith(SetPreferencesProperties value,
          $Res Function(SetPreferencesProperties) _then) =
      _$SetPreferencesPropertiesCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? categories});
}

/// @nodoc
class _$SetPreferencesPropertiesCopyWithImpl<$Res>
    implements $SetPreferencesPropertiesCopyWith<$Res> {
  _$SetPreferencesPropertiesCopyWithImpl(this._self, this._then);

  final SetPreferencesProperties _self;
  final $Res Function(SetPreferencesProperties) _then;

  /// Create a copy of SetPreferencesProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_self.copyWith(
      channelTypes: freezed == channelTypes
          ? _self.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      workflows: freezed == workflows
          ? _self.workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SetPreferencesProperties value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SetPreferencesProperties value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SetPreferencesProperties value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties() when $default != null:
        return $default(_that.channelTypes, _that.workflows, _that.categories);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties():
        return $default(_that.channelTypes, _that.workflows, _that.categories);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SetPreferencesProperties() when $default != null:
        return $default(_that.channelTypes, _that.workflows, _that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _SetPreferencesProperties implements SetPreferencesProperties {
  const _SetPreferencesProperties(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      required final ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final WorkflowPreferences? categories})
      : _channelTypes = channelTypes,
        _workflows = workflows,
        _categories = categories;

  final ChannelTypePreferences? _channelTypes;
  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  ChannelTypePreferences? get channelTypes {
    final value = _channelTypes;
    if (value == null) return null;
    if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final WorkflowPreferences? _workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get workflows {
    final value = _workflows;
    if (value == null) return null;
    if (_workflows is EqualUnmodifiableMapView) return _workflows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final WorkflowPreferences? _categories;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of SetPreferencesProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SetPreferencesPropertiesCopyWith<_SetPreferencesProperties> get copyWith =>
      __$SetPreferencesPropertiesCopyWithImpl<_SetPreferencesProperties>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SetPreferencesPropertiesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SetPreferencesProperties &&
            const DeepCollectionEquality()
                .equals(other._channelTypes, _channelTypes) &&
            const DeepCollectionEquality()
                .equals(other._workflows, _workflows) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_channelTypes),
      const DeepCollectionEquality().hash(_workflows),
      const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'SetPreferencesProperties(channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$SetPreferencesPropertiesCopyWith<$Res>
    implements $SetPreferencesPropertiesCopyWith<$Res> {
  factory _$SetPreferencesPropertiesCopyWith(_SetPreferencesProperties value,
          $Res Function(_SetPreferencesProperties) _then) =
      __$SetPreferencesPropertiesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? categories});
}

/// @nodoc
class __$SetPreferencesPropertiesCopyWithImpl<$Res>
    implements _$SetPreferencesPropertiesCopyWith<$Res> {
  __$SetPreferencesPropertiesCopyWithImpl(this._self, this._then);

  final _SetPreferencesProperties _self;
  final $Res Function(_SetPreferencesProperties) _then;

  /// Create a copy of SetPreferencesProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_SetPreferencesProperties(
      channelTypes: freezed == channelTypes
          ? _self._channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      workflows: freezed == workflows
          ? _self._workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
    ));
  }
}

/// @nodoc
mixin _$PreferenceSet {
  String get id;
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  ChannelTypePreferences? get channelTypes;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get workflows;
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get categories;

  /// Create a copy of PreferenceSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreferenceSetCopyWith<PreferenceSet> get copyWith =>
      _$PreferenceSetCopyWithImpl<PreferenceSet>(
          this as PreferenceSet, _$identity);

  /// Serializes this PreferenceSet to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreferenceSet &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.channelTypes, channelTypes) &&
            const DeepCollectionEquality().equals(other.workflows, workflows) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(channelTypes),
      const DeepCollectionEquality().hash(workflows),
      const DeepCollectionEquality().hash(categories));

  @override
  String toString() {
    return 'PreferenceSet(id: $id, channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class $PreferenceSetCopyWith<$Res> {
  factory $PreferenceSetCopyWith(
          PreferenceSet value, $Res Function(PreferenceSet) _then) =
      _$PreferenceSetCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? categories});
}

/// @nodoc
class _$PreferenceSetCopyWithImpl<$Res>
    implements $PreferenceSetCopyWith<$Res> {
  _$PreferenceSetCopyWithImpl(this._self, this._then);

  final PreferenceSet _self;
  final $Res Function(PreferenceSet) _then;

  /// Create a copy of PreferenceSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelTypes: freezed == channelTypes
          ? _self.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      workflows: freezed == workflows
          ? _self.workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
      categories: freezed == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PreferenceSet value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PreferenceSet value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PreferenceSet value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet() when $default != null:
        return $default(
            _that.id, _that.channelTypes, _that.workflows, _that.categories);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet():
        return $default(
            _that.id, _that.channelTypes, _that.workflows, _that.categories);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            @JsonKey(
                name: 'channel_types',
                toJson: _channelTypePreferencesToJson,
                fromJson: _channelTypePreferencesFromJson)
            ChannelTypePreferences? channelTypes,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? workflows,
            @JsonKey(
                toJson: _workflowPreferencesToJson,
                fromJson: _workflowPreferencesFromJson)
            WorkflowPreferences? categories)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceSet() when $default != null:
        return $default(
            _that.id, _that.channelTypes, _that.workflows, _that.categories);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PreferenceSet implements PreferenceSet {
  const _PreferenceSet(
      {required this.id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      required final ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      required final WorkflowPreferences? categories})
      : _channelTypes = channelTypes,
        _workflows = workflows,
        _categories = categories;
  factory _PreferenceSet.fromJson(Map<String, dynamic> json) =>
      _$PreferenceSetFromJson(json);

  @override
  final String id;
  final ChannelTypePreferences? _channelTypes;
  @override
  @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson)
  ChannelTypePreferences? get channelTypes {
    final value = _channelTypes;
    if (value == null) return null;
    if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final WorkflowPreferences? _workflows;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get workflows {
    final value = _workflows;
    if (value == null) return null;
    if (_workflows is EqualUnmodifiableMapView) return _workflows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final WorkflowPreferences? _categories;
  @override
  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  WorkflowPreferences? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableMapView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of PreferenceSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreferenceSetCopyWith<_PreferenceSet> get copyWith =>
      __$PreferenceSetCopyWithImpl<_PreferenceSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PreferenceSetToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PreferenceSet &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._channelTypes, _channelTypes) &&
            const DeepCollectionEquality()
                .equals(other._workflows, _workflows) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_channelTypes),
      const DeepCollectionEquality().hash(_workflows),
      const DeepCollectionEquality().hash(_categories));

  @override
  String toString() {
    return 'PreferenceSet(id: $id, channelTypes: $channelTypes, workflows: $workflows, categories: $categories)';
  }
}

/// @nodoc
abstract mixin class _$PreferenceSetCopyWith<$Res>
    implements $PreferenceSetCopyWith<$Res> {
  factory _$PreferenceSetCopyWith(
          _PreferenceSet value, $Res Function(_PreferenceSet) _then) =
      __$PreferenceSetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(
          name: 'channel_types',
          toJson: _channelTypePreferencesToJson,
          fromJson: _channelTypePreferencesFromJson)
      ChannelTypePreferences? channelTypes,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? workflows,
      @JsonKey(
          toJson: _workflowPreferencesToJson,
          fromJson: _workflowPreferencesFromJson)
      WorkflowPreferences? categories});
}

/// @nodoc
class __$PreferenceSetCopyWithImpl<$Res>
    implements _$PreferenceSetCopyWith<$Res> {
  __$PreferenceSetCopyWithImpl(this._self, this._then);

  final _PreferenceSet _self;
  final $Res Function(_PreferenceSet) _then;

  /// Create a copy of PreferenceSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? channelTypes = freezed,
    Object? workflows = freezed,
    Object? categories = freezed,
  }) {
    return _then(_PreferenceSet(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelTypes: freezed == channelTypes
          ? _self._channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as ChannelTypePreferences?,
      workflows: freezed == workflows
          ? _self._workflows
          : workflows // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
      categories: freezed == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as WorkflowPreferences?,
    ));
  }
}

/// @nodoc
mixin _$PreferenceCondition {
  String get variable;
  String get operator;
  String get argument;

  /// Create a copy of PreferenceCondition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PreferenceConditionCopyWith<PreferenceCondition> get copyWith =>
      _$PreferenceConditionCopyWithImpl<PreferenceCondition>(
          this as PreferenceCondition, _$identity);

  /// Serializes this PreferenceCondition to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PreferenceCondition &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.argument, argument) ||
                other.argument == argument));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variable, operator, argument);

  @override
  String toString() {
    return 'PreferenceCondition(variable: $variable, operator: $operator, argument: $argument)';
  }
}

/// @nodoc
abstract mixin class $PreferenceConditionCopyWith<$Res> {
  factory $PreferenceConditionCopyWith(
          PreferenceCondition value, $Res Function(PreferenceCondition) _then) =
      _$PreferenceConditionCopyWithImpl;
  @useResult
  $Res call({String variable, String operator, String argument});
}

/// @nodoc
class _$PreferenceConditionCopyWithImpl<$Res>
    implements $PreferenceConditionCopyWith<$Res> {
  _$PreferenceConditionCopyWithImpl(this._self, this._then);

  final PreferenceCondition _self;
  final $Res Function(PreferenceCondition) _then;

  /// Create a copy of PreferenceCondition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variable = null,
    Object? operator = null,
    Object? argument = null,
  }) {
    return _then(_self.copyWith(
      variable: null == variable
          ? _self.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      argument: null == argument
          ? _self.argument
          : argument // ignore: cast_nullable_to_non_nullable
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PreferenceCondition value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PreferenceCondition value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PreferenceCondition value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String variable, String operator, String argument)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition() when $default != null:
        return $default(_that.variable, _that.operator, _that.argument);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String variable, String operator, String argument)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition():
        return $default(_that.variable, _that.operator, _that.argument);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String variable, String operator, String argument)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PreferenceCondition() when $default != null:
        return $default(_that.variable, _that.operator, _that.argument);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PreferenceCondition implements PreferenceCondition {
  const _PreferenceCondition(
      {required this.variable, required this.operator, required this.argument});
  factory _PreferenceCondition.fromJson(Map<String, dynamic> json) =>
      _$PreferenceConditionFromJson(json);

  @override
  final String variable;
  @override
  final String operator;
  @override
  final String argument;

  /// Create a copy of PreferenceCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PreferenceConditionCopyWith<_PreferenceCondition> get copyWith =>
      __$PreferenceConditionCopyWithImpl<_PreferenceCondition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PreferenceConditionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PreferenceCondition &&
            (identical(other.variable, variable) ||
                other.variable == variable) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.argument, argument) ||
                other.argument == argument));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variable, operator, argument);

  @override
  String toString() {
    return 'PreferenceCondition(variable: $variable, operator: $operator, argument: $argument)';
  }
}

/// @nodoc
abstract mixin class _$PreferenceConditionCopyWith<$Res>
    implements $PreferenceConditionCopyWith<$Res> {
  factory _$PreferenceConditionCopyWith(_PreferenceCondition value,
          $Res Function(_PreferenceCondition) _then) =
      __$PreferenceConditionCopyWithImpl;
  @override
  @useResult
  $Res call({String variable, String operator, String argument});
}

/// @nodoc
class __$PreferenceConditionCopyWithImpl<$Res>
    implements _$PreferenceConditionCopyWith<$Res> {
  __$PreferenceConditionCopyWithImpl(this._self, this._then);

  final _PreferenceCondition _self;
  final $Res Function(_PreferenceCondition) _then;

  /// Create a copy of PreferenceCondition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? variable = null,
    Object? operator = null,
    Object? argument = null,
  }) {
    return _then(_PreferenceCondition(
      variable: null == variable
          ? _self.variable
          : variable // ignore: cast_nullable_to_non_nullable
              as String,
      operator: null == operator
          ? _self.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String,
      argument: null == argument
          ? _self.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on

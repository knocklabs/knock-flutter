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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

_ChannelTypesJson _$ChannelTypesJsonFromJson(Map<String, dynamic> json) {
  return __ChannelTypesJson.fromJson(json);
}

/// @nodoc
mixin _$ChannelTypesJson {
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool> get channelTypes => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'channel_types') Map<ChannelType, bool> channelTypes});
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
    Object? channelTypes = null,
  }) {
    return _then(_value.copyWith(
      channelTypes: null == channelTypes
          ? _value.channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, bool>,
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
      {@JsonKey(name: 'channel_types') Map<ChannelType, bool> channelTypes});
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
    Object? channelTypes = null,
  }) {
    return _then(_$_ChannelTypesJsonImpl(
      channelTypes: null == channelTypes
          ? _value._channelTypes
          : channelTypes // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, bool>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChannelTypesJsonImpl implements __ChannelTypesJson {
  const _$_ChannelTypesJsonImpl(
      {@JsonKey(name: 'channel_types')
      required final Map<ChannelType, bool> channelTypes})
      : _channelTypes = channelTypes;

  factory _$_ChannelTypesJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelTypesJsonImplFromJson(json);

  final Map<ChannelType, bool> _channelTypes;
  @override
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool> get channelTypes {
    if (_channelTypes is EqualUnmodifiableMapView) return _channelTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_channelTypes);
  }

  @override
  String toString() {
    return '_ChannelTypesJson(channelTypes: $channelTypes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelTypesJsonImpl &&
            const DeepCollectionEquality()
                .equals(other._channelTypes, _channelTypes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_channelTypes));

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
          {@JsonKey(name: 'channel_types')
          required final Map<ChannelType, bool> channelTypes}) =
      _$_ChannelTypesJsonImpl;

  factory __ChannelTypesJson.fromJson(Map<String, dynamic> json) =
      _$_ChannelTypesJsonImpl.fromJson;

  @override
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool> get channelTypes;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelTypesJsonImplCopyWith<_$_ChannelTypesJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkflowPreferenceSetting {
  bool get isWorkflow => throw _privateConstructorUsedError;
  bool? get workflow => throw _privateConstructorUsedError;
  Map<ChannelType, bool>? get channelPreferences =>
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
      {bool isWorkflow,
      bool? workflow,
      Map<ChannelType, bool>? channelPreferences});
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
    Object? isWorkflow = null,
    Object? workflow = freezed,
    Object? channelPreferences = freezed,
  }) {
    return _then(_value.copyWith(
      isWorkflow: null == isWorkflow
          ? _value.isWorkflow
          : isWorkflow // ignore: cast_nullable_to_non_nullable
              as bool,
      workflow: freezed == workflow
          ? _value.workflow
          : workflow // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelPreferences: freezed == channelPreferences
          ? _value.channelPreferences
          : channelPreferences // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, bool>?,
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
      {bool isWorkflow,
      bool? workflow,
      Map<ChannelType, bool>? channelPreferences});
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
    Object? isWorkflow = null,
    Object? workflow = freezed,
    Object? channelPreferences = freezed,
  }) {
    return _then(_$WorkflowPreferenceSettingImpl(
      isWorkflow: null == isWorkflow
          ? _value.isWorkflow
          : isWorkflow // ignore: cast_nullable_to_non_nullable
              as bool,
      workflow: freezed == workflow
          ? _value.workflow
          : workflow // ignore: cast_nullable_to_non_nullable
              as bool?,
      channelPreferences: freezed == channelPreferences
          ? _value._channelPreferences
          : channelPreferences // ignore: cast_nullable_to_non_nullable
              as Map<ChannelType, bool>?,
    ));
  }
}

/// @nodoc

class _$WorkflowPreferenceSettingImpl implements _WorkflowPreferenceSetting {
  const _$WorkflowPreferenceSettingImpl(
      {required this.isWorkflow,
      required this.workflow,
      required final Map<ChannelType, bool>? channelPreferences})
      : _channelPreferences = channelPreferences;

  @override
  final bool isWorkflow;
  @override
  final bool? workflow;
  final Map<ChannelType, bool>? _channelPreferences;
  @override
  Map<ChannelType, bool>? get channelPreferences {
    final value = _channelPreferences;
    if (value == null) return null;
    if (_channelPreferences is EqualUnmodifiableMapView)
      return _channelPreferences;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'WorkflowPreferenceSetting._(isWorkflow: $isWorkflow, workflow: $workflow, channelPreferences: $channelPreferences)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowPreferenceSettingImpl &&
            (identical(other.isWorkflow, isWorkflow) ||
                other.isWorkflow == isWorkflow) &&
            (identical(other.workflow, workflow) ||
                other.workflow == workflow) &&
            const DeepCollectionEquality()
                .equals(other._channelPreferences, _channelPreferences));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isWorkflow, workflow,
      const DeepCollectionEquality().hash(_channelPreferences));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowPreferenceSettingImplCopyWith<_$WorkflowPreferenceSettingImpl>
      get copyWith => __$$WorkflowPreferenceSettingImplCopyWithImpl<
          _$WorkflowPreferenceSettingImpl>(this, _$identity);
}

abstract class _WorkflowPreferenceSetting implements WorkflowPreferenceSetting {
  const factory _WorkflowPreferenceSetting(
          {required final bool isWorkflow,
          required final bool? workflow,
          required final Map<ChannelType, bool>? channelPreferences}) =
      _$WorkflowPreferenceSettingImpl;

  @override
  bool get isWorkflow;
  @override
  bool? get workflow;
  @override
  Map<ChannelType, bool>? get channelPreferences;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowPreferenceSettingImplCopyWith<_$WorkflowPreferenceSettingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetPreferencesProperties _$SetPreferencesPropertiesFromJson(
    Map<String, dynamic> json) {
  return _SetPreferencesProperties.fromJson(json);
}

/// @nodoc
mixin _$SetPreferencesProperties {
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes =>
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
      {@JsonKey(name: 'channel_types') Map<ChannelType, bool>? channelTypes,
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
              as Map<ChannelType, bool>?,
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
      {@JsonKey(name: 'channel_types') Map<ChannelType, bool>? channelTypes,
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
              as Map<ChannelType, bool>?,
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
      {@JsonKey(name: 'channel_types')
      required final Map<ChannelType, bool>? channelTypes,
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

  factory _$SetPreferencesPropertiesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetPreferencesPropertiesImplFromJson(json);

  final Map<ChannelType, bool>? _channelTypes;
  @override
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes {
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
  bool operator ==(dynamic other) {
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
          {@JsonKey(name: 'channel_types')
          required final Map<ChannelType, bool>? channelTypes,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? workflows,
          @JsonKey(
              toJson: _workflowPreferencesToJson,
              fromJson: _workflowPreferencesFromJson)
          required final Map<String, WorkflowPreferenceSetting>? categories}) =
      _$SetPreferencesPropertiesImpl;

  factory _SetPreferencesProperties.fromJson(Map<String, dynamic> json) =
      _$SetPreferencesPropertiesImpl.fromJson;

  @override
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes;
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
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes =>
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
      @JsonKey(name: 'channel_types') Map<ChannelType, bool>? channelTypes,
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
              as Map<ChannelType, bool>?,
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
      @JsonKey(name: 'channel_types') Map<ChannelType, bool>? channelTypes,
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
              as Map<ChannelType, bool>?,
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
      @JsonKey(name: 'channel_types')
      required final Map<ChannelType, bool>? channelTypes,
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
  final Map<ChannelType, bool>? _channelTypes;
  @override
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes {
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
  bool operator ==(dynamic other) {
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
          @JsonKey(name: 'channel_types')
          required final Map<ChannelType, bool>? channelTypes,
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
  @JsonKey(name: 'channel_types')
  Map<ChannelType, bool>? get channelTypes;
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

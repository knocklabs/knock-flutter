// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InsertedAtDateRange _$InsertedAtDateRangeFromJson(Map<String, dynamic> json) {
  return _InsertedAtDateRange.fromJson(json);
}

/// @nodoc
mixin _$InsertedAtDateRange {
  /// The start date in ISO 8601 format
  String? get start => throw _privateConstructorUsedError;

  /// The end date in ISO 8601 format
  String? get end => throw _privateConstructorUsedError;

  /// Whether to be inclusive of the start and end dates
  bool? get inclusive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsertedAtDateRangeCopyWith<InsertedAtDateRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertedAtDateRangeCopyWith<$Res> {
  factory $InsertedAtDateRangeCopyWith(
          InsertedAtDateRange value, $Res Function(InsertedAtDateRange) then) =
      _$InsertedAtDateRangeCopyWithImpl<$Res, InsertedAtDateRange>;
  @useResult
  $Res call({String? start, String? end, bool? inclusive});
}

/// @nodoc
class _$InsertedAtDateRangeCopyWithImpl<$Res, $Val extends InsertedAtDateRange>
    implements $InsertedAtDateRangeCopyWith<$Res> {
  _$InsertedAtDateRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? inclusive = freezed,
  }) {
    return _then(_value.copyWith(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      inclusive: freezed == inclusive
          ? _value.inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InsertedAtDateRangeImplCopyWith<$Res>
    implements $InsertedAtDateRangeCopyWith<$Res> {
  factory _$$InsertedAtDateRangeImplCopyWith(_$InsertedAtDateRangeImpl value,
          $Res Function(_$InsertedAtDateRangeImpl) then) =
      __$$InsertedAtDateRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? start, String? end, bool? inclusive});
}

/// @nodoc
class __$$InsertedAtDateRangeImplCopyWithImpl<$Res>
    extends _$InsertedAtDateRangeCopyWithImpl<$Res, _$InsertedAtDateRangeImpl>
    implements _$$InsertedAtDateRangeImplCopyWith<$Res> {
  __$$InsertedAtDateRangeImplCopyWithImpl(_$InsertedAtDateRangeImpl _value,
      $Res Function(_$InsertedAtDateRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? inclusive = freezed,
  }) {
    return _then(_$InsertedAtDateRangeImpl(
      start: freezed == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      inclusive: freezed == inclusive
          ? _value.inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InsertedAtDateRangeImpl implements _InsertedAtDateRange {
  const _$InsertedAtDateRangeImpl({this.start, this.end, this.inclusive});

  factory _$InsertedAtDateRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$InsertedAtDateRangeImplFromJson(json);

  /// The start date in ISO 8601 format
  @override
  final String? start;

  /// The end date in ISO 8601 format
  @override
  final String? end;

  /// Whether to be inclusive of the start and end dates
  @override
  final bool? inclusive;

  @override
  String toString() {
    return 'InsertedAtDateRange(start: $start, end: $end, inclusive: $inclusive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertedAtDateRangeImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.inclusive, inclusive) ||
                other.inclusive == inclusive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, inclusive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertedAtDateRangeImplCopyWith<_$InsertedAtDateRangeImpl> get copyWith =>
      __$$InsertedAtDateRangeImplCopyWithImpl<_$InsertedAtDateRangeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InsertedAtDateRangeImplToJson(
      this,
    );
  }
}

abstract class _InsertedAtDateRange implements InsertedAtDateRange {
  const factory _InsertedAtDateRange(
      {final String? start,
      final String? end,
      final bool? inclusive}) = _$InsertedAtDateRangeImpl;

  factory _InsertedAtDateRange.fromJson(Map<String, dynamic> json) =
      _$InsertedAtDateRangeImpl.fromJson;

  @override

  /// The start date in ISO 8601 format
  String? get start;
  @override

  /// The end date in ISO 8601 format
  String? get end;
  @override

  /// Whether to be inclusive of the start and end dates
  bool? get inclusive;
  @override
  @JsonKey(ignore: true)
  _$$InsertedAtDateRangeImplCopyWith<_$InsertedAtDateRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedOptions {
  String? get before => throw _privateConstructorUsedError;
  String? get after => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int? get pageSize => throw _privateConstructorUsedError;
  FeedOptionsStatus? get status => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  String? get tenant => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant => throw _privateConstructorUsedError;
  @JsonKey(name: 'workflow_categories')
  List<String>? get workflowCategories => throw _privateConstructorUsedError;
  FeedOptionsArchivedScope get archived => throw _privateConstructorUsedError;
  @JsonKey(name: 'trigger_data')
  Map<String, dynamic>? get triggerData => throw _privateConstructorUsedError;
  @JsonKey(name: 'inserted_at_date_range')
  InsertedAtDateRange? get insertedAtDateRange =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedOptionsCopyWith<FeedOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedOptionsCopyWith<$Res> {
  factory $FeedOptionsCopyWith(
          FeedOptions value, $Res Function(FeedOptions) then) =
      _$FeedOptionsCopyWithImpl<$Res, FeedOptions>;
  @useResult
  $Res call(
      {String? before,
      String? after,
      @JsonKey(name: 'page_size') int? pageSize,
      FeedOptionsStatus? status,
      String? source,
      String? tenant,
      @JsonKey(name: 'has_tenant') bool? hasTenant,
      @JsonKey(name: 'workflow_categories') List<String>? workflowCategories,
      FeedOptionsArchivedScope archived,
      @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
      @JsonKey(name: 'inserted_at_date_range')
      InsertedAtDateRange? insertedAtDateRange});

  $InsertedAtDateRangeCopyWith<$Res>? get insertedAtDateRange;
}

/// @nodoc
class _$FeedOptionsCopyWithImpl<$Res, $Val extends FeedOptions>
    implements $FeedOptionsCopyWith<$Res> {
  _$FeedOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? before = freezed,
    Object? after = freezed,
    Object? pageSize = freezed,
    Object? status = freezed,
    Object? source = freezed,
    Object? tenant = freezed,
    Object? hasTenant = freezed,
    Object? workflowCategories = freezed,
    Object? archived = null,
    Object? triggerData = freezed,
    Object? insertedAtDateRange = freezed,
  }) {
    return _then(_value.copyWith(
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTenant: freezed == hasTenant
          ? _value.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      workflowCategories: freezed == workflowCategories
          ? _value.workflowCategories
          : workflowCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope,
      triggerData: freezed == triggerData
          ? _value.triggerData
          : triggerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      insertedAtDateRange: freezed == insertedAtDateRange
          ? _value.insertedAtDateRange
          : insertedAtDateRange // ignore: cast_nullable_to_non_nullable
              as InsertedAtDateRange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InsertedAtDateRangeCopyWith<$Res>? get insertedAtDateRange {
    if (_value.insertedAtDateRange == null) {
      return null;
    }

    return $InsertedAtDateRangeCopyWith<$Res>(_value.insertedAtDateRange!,
        (value) {
      return _then(_value.copyWith(insertedAtDateRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedOptionsImplCopyWith<$Res>
    implements $FeedOptionsCopyWith<$Res> {
  factory _$$FeedOptionsImplCopyWith(
          _$FeedOptionsImpl value, $Res Function(_$FeedOptionsImpl) then) =
      __$$FeedOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? before,
      String? after,
      @JsonKey(name: 'page_size') int? pageSize,
      FeedOptionsStatus? status,
      String? source,
      String? tenant,
      @JsonKey(name: 'has_tenant') bool? hasTenant,
      @JsonKey(name: 'workflow_categories') List<String>? workflowCategories,
      FeedOptionsArchivedScope archived,
      @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
      @JsonKey(name: 'inserted_at_date_range')
      InsertedAtDateRange? insertedAtDateRange});

  @override
  $InsertedAtDateRangeCopyWith<$Res>? get insertedAtDateRange;
}

/// @nodoc
class __$$FeedOptionsImplCopyWithImpl<$Res>
    extends _$FeedOptionsCopyWithImpl<$Res, _$FeedOptionsImpl>
    implements _$$FeedOptionsImplCopyWith<$Res> {
  __$$FeedOptionsImplCopyWithImpl(
      _$FeedOptionsImpl _value, $Res Function(_$FeedOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? before = freezed,
    Object? after = freezed,
    Object? pageSize = freezed,
    Object? status = freezed,
    Object? source = freezed,
    Object? tenant = freezed,
    Object? hasTenant = freezed,
    Object? workflowCategories = freezed,
    Object? archived = null,
    Object? triggerData = freezed,
    Object? insertedAtDateRange = freezed,
  }) {
    return _then(_$FeedOptionsImpl(
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTenant: freezed == hasTenant
          ? _value.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      workflowCategories: freezed == workflowCategories
          ? _value._workflowCategories
          : workflowCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      archived: null == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope,
      triggerData: freezed == triggerData
          ? _value._triggerData
          : triggerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      insertedAtDateRange: freezed == insertedAtDateRange
          ? _value.insertedAtDateRange
          : insertedAtDateRange // ignore: cast_nullable_to_non_nullable
              as InsertedAtDateRange?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedOptionsImpl implements _FeedOptions {
  const _$FeedOptionsImpl(
      {this.before,
      this.after,
      @JsonKey(name: 'page_size') this.pageSize,
      this.status,
      this.source,
      this.tenant,
      @JsonKey(name: 'has_tenant') this.hasTenant,
      @JsonKey(name: 'workflow_categories')
      final List<String>? workflowCategories,
      this.archived = FeedOptionsArchivedScope.exclude,
      @JsonKey(name: 'trigger_data') final Map<String, dynamic>? triggerData,
      @JsonKey(name: 'inserted_at_date_range') this.insertedAtDateRange})
      : _workflowCategories = workflowCategories,
        _triggerData = triggerData;

  @override
  final String? before;
  @override
  final String? after;
  @override
  @JsonKey(name: 'page_size')
  final int? pageSize;
  @override
  final FeedOptionsStatus? status;
  @override
  final String? source;
  @override
  final String? tenant;
  @override
  @JsonKey(name: 'has_tenant')
  final bool? hasTenant;
  final List<String>? _workflowCategories;
  @override
  @JsonKey(name: 'workflow_categories')
  List<String>? get workflowCategories {
    final value = _workflowCategories;
    if (value == null) return null;
    if (_workflowCategories is EqualUnmodifiableListView)
      return _workflowCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final FeedOptionsArchivedScope archived;
  final Map<String, dynamic>? _triggerData;
  @override
  @JsonKey(name: 'trigger_data')
  Map<String, dynamic>? get triggerData {
    final value = _triggerData;
    if (value == null) return null;
    if (_triggerData is EqualUnmodifiableMapView) return _triggerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'inserted_at_date_range')
  final InsertedAtDateRange? insertedAtDateRange;

  @override
  String toString() {
    return 'FeedOptions(before: $before, after: $after, pageSize: $pageSize, status: $status, source: $source, tenant: $tenant, hasTenant: $hasTenant, workflowCategories: $workflowCategories, archived: $archived, triggerData: $triggerData, insertedAtDateRange: $insertedAtDateRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedOptionsImpl &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            (identical(other.hasTenant, hasTenant) ||
                other.hasTenant == hasTenant) &&
            const DeepCollectionEquality()
                .equals(other._workflowCategories, _workflowCategories) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            const DeepCollectionEquality()
                .equals(other._triggerData, _triggerData) &&
            (identical(other.insertedAtDateRange, insertedAtDateRange) ||
                other.insertedAtDateRange == insertedAtDateRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      before,
      after,
      pageSize,
      status,
      source,
      tenant,
      hasTenant,
      const DeepCollectionEquality().hash(_workflowCategories),
      archived,
      const DeepCollectionEquality().hash(_triggerData),
      insertedAtDateRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedOptionsImplCopyWith<_$FeedOptionsImpl> get copyWith =>
      __$$FeedOptionsImplCopyWithImpl<_$FeedOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedOptionsImplToJson(
      this,
    );
  }
}

abstract class _FeedOptions implements FeedOptions {
  const factory _FeedOptions(
      {final String? before,
      final String? after,
      @JsonKey(name: 'page_size') final int? pageSize,
      final FeedOptionsStatus? status,
      final String? source,
      final String? tenant,
      @JsonKey(name: 'has_tenant') final bool? hasTenant,
      @JsonKey(name: 'workflow_categories')
      final List<String>? workflowCategories,
      final FeedOptionsArchivedScope archived,
      @JsonKey(name: 'trigger_data') final Map<String, dynamic>? triggerData,
      @JsonKey(name: 'inserted_at_date_range')
      final InsertedAtDateRange? insertedAtDateRange}) = _$FeedOptionsImpl;

  @override
  String? get before;
  @override
  String? get after;
  @override
  @JsonKey(name: 'page_size')
  int? get pageSize;
  @override
  FeedOptionsStatus? get status;
  @override
  String? get source;
  @override
  String? get tenant;
  @override
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant;
  @override
  @JsonKey(name: 'workflow_categories')
  List<String>? get workflowCategories;
  @override
  FeedOptionsArchivedScope get archived;
  @override
  @JsonKey(name: 'trigger_data')
  Map<String, dynamic>? get triggerData;
  @override
  @JsonKey(name: 'inserted_at_date_range')
  InsertedAtDateRange? get insertedAtDateRange;
  @override
  @JsonKey(ignore: true)
  _$$FeedOptionsImplCopyWith<_$FeedOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

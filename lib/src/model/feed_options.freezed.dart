// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InsertedAtDateRange {
  /// The start date in ISO 8601 format
  String? get start;

  /// The end date in ISO 8601 format
  String? get end;

  /// Whether to be inclusive of the start and end dates
  bool? get inclusive;

  /// Create a copy of InsertedAtDateRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InsertedAtDateRangeCopyWith<InsertedAtDateRange> get copyWith =>
      _$InsertedAtDateRangeCopyWithImpl<InsertedAtDateRange>(
          this as InsertedAtDateRange, _$identity);

  /// Serializes this InsertedAtDateRange to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InsertedAtDateRange &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.inclusive, inclusive) ||
                other.inclusive == inclusive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, inclusive);

  @override
  String toString() {
    return 'InsertedAtDateRange(start: $start, end: $end, inclusive: $inclusive)';
  }
}

/// @nodoc
abstract mixin class $InsertedAtDateRangeCopyWith<$Res> {
  factory $InsertedAtDateRangeCopyWith(
          InsertedAtDateRange value, $Res Function(InsertedAtDateRange) _then) =
      _$InsertedAtDateRangeCopyWithImpl;
  @useResult
  $Res call({String? start, String? end, bool? inclusive});
}

/// @nodoc
class _$InsertedAtDateRangeCopyWithImpl<$Res>
    implements $InsertedAtDateRangeCopyWith<$Res> {
  _$InsertedAtDateRangeCopyWithImpl(this._self, this._then);

  final InsertedAtDateRange _self;
  final $Res Function(InsertedAtDateRange) _then;

  /// Create a copy of InsertedAtDateRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? inclusive = freezed,
  }) {
    return _then(_self.copyWith(
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      inclusive: freezed == inclusive
          ? _self.inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [InsertedAtDateRange].
extension InsertedAtDateRangePatterns on InsertedAtDateRange {
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
    TResult Function(_InsertedAtDateRange value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange() when $default != null:
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
    TResult Function(_InsertedAtDateRange value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange():
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
    TResult? Function(_InsertedAtDateRange value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange() when $default != null:
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
    TResult Function(String? start, String? end, bool? inclusive)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange() when $default != null:
        return $default(_that.start, _that.end, _that.inclusive);
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
    TResult Function(String? start, String? end, bool? inclusive) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange():
        return $default(_that.start, _that.end, _that.inclusive);
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
    TResult? Function(String? start, String? end, bool? inclusive)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InsertedAtDateRange() when $default != null:
        return $default(_that.start, _that.end, _that.inclusive);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InsertedAtDateRange implements InsertedAtDateRange {
  const _InsertedAtDateRange({this.start, this.end, this.inclusive});
  factory _InsertedAtDateRange.fromJson(Map<String, dynamic> json) =>
      _$InsertedAtDateRangeFromJson(json);

  /// The start date in ISO 8601 format
  @override
  final String? start;

  /// The end date in ISO 8601 format
  @override
  final String? end;

  /// Whether to be inclusive of the start and end dates
  @override
  final bool? inclusive;

  /// Create a copy of InsertedAtDateRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InsertedAtDateRangeCopyWith<_InsertedAtDateRange> get copyWith =>
      __$InsertedAtDateRangeCopyWithImpl<_InsertedAtDateRange>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InsertedAtDateRangeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InsertedAtDateRange &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.inclusive, inclusive) ||
                other.inclusive == inclusive));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end, inclusive);

  @override
  String toString() {
    return 'InsertedAtDateRange(start: $start, end: $end, inclusive: $inclusive)';
  }
}

/// @nodoc
abstract mixin class _$InsertedAtDateRangeCopyWith<$Res>
    implements $InsertedAtDateRangeCopyWith<$Res> {
  factory _$InsertedAtDateRangeCopyWith(_InsertedAtDateRange value,
          $Res Function(_InsertedAtDateRange) _then) =
      __$InsertedAtDateRangeCopyWithImpl;
  @override
  @useResult
  $Res call({String? start, String? end, bool? inclusive});
}

/// @nodoc
class __$InsertedAtDateRangeCopyWithImpl<$Res>
    implements _$InsertedAtDateRangeCopyWith<$Res> {
  __$InsertedAtDateRangeCopyWithImpl(this._self, this._then);

  final _InsertedAtDateRange _self;
  final $Res Function(_InsertedAtDateRange) _then;

  /// Create a copy of InsertedAtDateRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
    Object? inclusive = freezed,
  }) {
    return _then(_InsertedAtDateRange(
      start: freezed == start
          ? _self.start
          : start // ignore: cast_nullable_to_non_nullable
              as String?,
      end: freezed == end
          ? _self.end
          : end // ignore: cast_nullable_to_non_nullable
              as String?,
      inclusive: freezed == inclusive
          ? _self.inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$FeedOptions {
  String? get before;
  String? get after;
  @JsonKey(name: 'page_size')
  int? get pageSize;
  FeedOptionsStatus? get status;
  String? get source;
  String? get tenant;
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant;
  @JsonKey(name: 'workflow_categories')
  List<String>? get workflowCategories;
  FeedOptionsArchivedScope get archived;
  @JsonKey(name: 'trigger_data')
  Map<String, dynamic>? get triggerData;
  @JsonKey(name: 'inserted_at_date_range')
  InsertedAtDateRange? get insertedAtDateRange;

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedOptionsCopyWith<FeedOptions> get copyWith =>
      _$FeedOptionsCopyWithImpl<FeedOptions>(this as FeedOptions, _$identity);

  /// Serializes this FeedOptions to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedOptions &&
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
                .equals(other.workflowCategories, workflowCategories) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            const DeepCollectionEquality()
                .equals(other.triggerData, triggerData) &&
            (identical(other.insertedAtDateRange, insertedAtDateRange) ||
                other.insertedAtDateRange == insertedAtDateRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
      const DeepCollectionEquality().hash(workflowCategories),
      archived,
      const DeepCollectionEquality().hash(triggerData),
      insertedAtDateRange);

  @override
  String toString() {
    return 'FeedOptions(before: $before, after: $after, pageSize: $pageSize, status: $status, source: $source, tenant: $tenant, hasTenant: $hasTenant, workflowCategories: $workflowCategories, archived: $archived, triggerData: $triggerData, insertedAtDateRange: $insertedAtDateRange)';
  }
}

/// @nodoc
abstract mixin class $FeedOptionsCopyWith<$Res> {
  factory $FeedOptionsCopyWith(
          FeedOptions value, $Res Function(FeedOptions) _then) =
      _$FeedOptionsCopyWithImpl;
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
class _$FeedOptionsCopyWithImpl<$Res> implements $FeedOptionsCopyWith<$Res> {
  _$FeedOptionsCopyWithImpl(this._self, this._then);

  final FeedOptions _self;
  final $Res Function(FeedOptions) _then;

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      before: freezed == before
          ? _self.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _self.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTenant: freezed == hasTenant
          ? _self.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      workflowCategories: freezed == workflowCategories
          ? _self.workflowCategories
          : workflowCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope,
      triggerData: freezed == triggerData
          ? _self.triggerData
          : triggerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      insertedAtDateRange: freezed == insertedAtDateRange
          ? _self.insertedAtDateRange
          : insertedAtDateRange // ignore: cast_nullable_to_non_nullable
              as InsertedAtDateRange?,
    ));
  }

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsertedAtDateRangeCopyWith<$Res>? get insertedAtDateRange {
    if (_self.insertedAtDateRange == null) {
      return null;
    }

    return $InsertedAtDateRangeCopyWith<$Res>(_self.insertedAtDateRange!,
        (value) {
      return _then(_self.copyWith(insertedAtDateRange: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FeedOptions].
extension FeedOptionsPatterns on FeedOptions {
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
    TResult Function(_FeedOptions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedOptions() when $default != null:
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
    TResult Function(_FeedOptions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedOptions():
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
    TResult? Function(_FeedOptions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedOptions() when $default != null:
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
            String? before,
            String? after,
            @JsonKey(name: 'page_size') int? pageSize,
            FeedOptionsStatus? status,
            String? source,
            String? tenant,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            @JsonKey(name: 'workflow_categories')
            List<String>? workflowCategories,
            FeedOptionsArchivedScope archived,
            @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
            @JsonKey(name: 'inserted_at_date_range')
            InsertedAtDateRange? insertedAtDateRange)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedOptions() when $default != null:
        return $default(
            _that.before,
            _that.after,
            _that.pageSize,
            _that.status,
            _that.source,
            _that.tenant,
            _that.hasTenant,
            _that.workflowCategories,
            _that.archived,
            _that.triggerData,
            _that.insertedAtDateRange);
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
            String? before,
            String? after,
            @JsonKey(name: 'page_size') int? pageSize,
            FeedOptionsStatus? status,
            String? source,
            String? tenant,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            @JsonKey(name: 'workflow_categories')
            List<String>? workflowCategories,
            FeedOptionsArchivedScope archived,
            @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
            @JsonKey(name: 'inserted_at_date_range')
            InsertedAtDateRange? insertedAtDateRange)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedOptions():
        return $default(
            _that.before,
            _that.after,
            _that.pageSize,
            _that.status,
            _that.source,
            _that.tenant,
            _that.hasTenant,
            _that.workflowCategories,
            _that.archived,
            _that.triggerData,
            _that.insertedAtDateRange);
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
            String? before,
            String? after,
            @JsonKey(name: 'page_size') int? pageSize,
            FeedOptionsStatus? status,
            String? source,
            String? tenant,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            @JsonKey(name: 'workflow_categories')
            List<String>? workflowCategories,
            FeedOptionsArchivedScope archived,
            @JsonKey(name: 'trigger_data') Map<String, dynamic>? triggerData,
            @JsonKey(name: 'inserted_at_date_range')
            InsertedAtDateRange? insertedAtDateRange)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedOptions() when $default != null:
        return $default(
            _that.before,
            _that.after,
            _that.pageSize,
            _that.status,
            _that.source,
            _that.tenant,
            _that.hasTenant,
            _that.workflowCategories,
            _that.archived,
            _that.triggerData,
            _that.insertedAtDateRange);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FeedOptions implements FeedOptions {
  const _FeedOptions(
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

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedOptionsCopyWith<_FeedOptions> get copyWith =>
      __$FeedOptionsCopyWithImpl<_FeedOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedOptionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedOptions &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  @override
  String toString() {
    return 'FeedOptions(before: $before, after: $after, pageSize: $pageSize, status: $status, source: $source, tenant: $tenant, hasTenant: $hasTenant, workflowCategories: $workflowCategories, archived: $archived, triggerData: $triggerData, insertedAtDateRange: $insertedAtDateRange)';
  }
}

/// @nodoc
abstract mixin class _$FeedOptionsCopyWith<$Res>
    implements $FeedOptionsCopyWith<$Res> {
  factory _$FeedOptionsCopyWith(
          _FeedOptions value, $Res Function(_FeedOptions) _then) =
      __$FeedOptionsCopyWithImpl;
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
class __$FeedOptionsCopyWithImpl<$Res> implements _$FeedOptionsCopyWith<$Res> {
  __$FeedOptionsCopyWithImpl(this._self, this._then);

  final _FeedOptions _self;
  final $Res Function(_FeedOptions) _then;

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
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
    return _then(_FeedOptions(
      before: freezed == before
          ? _self.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      after: freezed == after
          ? _self.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: freezed == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      hasTenant: freezed == hasTenant
          ? _self.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      workflowCategories: freezed == workflowCategories
          ? _self._workflowCategories
          : workflowCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      archived: null == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope,
      triggerData: freezed == triggerData
          ? _self._triggerData
          : triggerData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      insertedAtDateRange: freezed == insertedAtDateRange
          ? _self.insertedAtDateRange
          : insertedAtDateRange // ignore: cast_nullable_to_non_nullable
              as InsertedAtDateRange?,
    ));
  }

  /// Create a copy of FeedOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InsertedAtDateRangeCopyWith<$Res>? get insertedAtDateRange {
    if (_self.insertedAtDateRange == null) {
      return null;
    }

    return $InsertedAtDateRangeCopyWith<$Res>(_self.insertedAtDateRange!,
        (value) {
      return _then(_self.copyWith(insertedAtDateRange: value));
    });
  }
}

// dart format on

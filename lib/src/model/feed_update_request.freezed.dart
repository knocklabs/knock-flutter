// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedStatusUpdateRequest {
  @JsonKey(name: 'message_ids')
  List<String> get ids;

  /// Create a copy of FeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedStatusUpdateRequestCopyWith<FeedStatusUpdateRequest> get copyWith =>
      _$FeedStatusUpdateRequestCopyWithImpl<FeedStatusUpdateRequest>(
          this as FeedStatusUpdateRequest, _$identity);

  /// Serializes this FeedStatusUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedStatusUpdateRequest &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ids));

  @override
  String toString() {
    return 'FeedStatusUpdateRequest(ids: $ids)';
  }
}

/// @nodoc
abstract mixin class $FeedStatusUpdateRequestCopyWith<$Res> {
  factory $FeedStatusUpdateRequestCopyWith(FeedStatusUpdateRequest value,
          $Res Function(FeedStatusUpdateRequest) _then) =
      _$FeedStatusUpdateRequestCopyWithImpl;
  @useResult
  $Res call({@JsonKey(name: 'message_ids') List<String> ids});
}

/// @nodoc
class _$FeedStatusUpdateRequestCopyWithImpl<$Res>
    implements $FeedStatusUpdateRequestCopyWith<$Res> {
  _$FeedStatusUpdateRequestCopyWithImpl(this._self, this._then);

  final FeedStatusUpdateRequest _self;
  final $Res Function(FeedStatusUpdateRequest) _then;

  /// Create a copy of FeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_self.copyWith(
      ids: null == ids
          ? _self.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeedStatusUpdateRequest].
extension FeedStatusUpdateRequestPatterns on FeedStatusUpdateRequest {
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
    TResult Function(_FeedStatusUpdateRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest() when $default != null:
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
    TResult Function(_FeedStatusUpdateRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest():
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
    TResult? Function(_FeedStatusUpdateRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest() when $default != null:
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
    TResult Function(@JsonKey(name: 'message_ids') List<String> ids)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest() when $default != null:
        return $default(_that.ids);
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
    TResult Function(@JsonKey(name: 'message_ids') List<String> ids) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest():
        return $default(_that.ids);
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
    TResult? Function(@JsonKey(name: 'message_ids') List<String> ids)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedStatusUpdateRequest() when $default != null:
        return $default(_that.ids);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FeedStatusUpdateRequest implements FeedStatusUpdateRequest {
  const _FeedStatusUpdateRequest(
      {@JsonKey(name: 'message_ids') required final List<String> ids})
      : _ids = ids;

  final List<String> _ids;
  @override
  @JsonKey(name: 'message_ids')
  List<String> get ids {
    if (_ids is EqualUnmodifiableListView) return _ids;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  /// Create a copy of FeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedStatusUpdateRequestCopyWith<_FeedStatusUpdateRequest> get copyWith =>
      __$FeedStatusUpdateRequestCopyWithImpl<_FeedStatusUpdateRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedStatusUpdateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedStatusUpdateRequest &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @override
  String toString() {
    return 'FeedStatusUpdateRequest(ids: $ids)';
  }
}

/// @nodoc
abstract mixin class _$FeedStatusUpdateRequestCopyWith<$Res>
    implements $FeedStatusUpdateRequestCopyWith<$Res> {
  factory _$FeedStatusUpdateRequestCopyWith(_FeedStatusUpdateRequest value,
          $Res Function(_FeedStatusUpdateRequest) _then) =
      __$FeedStatusUpdateRequestCopyWithImpl;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message_ids') List<String> ids});
}

/// @nodoc
class __$FeedStatusUpdateRequestCopyWithImpl<$Res>
    implements _$FeedStatusUpdateRequestCopyWith<$Res> {
  __$FeedStatusUpdateRequestCopyWithImpl(this._self, this._then);

  final _FeedStatusUpdateRequest _self;
  final $Res Function(_FeedStatusUpdateRequest) _then;

  /// Create a copy of FeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ids = null,
  }) {
    return _then(_FeedStatusUpdateRequest(
      ids: null == ids
          ? _self._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
mixin _$BulkFeedStatusUpdateRequest {
  @JsonKey(name: 'user_ids')
  List<String> get userIds;
  @JsonKey(name: 'engagement_status')
  FeedOptionsStatus? get engagementStatus;
  FeedOptionsArchivedScope? get archived;
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant;
  List<String>? get tenants;

  /// Create a copy of BulkFeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BulkFeedStatusUpdateRequestCopyWith<BulkFeedStatusUpdateRequest>
      get copyWith => _$BulkFeedStatusUpdateRequestCopyWithImpl<
              BulkFeedStatusUpdateRequest>(
          this as BulkFeedStatusUpdateRequest, _$identity);

  /// Serializes this BulkFeedStatusUpdateRequest to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BulkFeedStatusUpdateRequest &&
            const DeepCollectionEquality().equals(other.userIds, userIds) &&
            (identical(other.engagementStatus, engagementStatus) ||
                other.engagementStatus == engagementStatus) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.hasTenant, hasTenant) ||
                other.hasTenant == hasTenant) &&
            const DeepCollectionEquality().equals(other.tenants, tenants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userIds),
      engagementStatus,
      archived,
      hasTenant,
      const DeepCollectionEquality().hash(tenants));

  @override
  String toString() {
    return 'BulkFeedStatusUpdateRequest(userIds: $userIds, engagementStatus: $engagementStatus, archived: $archived, hasTenant: $hasTenant, tenants: $tenants)';
  }
}

/// @nodoc
abstract mixin class $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  factory $BulkFeedStatusUpdateRequestCopyWith(
          BulkFeedStatusUpdateRequest value,
          $Res Function(BulkFeedStatusUpdateRequest) _then) =
      _$BulkFeedStatusUpdateRequestCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'engagement_status') FeedOptionsStatus? engagementStatus,
      FeedOptionsArchivedScope? archived,
      @JsonKey(name: 'has_tenant') bool? hasTenant,
      List<String>? tenants});
}

/// @nodoc
class _$BulkFeedStatusUpdateRequestCopyWithImpl<$Res>
    implements $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  _$BulkFeedStatusUpdateRequestCopyWithImpl(this._self, this._then);

  final BulkFeedStatusUpdateRequest _self;
  final $Res Function(BulkFeedStatusUpdateRequest) _then;

  /// Create a copy of BulkFeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? engagementStatus = freezed,
    Object? archived = freezed,
    Object? hasTenant = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_self.copyWith(
      userIds: null == userIds
          ? _self.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementStatus: freezed == engagementStatus
          ? _self.engagementStatus
          : engagementStatus // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      archived: freezed == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope?,
      hasTenant: freezed == hasTenant
          ? _self.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenants: freezed == tenants
          ? _self.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BulkFeedStatusUpdateRequest].
extension BulkFeedStatusUpdateRequestPatterns on BulkFeedStatusUpdateRequest {
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
    TResult Function(_BulkFeedStatusUpdateRequest value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest() when $default != null:
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
    TResult Function(_BulkFeedStatusUpdateRequest value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest():
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
    TResult? Function(_BulkFeedStatusUpdateRequest value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest() when $default != null:
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
            @JsonKey(name: 'user_ids') List<String> userIds,
            @JsonKey(name: 'engagement_status')
            FeedOptionsStatus? engagementStatus,
            FeedOptionsArchivedScope? archived,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            List<String>? tenants)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest() when $default != null:
        return $default(_that.userIds, _that.engagementStatus, _that.archived,
            _that.hasTenant, _that.tenants);
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
            @JsonKey(name: 'user_ids') List<String> userIds,
            @JsonKey(name: 'engagement_status')
            FeedOptionsStatus? engagementStatus,
            FeedOptionsArchivedScope? archived,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            List<String>? tenants)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest():
        return $default(_that.userIds, _that.engagementStatus, _that.archived,
            _that.hasTenant, _that.tenants);
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
            @JsonKey(name: 'user_ids') List<String> userIds,
            @JsonKey(name: 'engagement_status')
            FeedOptionsStatus? engagementStatus,
            FeedOptionsArchivedScope? archived,
            @JsonKey(name: 'has_tenant') bool? hasTenant,
            List<String>? tenants)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BulkFeedStatusUpdateRequest() when $default != null:
        return $default(_that.userIds, _that.engagementStatus, _that.archived,
            _that.hasTenant, _that.tenants);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _BulkFeedStatusUpdateRequest implements BulkFeedStatusUpdateRequest {
  const _BulkFeedStatusUpdateRequest(
      {@JsonKey(name: 'user_ids') required final List<String> userIds,
      @JsonKey(name: 'engagement_status') this.engagementStatus,
      this.archived,
      @JsonKey(name: 'has_tenant') this.hasTenant,
      final List<String>? tenants})
      : _userIds = userIds,
        _tenants = tenants;

  final List<String> _userIds;
  @override
  @JsonKey(name: 'user_ids')
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  @override
  @JsonKey(name: 'engagement_status')
  final FeedOptionsStatus? engagementStatus;
  @override
  final FeedOptionsArchivedScope? archived;
  @override
  @JsonKey(name: 'has_tenant')
  final bool? hasTenant;
  final List<String>? _tenants;
  @override
  List<String>? get tenants {
    final value = _tenants;
    if (value == null) return null;
    if (_tenants is EqualUnmodifiableListView) return _tenants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of BulkFeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BulkFeedStatusUpdateRequestCopyWith<_BulkFeedStatusUpdateRequest>
      get copyWith => __$BulkFeedStatusUpdateRequestCopyWithImpl<
          _BulkFeedStatusUpdateRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BulkFeedStatusUpdateRequestToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BulkFeedStatusUpdateRequest &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.engagementStatus, engagementStatus) ||
                other.engagementStatus == engagementStatus) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.hasTenant, hasTenant) ||
                other.hasTenant == hasTenant) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userIds),
      engagementStatus,
      archived,
      hasTenant,
      const DeepCollectionEquality().hash(_tenants));

  @override
  String toString() {
    return 'BulkFeedStatusUpdateRequest(userIds: $userIds, engagementStatus: $engagementStatus, archived: $archived, hasTenant: $hasTenant, tenants: $tenants)';
  }
}

/// @nodoc
abstract mixin class _$BulkFeedStatusUpdateRequestCopyWith<$Res>
    implements $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  factory _$BulkFeedStatusUpdateRequestCopyWith(
          _BulkFeedStatusUpdateRequest value,
          $Res Function(_BulkFeedStatusUpdateRequest) _then) =
      __$BulkFeedStatusUpdateRequestCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'engagement_status') FeedOptionsStatus? engagementStatus,
      FeedOptionsArchivedScope? archived,
      @JsonKey(name: 'has_tenant') bool? hasTenant,
      List<String>? tenants});
}

/// @nodoc
class __$BulkFeedStatusUpdateRequestCopyWithImpl<$Res>
    implements _$BulkFeedStatusUpdateRequestCopyWith<$Res> {
  __$BulkFeedStatusUpdateRequestCopyWithImpl(this._self, this._then);

  final _BulkFeedStatusUpdateRequest _self;
  final $Res Function(_BulkFeedStatusUpdateRequest) _then;

  /// Create a copy of BulkFeedStatusUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? userIds = null,
    Object? engagementStatus = freezed,
    Object? archived = freezed,
    Object? hasTenant = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_BulkFeedStatusUpdateRequest(
      userIds: null == userIds
          ? _self._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementStatus: freezed == engagementStatus
          ? _self.engagementStatus
          : engagementStatus // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      archived: freezed == archived
          ? _self.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope?,
      hasTenant: freezed == hasTenant
          ? _self.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenants: freezed == tenants
          ? _self._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

// dart format on

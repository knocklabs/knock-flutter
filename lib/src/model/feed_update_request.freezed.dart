// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedStatusUpdateRequest {
  @JsonKey(name: 'message_ids')
  List<String> get ids => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedStatusUpdateRequestCopyWith<FeedStatusUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedStatusUpdateRequestCopyWith<$Res> {
  factory $FeedStatusUpdateRequestCopyWith(FeedStatusUpdateRequest value,
          $Res Function(FeedStatusUpdateRequest) then) =
      _$FeedStatusUpdateRequestCopyWithImpl<$Res, FeedStatusUpdateRequest>;
  @useResult
  $Res call({@JsonKey(name: 'message_ids') List<String> ids});
}

/// @nodoc
class _$FeedStatusUpdateRequestCopyWithImpl<$Res,
        $Val extends FeedStatusUpdateRequest>
    implements $FeedStatusUpdateRequestCopyWith<$Res> {
  _$FeedStatusUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_value.copyWith(
      ids: null == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedStatusUpdateRequestImplCopyWith<$Res>
    implements $FeedStatusUpdateRequestCopyWith<$Res> {
  factory _$$FeedStatusUpdateRequestImplCopyWith(
          _$FeedStatusUpdateRequestImpl value,
          $Res Function(_$FeedStatusUpdateRequestImpl) then) =
      __$$FeedStatusUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'message_ids') List<String> ids});
}

/// @nodoc
class __$$FeedStatusUpdateRequestImplCopyWithImpl<$Res>
    extends _$FeedStatusUpdateRequestCopyWithImpl<$Res,
        _$FeedStatusUpdateRequestImpl>
    implements _$$FeedStatusUpdateRequestImplCopyWith<$Res> {
  __$$FeedStatusUpdateRequestImplCopyWithImpl(
      _$FeedStatusUpdateRequestImpl _value,
      $Res Function(_$FeedStatusUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$FeedStatusUpdateRequestImpl(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedStatusUpdateRequestImpl implements _FeedStatusUpdateRequest {
  const _$FeedStatusUpdateRequestImpl(
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

  @override
  String toString() {
    return 'FeedStatusUpdateRequest(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedStatusUpdateRequestImpl &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedStatusUpdateRequestImplCopyWith<_$FeedStatusUpdateRequestImpl>
      get copyWith => __$$FeedStatusUpdateRequestImplCopyWithImpl<
          _$FeedStatusUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedStatusUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _FeedStatusUpdateRequest implements FeedStatusUpdateRequest {
  const factory _FeedStatusUpdateRequest(
          {@JsonKey(name: 'message_ids') required final List<String> ids}) =
      _$FeedStatusUpdateRequestImpl;

  @override
  @JsonKey(name: 'message_ids')
  List<String> get ids;
  @override
  @JsonKey(ignore: true)
  _$$FeedStatusUpdateRequestImplCopyWith<_$FeedStatusUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BulkFeedStatusUpdateRequest {
  @JsonKey(name: 'user_ids')
  List<String> get userIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'engagement_status')
  FeedOptionsStatus? get engagementStatus => throw _privateConstructorUsedError;
  FeedOptionsArchivedScope? get archived => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant => throw _privateConstructorUsedError;
  List<String>? get tenants => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BulkFeedStatusUpdateRequestCopyWith<BulkFeedStatusUpdateRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  factory $BulkFeedStatusUpdateRequestCopyWith(
          BulkFeedStatusUpdateRequest value,
          $Res Function(BulkFeedStatusUpdateRequest) then) =
      _$BulkFeedStatusUpdateRequestCopyWithImpl<$Res,
          BulkFeedStatusUpdateRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_ids') List<String> userIds,
      @JsonKey(name: 'engagement_status') FeedOptionsStatus? engagementStatus,
      FeedOptionsArchivedScope? archived,
      @JsonKey(name: 'has_tenant') bool? hasTenant,
      List<String>? tenants});
}

/// @nodoc
class _$BulkFeedStatusUpdateRequestCopyWithImpl<$Res,
        $Val extends BulkFeedStatusUpdateRequest>
    implements $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  _$BulkFeedStatusUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? engagementStatus = freezed,
    Object? archived = freezed,
    Object? hasTenant = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_value.copyWith(
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementStatus: freezed == engagementStatus
          ? _value.engagementStatus
          : engagementStatus // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope?,
      hasTenant: freezed == hasTenant
          ? _value.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenants: freezed == tenants
          ? _value.tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BulkFeedStatusUpdateRequestImplCopyWith<$Res>
    implements $BulkFeedStatusUpdateRequestCopyWith<$Res> {
  factory _$$BulkFeedStatusUpdateRequestImplCopyWith(
          _$BulkFeedStatusUpdateRequestImpl value,
          $Res Function(_$BulkFeedStatusUpdateRequestImpl) then) =
      __$$BulkFeedStatusUpdateRequestImplCopyWithImpl<$Res>;
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
class __$$BulkFeedStatusUpdateRequestImplCopyWithImpl<$Res>
    extends _$BulkFeedStatusUpdateRequestCopyWithImpl<$Res,
        _$BulkFeedStatusUpdateRequestImpl>
    implements _$$BulkFeedStatusUpdateRequestImplCopyWith<$Res> {
  __$$BulkFeedStatusUpdateRequestImplCopyWithImpl(
      _$BulkFeedStatusUpdateRequestImpl _value,
      $Res Function(_$BulkFeedStatusUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIds = null,
    Object? engagementStatus = freezed,
    Object? archived = freezed,
    Object? hasTenant = freezed,
    Object? tenants = freezed,
  }) {
    return _then(_$BulkFeedStatusUpdateRequestImpl(
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      engagementStatus: freezed == engagementStatus
          ? _value.engagementStatus
          : engagementStatus // ignore: cast_nullable_to_non_nullable
              as FeedOptionsStatus?,
      archived: freezed == archived
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as FeedOptionsArchivedScope?,
      hasTenant: freezed == hasTenant
          ? _value.hasTenant
          : hasTenant // ignore: cast_nullable_to_non_nullable
              as bool?,
      tenants: freezed == tenants
          ? _value._tenants
          : tenants // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$BulkFeedStatusUpdateRequestImpl
    implements _BulkFeedStatusUpdateRequest {
  const _$BulkFeedStatusUpdateRequestImpl(
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

  @override
  String toString() {
    return 'BulkFeedStatusUpdateRequest(userIds: $userIds, engagementStatus: $engagementStatus, archived: $archived, hasTenant: $hasTenant, tenants: $tenants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkFeedStatusUpdateRequestImpl &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.engagementStatus, engagementStatus) ||
                other.engagementStatus == engagementStatus) &&
            (identical(other.archived, archived) ||
                other.archived == archived) &&
            (identical(other.hasTenant, hasTenant) ||
                other.hasTenant == hasTenant) &&
            const DeepCollectionEquality().equals(other._tenants, _tenants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userIds),
      engagementStatus,
      archived,
      hasTenant,
      const DeepCollectionEquality().hash(_tenants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkFeedStatusUpdateRequestImplCopyWith<_$BulkFeedStatusUpdateRequestImpl>
      get copyWith => __$$BulkFeedStatusUpdateRequestImplCopyWithImpl<
          _$BulkFeedStatusUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkFeedStatusUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _BulkFeedStatusUpdateRequest
    implements BulkFeedStatusUpdateRequest {
  const factory _BulkFeedStatusUpdateRequest(
      {@JsonKey(name: 'user_ids') required final List<String> userIds,
      @JsonKey(name: 'engagement_status')
      final FeedOptionsStatus? engagementStatus,
      final FeedOptionsArchivedScope? archived,
      @JsonKey(name: 'has_tenant') final bool? hasTenant,
      final List<String>? tenants}) = _$BulkFeedStatusUpdateRequestImpl;

  @override
  @JsonKey(name: 'user_ids')
  List<String> get userIds;
  @override
  @JsonKey(name: 'engagement_status')
  FeedOptionsStatus? get engagementStatus;
  @override
  FeedOptionsArchivedScope? get archived;
  @override
  @JsonKey(name: 'has_tenant')
  bool? get hasTenant;
  @override
  List<String>? get tenants;
  @override
  @JsonKey(ignore: true)
  _$$BulkFeedStatusUpdateRequestImplCopyWith<_$BulkFeedStatusUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

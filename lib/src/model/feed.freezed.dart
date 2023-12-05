// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feed _$FeedFromJson(Map<String, dynamic> json) {
  return _Feed.fromJson(json);
}

/// @nodoc
mixin _$Feed {
  @JsonKey(name: 'entries')
  List<FeedItem> get items => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_info')
  PageInfo get pageInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  FeedMetadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
  NetworkStatus get networkStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedCopyWith<Feed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) then) =
      _$FeedCopyWithImpl<$Res, Feed>;
  @useResult
  $Res call(
      {@JsonKey(name: 'entries') List<FeedItem> items,
      @JsonKey(name: 'page_info') PageInfo pageInfo,
      @JsonKey(name: 'meta') FeedMetadata metadata,
      @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
      NetworkStatus networkStatus});

  $PageInfoCopyWith<$Res> get pageInfo;
  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$FeedCopyWithImpl<$Res, $Val extends Feed>
    implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? metadata = null,
    Object? networkStatus = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_value.pageInfo, (value) {
      return _then(_value.copyWith(pageInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedImplCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$$FeedImplCopyWith(
          _$FeedImpl value, $Res Function(_$FeedImpl) then) =
      __$$FeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'entries') List<FeedItem> items,
      @JsonKey(name: 'page_info') PageInfo pageInfo,
      @JsonKey(name: 'meta') FeedMetadata metadata,
      @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
      NetworkStatus networkStatus});

  @override
  $PageInfoCopyWith<$Res> get pageInfo;
  @override
  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$FeedImplCopyWithImpl<$Res>
    extends _$FeedCopyWithImpl<$Res, _$FeedImpl>
    implements _$$FeedImplCopyWith<$Res> {
  __$$FeedImplCopyWithImpl(_$FeedImpl _value, $Res Function(_$FeedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? metadata = null,
    Object? networkStatus = null,
  }) {
    return _then(_$FeedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      pageInfo: null == pageInfo
          ? _value.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedImpl implements _Feed {
  const _$FeedImpl(
      {@JsonKey(name: 'entries') required final List<FeedItem> items,
      @JsonKey(name: 'page_info') required this.pageInfo,
      @JsonKey(name: 'meta') required this.metadata,
      @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
      required this.networkStatus})
      : _items = items;

  factory _$FeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedImplFromJson(json);

  final List<FeedItem> _items;
  @override
  @JsonKey(name: 'entries')
  List<FeedItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey(name: 'page_info')
  final PageInfo pageInfo;
  @override
  @JsonKey(name: 'meta')
  final FeedMetadata metadata;
  @override
  @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
  final NetworkStatus networkStatus;

  @override
  String toString() {
    return 'Feed(items: $items, pageInfo: $pageInfo, metadata: $metadata, networkStatus: $networkStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      pageInfo,
      metadata,
      networkStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      __$$FeedImplCopyWithImpl<_$FeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedImplToJson(
      this,
    );
  }
}

abstract class _Feed implements Feed {
  const factory _Feed(
      {@JsonKey(name: 'entries') required final List<FeedItem> items,
      @JsonKey(name: 'page_info') required final PageInfo pageInfo,
      @JsonKey(name: 'meta') required final FeedMetadata metadata,
      @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
      required final NetworkStatus networkStatus}) = _$FeedImpl;

  factory _Feed.fromJson(Map<String, dynamic> json) = _$FeedImpl.fromJson;

  @override
  @JsonKey(name: 'entries')
  List<FeedItem> get items;
  @override
  @JsonKey(name: 'page_info')
  PageInfo get pageInfo;
  @override
  @JsonKey(name: 'meta')
  FeedMetadata get metadata;
  @override
  @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
  NetworkStatus get networkStatus;
  @override
  @JsonKey(ignore: true)
  _$$FeedImplCopyWith<_$FeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedItem _$FeedItemFromJson(Map<String, dynamic> json) {
  return _FeedItem.fromJson(json);
}

/// @nodoc
mixin _$FeedItem {
  String get id => throw _privateConstructorUsedError;
  List<Activity> get activities => throw _privateConstructorUsedError;
  List<Recipient> get actors => throw _privateConstructorUsedError;
  List<ContentBlock> get blocks => throw _privateConstructorUsedError;
  @JsonKey(name: 'inserted_at')
  String get insertedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'seen_at')
  String? get seenAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'read_at')
  String? get readAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'archived_at')
  String? get archivedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_activities')
  int get totalActivities => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_actors')
  int get totalActors => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  NotificationSource get source => throw _privateConstructorUsedError;
  String? get tenant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedItemCopyWith<FeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedItemCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) then) =
      _$FeedItemCopyWithImpl<$Res, FeedItem>;
  @useResult
  $Res call(
      {String id,
      List<Activity> activities,
      List<Recipient> actors,
      List<ContentBlock> blocks,
      @JsonKey(name: 'inserted_at') String insertedAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'seen_at') String? seenAt,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'total_activities') int totalActivities,
      @JsonKey(name: 'total_actors') int totalActors,
      Map<String, dynamic>? data,
      NotificationSource source,
      String? tenant});

  $NotificationSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res, $Val extends FeedItem>
    implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activities = null,
    Object? actors = null,
    Object? blocks = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? totalActivities = null,
    Object? totalActors = null,
    Object? data = freezed,
    Object? source = null,
    Object? tenant = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      actors: null == actors
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      blocks: null == blocks
          ? _value.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      totalActivities: null == totalActivities
          ? _value.totalActivities
          : totalActivities // ignore: cast_nullable_to_non_nullable
              as int,
      totalActors: null == totalActors
          ? _value.totalActors
          : totalActors // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationSourceCopyWith<$Res> get source {
    return $NotificationSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedItemImplCopyWith<$Res>
    implements $FeedItemCopyWith<$Res> {
  factory _$$FeedItemImplCopyWith(
          _$FeedItemImpl value, $Res Function(_$FeedItemImpl) then) =
      __$$FeedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<Activity> activities,
      List<Recipient> actors,
      List<ContentBlock> blocks,
      @JsonKey(name: 'inserted_at') String insertedAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'seen_at') String? seenAt,
      @JsonKey(name: 'read_at') String? readAt,
      @JsonKey(name: 'archived_at') String? archivedAt,
      @JsonKey(name: 'total_activities') int totalActivities,
      @JsonKey(name: 'total_actors') int totalActors,
      Map<String, dynamic>? data,
      NotificationSource source,
      String? tenant});

  @override
  $NotificationSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$FeedItemImplCopyWithImpl<$Res>
    extends _$FeedItemCopyWithImpl<$Res, _$FeedItemImpl>
    implements _$$FeedItemImplCopyWith<$Res> {
  __$$FeedItemImplCopyWithImpl(
      _$FeedItemImpl _value, $Res Function(_$FeedItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activities = null,
    Object? actors = null,
    Object? blocks = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? totalActivities = null,
    Object? totalActors = null,
    Object? data = freezed,
    Object? source = null,
    Object? tenant = freezed,
  }) {
    return _then(_$FeedItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _value._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      actors: null == actors
          ? _value._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      blocks: null == blocks
          ? _value._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as String?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as String?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      totalActivities: null == totalActivities
          ? _value.totalActivities
          : totalActivities // ignore: cast_nullable_to_non_nullable
              as int,
      totalActors: null == totalActors
          ? _value.totalActors
          : totalActors // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedItemImpl implements _FeedItem {
  const _$FeedItemImpl(
      {required this.id,
      required final List<Activity> activities,
      required final List<Recipient> actors,
      required final List<ContentBlock> blocks,
      @JsonKey(name: 'inserted_at') required this.insertedAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'seen_at') required this.seenAt,
      @JsonKey(name: 'read_at') required this.readAt,
      @JsonKey(name: 'archived_at') required this.archivedAt,
      @JsonKey(name: 'total_activities') required this.totalActivities,
      @JsonKey(name: 'total_actors') required this.totalActors,
      required final Map<String, dynamic>? data,
      required this.source,
      required this.tenant})
      : _activities = activities,
        _actors = actors,
        _blocks = blocks,
        _data = data;

  factory _$FeedItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedItemImplFromJson(json);

  @override
  final String id;
  final List<Activity> _activities;
  @override
  List<Activity> get activities {
    if (_activities is EqualUnmodifiableListView) return _activities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activities);
  }

  final List<Recipient> _actors;
  @override
  List<Recipient> get actors {
    if (_actors is EqualUnmodifiableListView) return _actors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actors);
  }

  final List<ContentBlock> _blocks;
  @override
  List<ContentBlock> get blocks {
    if (_blocks is EqualUnmodifiableListView) return _blocks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blocks);
  }

  @override
  @JsonKey(name: 'inserted_at')
  final String insertedAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'seen_at')
  final String? seenAt;
  @override
  @JsonKey(name: 'read_at')
  final String? readAt;
  @override
  @JsonKey(name: 'archived_at')
  final String? archivedAt;
  @override
  @JsonKey(name: 'total_activities')
  final int totalActivities;
  @override
  @JsonKey(name: 'total_actors')
  final int totalActors;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final NotificationSource source;
  @override
  final String? tenant;

  @override
  String toString() {
    return 'FeedItem(id: $id, activities: $activities, actors: $actors, blocks: $blocks, insertedAt: $insertedAt, updatedAt: $updatedAt, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, totalActivities: $totalActivities, totalActors: $totalActors, data: $data, source: $source, tenant: $tenant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._activities, _activities) &&
            const DeepCollectionEquality().equals(other._actors, _actors) &&
            const DeepCollectionEquality().equals(other._blocks, _blocks) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.totalActivities, totalActivities) ||
                other.totalActivities == totalActivities) &&
            (identical(other.totalActors, totalActors) ||
                other.totalActors == totalActors) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_actors),
      const DeepCollectionEquality().hash(_blocks),
      insertedAt,
      updatedAt,
      seenAt,
      readAt,
      archivedAt,
      totalActivities,
      totalActors,
      const DeepCollectionEquality().hash(_data),
      source,
      tenant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedItemImplCopyWith<_$FeedItemImpl> get copyWith =>
      __$$FeedItemImplCopyWithImpl<_$FeedItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedItemImplToJson(
      this,
    );
  }
}

abstract class _FeedItem implements FeedItem {
  const factory _FeedItem(
      {required final String id,
      required final List<Activity> activities,
      required final List<Recipient> actors,
      required final List<ContentBlock> blocks,
      @JsonKey(name: 'inserted_at') required final String insertedAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      @JsonKey(name: 'seen_at') required final String? seenAt,
      @JsonKey(name: 'read_at') required final String? readAt,
      @JsonKey(name: 'archived_at') required final String? archivedAt,
      @JsonKey(name: 'total_activities') required final int totalActivities,
      @JsonKey(name: 'total_actors') required final int totalActors,
      required final Map<String, dynamic>? data,
      required final NotificationSource source,
      required final String? tenant}) = _$FeedItemImpl;

  factory _FeedItem.fromJson(Map<String, dynamic> json) =
      _$FeedItemImpl.fromJson;

  @override
  String get id;
  @override
  List<Activity> get activities;
  @override
  List<Recipient> get actors;
  @override
  List<ContentBlock> get blocks;
  @override
  @JsonKey(name: 'inserted_at')
  String get insertedAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'seen_at')
  String? get seenAt;
  @override
  @JsonKey(name: 'read_at')
  String? get readAt;
  @override
  @JsonKey(name: 'archived_at')
  String? get archivedAt;
  @override
  @JsonKey(name: 'total_activities')
  int get totalActivities;
  @override
  @JsonKey(name: 'total_actors')
  int get totalActors;
  @override
  Map<String, dynamic>? get data;
  @override
  NotificationSource get source;
  @override
  String? get tenant;
  @override
  @JsonKey(ignore: true)
  _$$FeedItemImplCopyWith<_$FeedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Activity _$ActivityFromJson(Map<String, dynamic> json) {
  return _Activity.fromJson(json);
}

/// @nodoc
mixin _$Activity {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'inserted_at')
  String get insertedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  Recipient get recipient => throw _privateConstructorUsedError;
  Recipient? get actor => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityCopyWith<Activity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) then) =
      _$ActivityCopyWithImpl<$Res, Activity>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'inserted_at') String insertedAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Recipient recipient,
      Recipient? actor,
      Map<String, dynamic>? data});

  $RecipientCopyWith<$Res> get recipient;
  $RecipientCopyWith<$Res>? get actor;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res, $Val extends Activity>
    implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? recipient = null,
    Object? actor = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res> get recipient {
    return $RecipientCopyWith<$Res>(_value.recipient, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res>? get actor {
    if (_value.actor == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_value.actor!, (value) {
      return _then(_value.copyWith(actor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityImplCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$$ActivityImplCopyWith(
          _$ActivityImpl value, $Res Function(_$ActivityImpl) then) =
      __$$ActivityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'inserted_at') String insertedAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      Recipient recipient,
      Recipient? actor,
      Map<String, dynamic>? data});

  @override
  $RecipientCopyWith<$Res> get recipient;
  @override
  $RecipientCopyWith<$Res>? get actor;
}

/// @nodoc
class __$$ActivityImplCopyWithImpl<$Res>
    extends _$ActivityCopyWithImpl<$Res, _$ActivityImpl>
    implements _$$ActivityImplCopyWith<$Res> {
  __$$ActivityImplCopyWithImpl(
      _$ActivityImpl _value, $Res Function(_$ActivityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? recipient = null,
    Object? actor = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ActivityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      actor: freezed == actor
          ? _value.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ActivityImpl implements _Activity {
  const _$ActivityImpl(
      {required this.id,
      @JsonKey(name: 'inserted_at') required this.insertedAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.recipient,
      required this.actor,
      required final Map<String, dynamic>? data})
      : _data = data;

  factory _$ActivityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'inserted_at')
  final String insertedAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final Recipient recipient;
  @override
  final Recipient? actor;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Activity(id: $id, insertedAt: $insertedAt, updatedAt: $updatedAt, recipient: $recipient, actor: $actor, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, insertedAt, updatedAt,
      recipient, actor, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      __$$ActivityImplCopyWithImpl<_$ActivityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityImplToJson(
      this,
    );
  }
}

abstract class _Activity implements Activity {
  const factory _Activity(
      {required final String id,
      @JsonKey(name: 'inserted_at') required final String insertedAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      required final Recipient recipient,
      required final Recipient? actor,
      required final Map<String, dynamic>? data}) = _$ActivityImpl;

  factory _Activity.fromJson(Map<String, dynamic> json) =
      _$ActivityImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'inserted_at')
  String get insertedAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  Recipient get recipient;
  @override
  Recipient? get actor;
  @override
  Map<String, dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$ActivityImplCopyWith<_$ActivityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContentBlock _$ContentBlockFromJson(Map<String, dynamic> json) {
  return _ContentBlock.fromJson(json);
}

/// @nodoc
mixin _$ContentBlock {
  String get content => throw _privateConstructorUsedError;
  String get rendered => throw _privateConstructorUsedError;
  ContentBlockType get type => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentBlockCopyWith<ContentBlock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentBlockCopyWith<$Res> {
  factory $ContentBlockCopyWith(
          ContentBlock value, $Res Function(ContentBlock) then) =
      _$ContentBlockCopyWithImpl<$Res, ContentBlock>;
  @useResult
  $Res call(
      {String content, String rendered, ContentBlockType type, String name});
}

/// @nodoc
class _$ContentBlockCopyWithImpl<$Res, $Val extends ContentBlock>
    implements $ContentBlockCopyWith<$Res> {
  _$ContentBlockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? rendered = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rendered: null == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentBlockType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentBlockImplCopyWith<$Res>
    implements $ContentBlockCopyWith<$Res> {
  factory _$$ContentBlockImplCopyWith(
          _$ContentBlockImpl value, $Res Function(_$ContentBlockImpl) then) =
      __$$ContentBlockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content, String rendered, ContentBlockType type, String name});
}

/// @nodoc
class __$$ContentBlockImplCopyWithImpl<$Res>
    extends _$ContentBlockCopyWithImpl<$Res, _$ContentBlockImpl>
    implements _$$ContentBlockImplCopyWith<$Res> {
  __$$ContentBlockImplCopyWithImpl(
      _$ContentBlockImpl _value, $Res Function(_$ContentBlockImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? rendered = null,
    Object? type = null,
    Object? name = null,
  }) {
    return _then(_$ContentBlockImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rendered: null == rendered
          ? _value.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentBlockType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ContentBlockImpl implements _ContentBlock {
  const _$ContentBlockImpl(
      {required this.content,
      required this.rendered,
      required this.type,
      required this.name});

  factory _$ContentBlockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentBlockImplFromJson(json);

  @override
  final String content;
  @override
  final String rendered;
  @override
  final ContentBlockType type;
  @override
  final String name;

  @override
  String toString() {
    return 'ContentBlock(content: $content, rendered: $rendered, type: $type, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentBlockImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content, rendered, type, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentBlockImplCopyWith<_$ContentBlockImpl> get copyWith =>
      __$$ContentBlockImplCopyWithImpl<_$ContentBlockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentBlockImplToJson(
      this,
    );
  }
}

abstract class _ContentBlock implements ContentBlock {
  const factory _ContentBlock(
      {required final String content,
      required final String rendered,
      required final ContentBlockType type,
      required final String name}) = _$ContentBlockImpl;

  factory _ContentBlock.fromJson(Map<String, dynamic> json) =
      _$ContentBlockImpl.fromJson;

  @override
  String get content;
  @override
  String get rendered;
  @override
  ContentBlockType get type;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ContentBlockImplCopyWith<_$ContentBlockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NotificationSource _$NotificationSourceFromJson(Map<String, dynamic> json) {
  return _NotificationSource.fromJson(json);
}

/// @nodoc
mixin _$NotificationSource {
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'version_id')
  String get versionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationSourceCopyWith<NotificationSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationSourceCopyWith<$Res> {
  factory $NotificationSourceCopyWith(
          NotificationSource value, $Res Function(NotificationSource) then) =
      _$NotificationSourceCopyWithImpl<$Res, NotificationSource>;
  @useResult
  $Res call({String key, @JsonKey(name: 'version_id') String versionId});
}

/// @nodoc
class _$NotificationSourceCopyWithImpl<$Res, $Val extends NotificationSource>
    implements $NotificationSourceCopyWith<$Res> {
  _$NotificationSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NotificationSourceImplCopyWith<$Res>
    implements $NotificationSourceCopyWith<$Res> {
  factory _$$NotificationSourceImplCopyWith(_$NotificationSourceImpl value,
          $Res Function(_$NotificationSourceImpl) then) =
      __$$NotificationSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, @JsonKey(name: 'version_id') String versionId});
}

/// @nodoc
class __$$NotificationSourceImplCopyWithImpl<$Res>
    extends _$NotificationSourceCopyWithImpl<$Res, _$NotificationSourceImpl>
    implements _$$NotificationSourceImplCopyWith<$Res> {
  __$$NotificationSourceImplCopyWithImpl(_$NotificationSourceImpl _value,
      $Res Function(_$NotificationSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
  }) {
    return _then(_$NotificationSourceImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$NotificationSourceImpl implements _NotificationSource {
  const _$NotificationSourceImpl(
      {required this.key,
      @JsonKey(name: 'version_id') required this.versionId});

  factory _$NotificationSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotificationSourceImplFromJson(json);

  @override
  final String key;
  @override
  @JsonKey(name: 'version_id')
  final String versionId;

  @override
  String toString() {
    return 'NotificationSource(key: $key, versionId: $versionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotificationSourceImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotificationSourceImplCopyWith<_$NotificationSourceImpl> get copyWith =>
      __$$NotificationSourceImplCopyWithImpl<_$NotificationSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NotificationSourceImplToJson(
      this,
    );
  }
}

abstract class _NotificationSource implements NotificationSource {
  const factory _NotificationSource(
          {required final String key,
          @JsonKey(name: 'version_id') required final String versionId}) =
      _$NotificationSourceImpl;

  factory _NotificationSource.fromJson(Map<String, dynamic> json) =
      _$NotificationSourceImpl.fromJson;

  @override
  String get key;
  @override
  @JsonKey(name: 'version_id')
  String get versionId;
  @override
  @JsonKey(ignore: true)
  _$$NotificationSourceImplCopyWith<_$NotificationSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) {
  return _PageInfo.fromJson(json);
}

/// @nodoc
mixin _$PageInfo {
  String? get after => throw _privateConstructorUsedError;
  String? get before => throw _privateConstructorUsedError;
  @JsonKey(name: 'page_size')
  int get pageSize => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageInfoCopyWith<PageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) then) =
      _$PageInfoCopyWithImpl<$Res, PageInfo>;
  @useResult
  $Res call(
      {String? after,
      String? before,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res, $Val extends PageInfo>
    implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? pageSize = null,
  }) {
    return _then(_value.copyWith(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageInfoImplCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$$PageInfoImplCopyWith(
          _$PageInfoImpl value, $Res Function(_$PageInfoImpl) then) =
      __$$PageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? after,
      String? before,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$$PageInfoImplCopyWithImpl<$Res>
    extends _$PageInfoCopyWithImpl<$Res, _$PageInfoImpl>
    implements _$$PageInfoImplCopyWith<$Res> {
  __$$PageInfoImplCopyWithImpl(
      _$PageInfoImpl _value, $Res Function(_$PageInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? pageSize = null,
  }) {
    return _then(_$PageInfoImpl(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PageInfoImpl implements _PageInfo {
  const _$PageInfoImpl(
      {required this.after,
      required this.before,
      @JsonKey(name: 'page_size') required this.pageSize});

  factory _$PageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageInfoImplFromJson(json);

  @override
  final String? after;
  @override
  final String? before;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  @override
  String toString() {
    return 'PageInfo(after: $after, before: $before, pageSize: $pageSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageInfoImpl &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, after, before, pageSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      __$$PageInfoImplCopyWithImpl<_$PageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageInfoImplToJson(
      this,
    );
  }
}

abstract class _PageInfo implements PageInfo {
  const factory _PageInfo(
          {required final String? after,
          required final String? before,
          @JsonKey(name: 'page_size') required final int pageSize}) =
      _$PageInfoImpl;

  factory _PageInfo.fromJson(Map<String, dynamic> json) =
      _$PageInfoImpl.fromJson;

  @override
  String? get after;
  @override
  String? get before;
  @override
  @JsonKey(name: 'page_size')
  int get pageSize;
  @override
  @JsonKey(ignore: true)
  _$$PageInfoImplCopyWith<_$PageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedMetadata _$FeedMetadataFromJson(Map<String, dynamic> json) {
  return _FeedMetadata.fromJson(json);
}

/// @nodoc
mixin _$FeedMetadata {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unread_count')
  int get unreadCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'unseen_count')
  int get unseenCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedMetadataCopyWith<FeedMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedMetadataCopyWith<$Res> {
  factory $FeedMetadataCopyWith(
          FeedMetadata value, $Res Function(FeedMetadata) then) =
      _$FeedMetadataCopyWithImpl<$Res, FeedMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'unread_count') int unreadCount,
      @JsonKey(name: 'unseen_count') int unseenCount});
}

/// @nodoc
class _$FeedMetadataCopyWithImpl<$Res, $Val extends FeedMetadata>
    implements $FeedMetadataCopyWith<$Res> {
  _$FeedMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? unreadCount = null,
    Object? unseenCount = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unseenCount: null == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeedMetadataImplCopyWith<$Res>
    implements $FeedMetadataCopyWith<$Res> {
  factory _$$FeedMetadataImplCopyWith(
          _$FeedMetadataImpl value, $Res Function(_$FeedMetadataImpl) then) =
      __$$FeedMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'unread_count') int unreadCount,
      @JsonKey(name: 'unseen_count') int unseenCount});
}

/// @nodoc
class __$$FeedMetadataImplCopyWithImpl<$Res>
    extends _$FeedMetadataCopyWithImpl<$Res, _$FeedMetadataImpl>
    implements _$$FeedMetadataImplCopyWith<$Res> {
  __$$FeedMetadataImplCopyWithImpl(
      _$FeedMetadataImpl _value, $Res Function(_$FeedMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? unreadCount = null,
    Object? unseenCount = null,
  }) {
    return _then(_$FeedMetadataImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _value.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unseenCount: null == unseenCount
          ? _value.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$FeedMetadataImpl implements _FeedMetadata {
  const _$FeedMetadataImpl(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'unread_count') required this.unreadCount,
      @JsonKey(name: 'unseen_count') required this.unseenCount});

  factory _$FeedMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeedMetadataImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'unread_count')
  final int unreadCount;
  @override
  @JsonKey(name: 'unseen_count')
  final int unseenCount;

  @override
  String toString() {
    return 'FeedMetadata(totalCount: $totalCount, unreadCount: $unreadCount, unseenCount: $unseenCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedMetadataImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.unseenCount, unseenCount) ||
                other.unseenCount == unseenCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, unreadCount, unseenCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedMetadataImplCopyWith<_$FeedMetadataImpl> get copyWith =>
      __$$FeedMetadataImplCopyWithImpl<_$FeedMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeedMetadataImplToJson(
      this,
    );
  }
}

abstract class _FeedMetadata implements FeedMetadata {
  const factory _FeedMetadata(
          {@JsonKey(name: 'total_count') required final int totalCount,
          @JsonKey(name: 'unread_count') required final int unreadCount,
          @JsonKey(name: 'unseen_count') required final int unseenCount}) =
      _$FeedMetadataImpl;

  factory _FeedMetadata.fromJson(Map<String, dynamic> json) =
      _$FeedMetadataImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'unread_count')
  int get unreadCount;
  @override
  @JsonKey(name: 'unseen_count')
  int get unseenCount;
  @override
  @JsonKey(ignore: true)
  _$$FeedMetadataImplCopyWith<_$FeedMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

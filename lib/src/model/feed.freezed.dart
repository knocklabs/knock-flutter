// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Feed {
  @JsonKey(name: 'entries')
  List<FeedItem> get items;
  @JsonKey(name: 'page_info')
  PageInfo get pageInfo;
  @JsonKey(name: 'meta')
  FeedMetadata get metadata;
  @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
  NetworkStatus get networkStatus;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedCopyWith<Feed> get copyWith =>
      _$FeedCopyWithImpl<Feed>(this as Feed, _$identity);

  /// Serializes this Feed to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Feed &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      pageInfo,
      metadata,
      networkStatus);

  @override
  String toString() {
    return 'Feed(items: $items, pageInfo: $pageInfo, metadata: $metadata, networkStatus: $networkStatus)';
  }
}

/// @nodoc
abstract mixin class $FeedCopyWith<$Res> {
  factory $FeedCopyWith(Feed value, $Res Function(Feed) _then) =
      _$FeedCopyWithImpl;
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
class _$FeedCopyWithImpl<$Res> implements $FeedCopyWith<$Res> {
  _$FeedCopyWithImpl(this._self, this._then);

  final Feed _self;
  final $Res Function(Feed) _then;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? metadata = null,
    Object? networkStatus = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
      networkStatus: null == networkStatus
          ? _self.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_self.pageInfo, (value) {
      return _then(_self.copyWith(pageInfo: value));
    });
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Feed].
extension FeedPatterns on Feed {
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
    TResult Function(_Feed value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Feed() when $default != null:
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
    TResult Function(_Feed value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Feed():
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
    TResult? Function(_Feed value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Feed() when $default != null:
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
            @JsonKey(name: 'entries') List<FeedItem> items,
            @JsonKey(name: 'page_info') PageInfo pageInfo,
            @JsonKey(name: 'meta') FeedMetadata metadata,
            @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
            NetworkStatus networkStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Feed() when $default != null:
        return $default(
            _that.items, _that.pageInfo, _that.metadata, _that.networkStatus);
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
            @JsonKey(name: 'entries') List<FeedItem> items,
            @JsonKey(name: 'page_info') PageInfo pageInfo,
            @JsonKey(name: 'meta') FeedMetadata metadata,
            @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
            NetworkStatus networkStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Feed():
        return $default(
            _that.items, _that.pageInfo, _that.metadata, _that.networkStatus);
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
            @JsonKey(name: 'entries') List<FeedItem> items,
            @JsonKey(name: 'page_info') PageInfo pageInfo,
            @JsonKey(name: 'meta') FeedMetadata metadata,
            @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
            NetworkStatus networkStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Feed() when $default != null:
        return $default(
            _that.items, _that.pageInfo, _that.metadata, _that.networkStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Feed extends Feed {
  const _Feed(
      {@JsonKey(name: 'entries') required final List<FeedItem> items,
      @JsonKey(name: 'page_info') required this.pageInfo,
      @JsonKey(name: 'meta') required this.metadata,
      @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
      required this.networkStatus})
      : _items = items,
        super._();
  factory _Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

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

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedCopyWith<_Feed> get copyWith =>
      __$FeedCopyWithImpl<_Feed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Feed &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.pageInfo, pageInfo) ||
                other.pageInfo == pageInfo) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      pageInfo,
      metadata,
      networkStatus);

  @override
  String toString() {
    return 'Feed(items: $items, pageInfo: $pageInfo, metadata: $metadata, networkStatus: $networkStatus)';
  }
}

/// @nodoc
abstract mixin class _$FeedCopyWith<$Res> implements $FeedCopyWith<$Res> {
  factory _$FeedCopyWith(_Feed value, $Res Function(_Feed) _then) =
      __$FeedCopyWithImpl;
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
class __$FeedCopyWithImpl<$Res> implements _$FeedCopyWith<$Res> {
  __$FeedCopyWithImpl(this._self, this._then);

  final _Feed _self;
  final $Res Function(_Feed) _then;

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? pageInfo = null,
    Object? metadata = null,
    Object? networkStatus = null,
  }) {
    return _then(_Feed(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      pageInfo: null == pageInfo
          ? _self.pageInfo
          : pageInfo // ignore: cast_nullable_to_non_nullable
              as PageInfo,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
      networkStatus: null == networkStatus
          ? _self.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<$Res> get pageInfo {
    return $PageInfoCopyWith<$Res>(_self.pageInfo, (value) {
      return _then(_self.copyWith(pageInfo: value));
    });
  }

  /// Create a copy of Feed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// @nodoc
mixin _$FeedItem {
  @JsonKey(name: '__cursor')
  String get knockInternalCursor;
  String get id;
  List<Activity> get activities;
  List<Recipient> get actors;
  List<ContentBlock> get blocks;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  DateTime get insertedAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  DateTime? get seenAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  DateTime? get archivedAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  DateTime? get interactedAt;
  @JsonKey(name: 'total_activities')
  int get totalActivities;
  @JsonKey(name: 'total_actors')
  int get totalActors;
  Map<String, dynamic>? get data;
  NotificationSource get source;
  String? get tenant;

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedItemCopyWith<FeedItem> get copyWith =>
      _$FeedItemCopyWithImpl<FeedItem>(this as FeedItem, _$identity);

  /// Serializes this FeedItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedItem &&
            (identical(other.knockInternalCursor, knockInternalCursor) ||
                other.knockInternalCursor == knockInternalCursor) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.activities, activities) &&
            const DeepCollectionEquality().equals(other.actors, actors) &&
            const DeepCollectionEquality().equals(other.blocks, blocks) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.interactedAt, interactedAt) ||
                other.interactedAt == interactedAt) &&
            (identical(other.totalActivities, totalActivities) ||
                other.totalActivities == totalActivities) &&
            (identical(other.totalActors, totalActors) ||
                other.totalActors == totalActors) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      knockInternalCursor,
      id,
      const DeepCollectionEquality().hash(activities),
      const DeepCollectionEquality().hash(actors),
      const DeepCollectionEquality().hash(blocks),
      insertedAt,
      updatedAt,
      seenAt,
      readAt,
      archivedAt,
      interactedAt,
      totalActivities,
      totalActors,
      const DeepCollectionEquality().hash(data),
      source,
      tenant);

  @override
  String toString() {
    return 'FeedItem(knockInternalCursor: $knockInternalCursor, id: $id, activities: $activities, actors: $actors, blocks: $blocks, insertedAt: $insertedAt, updatedAt: $updatedAt, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, interactedAt: $interactedAt, totalActivities: $totalActivities, totalActors: $totalActors, data: $data, source: $source, tenant: $tenant)';
  }
}

/// @nodoc
abstract mixin class $FeedItemCopyWith<$Res> {
  factory $FeedItemCopyWith(FeedItem value, $Res Function(FeedItem) _then) =
      _$FeedItemCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: '__cursor') String knockInternalCursor,
      String id,
      List<Activity> activities,
      List<Recipient> actors,
      List<ContentBlock> blocks,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') DateTime? seenAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      DateTime? archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      DateTime? interactedAt,
      @JsonKey(name: 'total_activities') int totalActivities,
      @JsonKey(name: 'total_actors') int totalActors,
      Map<String, dynamic>? data,
      NotificationSource source,
      String? tenant});

  $NotificationSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$FeedItemCopyWithImpl<$Res> implements $FeedItemCopyWith<$Res> {
  _$FeedItemCopyWithImpl(this._self, this._then);

  final FeedItem _self;
  final $Res Function(FeedItem) _then;

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? knockInternalCursor = null,
    Object? id = null,
    Object? activities = null,
    Object? actors = null,
    Object? blocks = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? interactedAt = freezed,
    Object? totalActivities = null,
    Object? totalActors = null,
    Object? data = freezed,
    Object? source = null,
    Object? tenant = freezed,
  }) {
    return _then(_self.copyWith(
      knockInternalCursor: null == knockInternalCursor
          ? _self.knockInternalCursor
          : knockInternalCursor // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _self.activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      actors: null == actors
          ? _self.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      blocks: null == blocks
          ? _self.blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seenAt: freezed == seenAt
          ? _self.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _self.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _self.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalActivities: null == totalActivities
          ? _self.totalActivities
          : totalActivities // ignore: cast_nullable_to_non_nullable
              as int,
      totalActors: null == totalActors
          ? _self.totalActors
          : totalActors // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSourceCopyWith<$Res> get source {
    return $NotificationSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FeedItem].
extension FeedItemPatterns on FeedItem {
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
    TResult Function(_FeedItem value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedItem() when $default != null:
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
    TResult Function(_FeedItem value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedItem():
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
    TResult? Function(_FeedItem value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedItem() when $default != null:
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
            @JsonKey(name: '__cursor') String knockInternalCursor,
            String id,
            List<Activity> activities,
            List<Recipient> actors,
            List<ContentBlock> blocks,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'seen_at')
            DateTime? seenAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'read_at')
            DateTime? readAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'archived_at')
            DateTime? archivedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @JsonKey(name: 'total_activities') int totalActivities,
            @JsonKey(name: 'total_actors') int totalActors,
            Map<String, dynamic>? data,
            NotificationSource source,
            String? tenant)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedItem() when $default != null:
        return $default(
            _that.knockInternalCursor,
            _that.id,
            _that.activities,
            _that.actors,
            _that.blocks,
            _that.insertedAt,
            _that.updatedAt,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.interactedAt,
            _that.totalActivities,
            _that.totalActors,
            _that.data,
            _that.source,
            _that.tenant);
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
            @JsonKey(name: '__cursor') String knockInternalCursor,
            String id,
            List<Activity> activities,
            List<Recipient> actors,
            List<ContentBlock> blocks,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'seen_at')
            DateTime? seenAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'read_at')
            DateTime? readAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'archived_at')
            DateTime? archivedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @JsonKey(name: 'total_activities') int totalActivities,
            @JsonKey(name: 'total_actors') int totalActors,
            Map<String, dynamic>? data,
            NotificationSource source,
            String? tenant)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedItem():
        return $default(
            _that.knockInternalCursor,
            _that.id,
            _that.activities,
            _that.actors,
            _that.blocks,
            _that.insertedAt,
            _that.updatedAt,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.interactedAt,
            _that.totalActivities,
            _that.totalActors,
            _that.data,
            _that.source,
            _that.tenant);
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
            @JsonKey(name: '__cursor') String knockInternalCursor,
            String id,
            List<Activity> activities,
            List<Recipient> actors,
            List<ContentBlock> blocks,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'seen_at')
            DateTime? seenAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'read_at')
            DateTime? readAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'archived_at')
            DateTime? archivedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @JsonKey(name: 'total_activities') int totalActivities,
            @JsonKey(name: 'total_actors') int totalActors,
            Map<String, dynamic>? data,
            NotificationSource source,
            String? tenant)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedItem() when $default != null:
        return $default(
            _that.knockInternalCursor,
            _that.id,
            _that.activities,
            _that.actors,
            _that.blocks,
            _that.insertedAt,
            _that.updatedAt,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.interactedAt,
            _that.totalActivities,
            _that.totalActors,
            _that.data,
            _that.source,
            _that.tenant);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FeedItem implements FeedItem {
  const _FeedItem(
      {@JsonKey(name: '__cursor') required this.knockInternalCursor,
      required this.id,
      required final List<Activity> activities,
      required final List<Recipient> actors,
      required final List<ContentBlock> blocks,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      required this.insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'seen_at')
      required this.seenAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'read_at')
      required this.readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      required this.archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      required this.interactedAt,
      @JsonKey(name: 'total_activities') required this.totalActivities,
      @JsonKey(name: 'total_actors') required this.totalActors,
      required final Map<String, dynamic>? data,
      required this.source,
      required this.tenant})
      : _activities = activities,
        _actors = actors,
        _blocks = blocks,
        _data = data;
  factory _FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);

  @override
  @JsonKey(name: '__cursor')
  final String knockInternalCursor;
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
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  final DateTime insertedAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  final DateTime? seenAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  final DateTime? readAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  final DateTime? archivedAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  final DateTime? interactedAt;
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

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedItemCopyWith<_FeedItem> get copyWith =>
      __$FeedItemCopyWithImpl<_FeedItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedItem &&
            (identical(other.knockInternalCursor, knockInternalCursor) ||
                other.knockInternalCursor == knockInternalCursor) &&
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
            (identical(other.interactedAt, interactedAt) ||
                other.interactedAt == interactedAt) &&
            (identical(other.totalActivities, totalActivities) ||
                other.totalActivities == totalActivities) &&
            (identical(other.totalActors, totalActors) ||
                other.totalActors == totalActors) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.tenant, tenant) || other.tenant == tenant));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      knockInternalCursor,
      id,
      const DeepCollectionEquality().hash(_activities),
      const DeepCollectionEquality().hash(_actors),
      const DeepCollectionEquality().hash(_blocks),
      insertedAt,
      updatedAt,
      seenAt,
      readAt,
      archivedAt,
      interactedAt,
      totalActivities,
      totalActors,
      const DeepCollectionEquality().hash(_data),
      source,
      tenant);

  @override
  String toString() {
    return 'FeedItem(knockInternalCursor: $knockInternalCursor, id: $id, activities: $activities, actors: $actors, blocks: $blocks, insertedAt: $insertedAt, updatedAt: $updatedAt, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, interactedAt: $interactedAt, totalActivities: $totalActivities, totalActors: $totalActors, data: $data, source: $source, tenant: $tenant)';
  }
}

/// @nodoc
abstract mixin class _$FeedItemCopyWith<$Res>
    implements $FeedItemCopyWith<$Res> {
  factory _$FeedItemCopyWith(_FeedItem value, $Res Function(_FeedItem) _then) =
      __$FeedItemCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '__cursor') String knockInternalCursor,
      String id,
      List<Activity> activities,
      List<Recipient> actors,
      List<ContentBlock> blocks,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') DateTime? seenAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      DateTime? archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      DateTime? interactedAt,
      @JsonKey(name: 'total_activities') int totalActivities,
      @JsonKey(name: 'total_actors') int totalActors,
      Map<String, dynamic>? data,
      NotificationSource source,
      String? tenant});

  @override
  $NotificationSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$FeedItemCopyWithImpl<$Res> implements _$FeedItemCopyWith<$Res> {
  __$FeedItemCopyWithImpl(this._self, this._then);

  final _FeedItem _self;
  final $Res Function(_FeedItem) _then;

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? knockInternalCursor = null,
    Object? id = null,
    Object? activities = null,
    Object? actors = null,
    Object? blocks = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? interactedAt = freezed,
    Object? totalActivities = null,
    Object? totalActors = null,
    Object? data = freezed,
    Object? source = null,
    Object? tenant = freezed,
  }) {
    return _then(_FeedItem(
      knockInternalCursor: null == knockInternalCursor
          ? _self.knockInternalCursor
          : knockInternalCursor // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      activities: null == activities
          ? _self._activities
          : activities // ignore: cast_nullable_to_non_nullable
              as List<Activity>,
      actors: null == actors
          ? _self._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      blocks: null == blocks
          ? _self._blocks
          : blocks // ignore: cast_nullable_to_non_nullable
              as List<ContentBlock>,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      seenAt: freezed == seenAt
          ? _self.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _self.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _self.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _self.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      totalActivities: null == totalActivities
          ? _self.totalActivities
          : totalActivities // ignore: cast_nullable_to_non_nullable
              as int,
      totalActors: null == totalActors
          ? _self.totalActors
          : totalActors // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as NotificationSource,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of FeedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotificationSourceCopyWith<$Res> get source {
    return $NotificationSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// @nodoc
mixin _$Activity {
  String get id;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  DateTime get insertedAt;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  Recipient get recipient;
  Recipient? get actor;
  Map<String, dynamic>? get data;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ActivityCopyWith<Activity> get copyWith =>
      _$ActivityCopyWithImpl<Activity>(this as Activity, _$identity);

  /// Serializes this Activity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Activity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.actor, actor) || other.actor == actor) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, insertedAt, updatedAt,
      recipient, actor, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'Activity(id: $id, insertedAt: $insertedAt, updatedAt: $updatedAt, recipient: $recipient, actor: $actor, data: $data)';
  }
}

/// @nodoc
abstract mixin class $ActivityCopyWith<$Res> {
  factory $ActivityCopyWith(Activity value, $Res Function(Activity) _then) =
      _$ActivityCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      Recipient recipient,
      Recipient? actor,
      Map<String, dynamic>? data});

  $RecipientCopyWith<$Res> get recipient;
  $RecipientCopyWith<$Res>? get actor;
}

/// @nodoc
class _$ActivityCopyWithImpl<$Res> implements $ActivityCopyWith<$Res> {
  _$ActivityCopyWithImpl(this._self, this._then);

  final Activity _self;
  final $Res Function(Activity) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipient: null == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      actor: freezed == actor
          ? _self.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res> get recipient {
    return $RecipientCopyWith<$Res>(_self.recipient, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res>? get actor {
    if (_self.actor == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_self.actor!, (value) {
      return _then(_self.copyWith(actor: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Activity].
extension ActivityPatterns on Activity {
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
    TResult Function(_Activity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
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
    TResult Function(_Activity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity():
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
    TResult? Function(_Activity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            Recipient recipient,
            Recipient? actor,
            Map<String, dynamic>? data)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
        return $default(_that.id, _that.insertedAt, _that.updatedAt,
            _that.recipient, _that.actor, _that.data);
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            Recipient recipient,
            Recipient? actor,
            Map<String, dynamic>? data)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity():
        return $default(_that.id, _that.insertedAt, _that.updatedAt,
            _that.recipient, _that.actor, _that.data);
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            Recipient recipient,
            Recipient? actor,
            Map<String, dynamic>? data)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Activity() when $default != null:
        return $default(_that.id, _that.insertedAt, _that.updatedAt,
            _that.recipient, _that.actor, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _Activity implements Activity {
  const _Activity(
      {required this.id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      required this.insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      required this.recipient,
      required this.actor,
      required final Map<String, dynamic>? data})
      : _data = data;
  factory _Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);

  @override
  final String id;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  final DateTime insertedAt;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
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

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ActivityCopyWith<_Activity> get copyWith =>
      __$ActivityCopyWithImpl<_Activity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ActivityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Activity &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, insertedAt, updatedAt,
      recipient, actor, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'Activity(id: $id, insertedAt: $insertedAt, updatedAt: $updatedAt, recipient: $recipient, actor: $actor, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ActivityCopyWith<$Res>
    implements $ActivityCopyWith<$Res> {
  factory _$ActivityCopyWith(_Activity value, $Res Function(_Activity) _then) =
      __$ActivityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      Recipient recipient,
      Recipient? actor,
      Map<String, dynamic>? data});

  @override
  $RecipientCopyWith<$Res> get recipient;
  @override
  $RecipientCopyWith<$Res>? get actor;
}

/// @nodoc
class __$ActivityCopyWithImpl<$Res> implements _$ActivityCopyWith<$Res> {
  __$ActivityCopyWithImpl(this._self, this._then);

  final _Activity _self;
  final $Res Function(_Activity) _then;

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? recipient = null,
    Object? actor = freezed,
    Object? data = freezed,
  }) {
    return _then(_Activity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      recipient: null == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      actor: freezed == actor
          ? _self.actor
          : actor // ignore: cast_nullable_to_non_nullable
              as Recipient?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res> get recipient {
    return $RecipientCopyWith<$Res>(_self.recipient, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }

  /// Create a copy of Activity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res>? get actor {
    if (_self.actor == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_self.actor!, (value) {
      return _then(_self.copyWith(actor: value));
    });
  }
}

ContentBlock _$ContentBlockFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'markdown':
      return MarkdownContentBlock.fromJson(json);
    case 'text':
      return TextContentBlock.fromJson(json);
    case 'buttonSet':
      return ButtonSetContentBlock.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ContentBlock',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ContentBlock {
  String get name;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContentBlockCopyWith<ContentBlock> get copyWith =>
      _$ContentBlockCopyWithImpl<ContentBlock>(
          this as ContentBlock, _$identity);

  /// Serializes this ContentBlock to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentBlock &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString() {
    return 'ContentBlock(name: $name)';
  }
}

/// @nodoc
abstract mixin class $ContentBlockCopyWith<$Res> {
  factory $ContentBlockCopyWith(
          ContentBlock value, $Res Function(ContentBlock) _then) =
      _$ContentBlockCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ContentBlockCopyWithImpl<$Res> implements $ContentBlockCopyWith<$Res> {
  _$ContentBlockCopyWithImpl(this._self, this._then);

  final ContentBlock _self;
  final $Res Function(ContentBlock) _then;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ContentBlock].
extension ContentBlockPatterns on ContentBlock {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MarkdownContentBlock value)? markdown,
    TResult Function(TextContentBlock value)? text,
    TResult Function(ButtonSetContentBlock value)? buttonSet,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock() when markdown != null:
        return markdown(_that);
      case TextContentBlock() when text != null:
        return text(_that);
      case ButtonSetContentBlock() when buttonSet != null:
        return buttonSet(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(MarkdownContentBlock value) markdown,
    required TResult Function(TextContentBlock value) text,
    required TResult Function(ButtonSetContentBlock value) buttonSet,
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock():
        return markdown(_that);
      case TextContentBlock():
        return text(_that);
      case ButtonSetContentBlock():
        return buttonSet(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MarkdownContentBlock value)? markdown,
    TResult? Function(TextContentBlock value)? text,
    TResult? Function(ButtonSetContentBlock value)? buttonSet,
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock() when markdown != null:
        return markdown(_that);
      case TextContentBlock() when text != null:
        return text(_that);
      case ButtonSetContentBlock() when buttonSet != null:
        return buttonSet(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String content, String rendered)? markdown,
    TResult Function(String name, String content, String rendered)? text,
    TResult Function(String name, List<BlockActionButton> buttons)? buttonSet,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock() when markdown != null:
        return markdown(_that.name, _that.content, _that.rendered);
      case TextContentBlock() when text != null:
        return text(_that.name, _that.content, _that.rendered);
      case ButtonSetContentBlock() when buttonSet != null:
        return buttonSet(_that.name, _that.buttons);
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
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String content, String rendered)
        markdown,
    required TResult Function(String name, String content, String rendered)
        text,
    required TResult Function(String name, List<BlockActionButton> buttons)
        buttonSet,
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock():
        return markdown(_that.name, _that.content, _that.rendered);
      case TextContentBlock():
        return text(_that.name, _that.content, _that.rendered);
      case ButtonSetContentBlock():
        return buttonSet(_that.name, _that.buttons);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String content, String rendered)? markdown,
    TResult? Function(String name, String content, String rendered)? text,
    TResult? Function(String name, List<BlockActionButton> buttons)? buttonSet,
  }) {
    final _that = this;
    switch (_that) {
      case MarkdownContentBlock() when markdown != null:
        return markdown(_that.name, _that.content, _that.rendered);
      case TextContentBlock() when text != null:
        return text(_that.name, _that.content, _that.rendered);
      case ButtonSetContentBlock() when buttonSet != null:
        return buttonSet(_that.name, _that.buttons);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class MarkdownContentBlock extends ContentBlock {
  const MarkdownContentBlock(
      {required this.name,
      required this.content,
      required this.rendered,
      final String? $type})
      : $type = $type ?? 'markdown',
        super._();
  factory MarkdownContentBlock.fromJson(Map<String, dynamic> json) =>
      _$MarkdownContentBlockFromJson(json);

  @override
  final String name;
  final String content;
  final String rendered;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MarkdownContentBlockCopyWith<MarkdownContentBlock> get copyWith =>
      _$MarkdownContentBlockCopyWithImpl<MarkdownContentBlock>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MarkdownContentBlockToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MarkdownContentBlock &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, rendered);

  @override
  String toString() {
    return 'ContentBlock.markdown(name: $name, content: $content, rendered: $rendered)';
  }
}

/// @nodoc
abstract mixin class $MarkdownContentBlockCopyWith<$Res>
    implements $ContentBlockCopyWith<$Res> {
  factory $MarkdownContentBlockCopyWith(MarkdownContentBlock value,
          $Res Function(MarkdownContentBlock) _then) =
      _$MarkdownContentBlockCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String content, String rendered});
}

/// @nodoc
class _$MarkdownContentBlockCopyWithImpl<$Res>
    implements $MarkdownContentBlockCopyWith<$Res> {
  _$MarkdownContentBlockCopyWithImpl(this._self, this._then);

  final MarkdownContentBlock _self;
  final $Res Function(MarkdownContentBlock) _then;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? rendered = null,
  }) {
    return _then(MarkdownContentBlock(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rendered: null == rendered
          ? _self.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TextContentBlock extends ContentBlock {
  const TextContentBlock(
      {required this.name,
      required this.content,
      required this.rendered,
      final String? $type})
      : $type = $type ?? 'text',
        super._();
  factory TextContentBlock.fromJson(Map<String, dynamic> json) =>
      _$TextContentBlockFromJson(json);

  @override
  final String name;
  final String content;
  final String rendered;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TextContentBlockCopyWith<TextContentBlock> get copyWith =>
      _$TextContentBlockCopyWithImpl<TextContentBlock>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TextContentBlockToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextContentBlock &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.rendered, rendered) ||
                other.rendered == rendered));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, content, rendered);

  @override
  String toString() {
    return 'ContentBlock.text(name: $name, content: $content, rendered: $rendered)';
  }
}

/// @nodoc
abstract mixin class $TextContentBlockCopyWith<$Res>
    implements $ContentBlockCopyWith<$Res> {
  factory $TextContentBlockCopyWith(
          TextContentBlock value, $Res Function(TextContentBlock) _then) =
      _$TextContentBlockCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String content, String rendered});
}

/// @nodoc
class _$TextContentBlockCopyWithImpl<$Res>
    implements $TextContentBlockCopyWith<$Res> {
  _$TextContentBlockCopyWithImpl(this._self, this._then);

  final TextContentBlock _self;
  final $Res Function(TextContentBlock) _then;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? content = null,
    Object? rendered = null,
  }) {
    return _then(TextContentBlock(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      rendered: null == rendered
          ? _self.rendered
          : rendered // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ButtonSetContentBlock extends ContentBlock {
  const ButtonSetContentBlock(
      {required this.name,
      required final List<BlockActionButton> buttons,
      final String? $type})
      : _buttons = buttons,
        $type = $type ?? 'buttonSet',
        super._();
  factory ButtonSetContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ButtonSetContentBlockFromJson(json);

  @override
  final String name;
  final List<BlockActionButton> _buttons;
  List<BlockActionButton> get buttons {
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_buttons);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ButtonSetContentBlockCopyWith<ButtonSetContentBlock> get copyWith =>
      _$ButtonSetContentBlockCopyWithImpl<ButtonSetContentBlock>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ButtonSetContentBlockToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ButtonSetContentBlock &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._buttons, _buttons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_buttons));

  @override
  String toString() {
    return 'ContentBlock.buttonSet(name: $name, buttons: $buttons)';
  }
}

/// @nodoc
abstract mixin class $ButtonSetContentBlockCopyWith<$Res>
    implements $ContentBlockCopyWith<$Res> {
  factory $ButtonSetContentBlockCopyWith(ButtonSetContentBlock value,
          $Res Function(ButtonSetContentBlock) _then) =
      _$ButtonSetContentBlockCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<BlockActionButton> buttons});
}

/// @nodoc
class _$ButtonSetContentBlockCopyWithImpl<$Res>
    implements $ButtonSetContentBlockCopyWith<$Res> {
  _$ButtonSetContentBlockCopyWithImpl(this._self, this._then);

  final ButtonSetContentBlock _self;
  final $Res Function(ButtonSetContentBlock) _then;

  /// Create a copy of ContentBlock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? buttons = null,
  }) {
    return _then(ButtonSetContentBlock(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      buttons: null == buttons
          ? _self._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<BlockActionButton>,
    ));
  }
}

/// @nodoc
mixin _$BlockActionButton {
  String get name;
  String get label;
  String get action;

  /// Create a copy of BlockActionButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BlockActionButtonCopyWith<BlockActionButton> get copyWith =>
      _$BlockActionButtonCopyWithImpl<BlockActionButton>(
          this as BlockActionButton, _$identity);

  /// Serializes this BlockActionButton to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BlockActionButton &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, label, action);

  @override
  String toString() {
    return 'BlockActionButton(name: $name, label: $label, action: $action)';
  }
}

/// @nodoc
abstract mixin class $BlockActionButtonCopyWith<$Res> {
  factory $BlockActionButtonCopyWith(
          BlockActionButton value, $Res Function(BlockActionButton) _then) =
      _$BlockActionButtonCopyWithImpl;
  @useResult
  $Res call({String name, String label, String action});
}

/// @nodoc
class _$BlockActionButtonCopyWithImpl<$Res>
    implements $BlockActionButtonCopyWith<$Res> {
  _$BlockActionButtonCopyWithImpl(this._self, this._then);

  final BlockActionButton _self;
  final $Res Function(BlockActionButton) _then;

  /// Create a copy of BlockActionButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? action = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [BlockActionButton].
extension BlockActionButtonPatterns on BlockActionButton {
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
    TResult Function(_BlockActionButton value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton() when $default != null:
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
    TResult Function(_BlockActionButton value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton():
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
    TResult? Function(_BlockActionButton value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton() when $default != null:
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
    TResult Function(String name, String label, String action)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton() when $default != null:
        return $default(_that.name, _that.label, _that.action);
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
    TResult Function(String name, String label, String action) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton():
        return $default(_that.name, _that.label, _that.action);
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
    TResult? Function(String name, String label, String action)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BlockActionButton() when $default != null:
        return $default(_that.name, _that.label, _that.action);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _BlockActionButton implements BlockActionButton {
  const _BlockActionButton(
      {required this.name, required this.label, required this.action});
  factory _BlockActionButton.fromJson(Map<String, dynamic> json) =>
      _$BlockActionButtonFromJson(json);

  @override
  final String name;
  @override
  final String label;
  @override
  final String action;

  /// Create a copy of BlockActionButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BlockActionButtonCopyWith<_BlockActionButton> get copyWith =>
      __$BlockActionButtonCopyWithImpl<_BlockActionButton>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BlockActionButtonToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BlockActionButton &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, label, action);

  @override
  String toString() {
    return 'BlockActionButton(name: $name, label: $label, action: $action)';
  }
}

/// @nodoc
abstract mixin class _$BlockActionButtonCopyWith<$Res>
    implements $BlockActionButtonCopyWith<$Res> {
  factory _$BlockActionButtonCopyWith(
          _BlockActionButton value, $Res Function(_BlockActionButton) _then) =
      __$BlockActionButtonCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String label, String action});
}

/// @nodoc
class __$BlockActionButtonCopyWithImpl<$Res>
    implements _$BlockActionButtonCopyWith<$Res> {
  __$BlockActionButtonCopyWithImpl(this._self, this._then);

  final _BlockActionButton _self;
  final $Res Function(_BlockActionButton) _then;

  /// Create a copy of BlockActionButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? label = null,
    Object? action = null,
  }) {
    return _then(_BlockActionButton(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$NotificationSource {
  String get key;
  @JsonKey(name: 'version_id')
  String get versionId;

  /// Create a copy of NotificationSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NotificationSourceCopyWith<NotificationSource> get copyWith =>
      _$NotificationSourceCopyWithImpl<NotificationSource>(
          this as NotificationSource, _$identity);

  /// Serializes this NotificationSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotificationSource &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId);

  @override
  String toString() {
    return 'NotificationSource(key: $key, versionId: $versionId)';
  }
}

/// @nodoc
abstract mixin class $NotificationSourceCopyWith<$Res> {
  factory $NotificationSourceCopyWith(
          NotificationSource value, $Res Function(NotificationSource) _then) =
      _$NotificationSourceCopyWithImpl;
  @useResult
  $Res call({String key, @JsonKey(name: 'version_id') String versionId});
}

/// @nodoc
class _$NotificationSourceCopyWithImpl<$Res>
    implements $NotificationSourceCopyWith<$Res> {
  _$NotificationSourceCopyWithImpl(this._self, this._then);

  final NotificationSource _self;
  final $Res Function(NotificationSource) _then;

  /// Create a copy of NotificationSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
  }) {
    return _then(_self.copyWith(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _self.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NotificationSource].
extension NotificationSourcePatterns on NotificationSource {
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
    TResult Function(_NotificationSource value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSource() when $default != null:
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
    TResult Function(_NotificationSource value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSource():
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
    TResult? Function(_NotificationSource value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSource() when $default != null:
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
    TResult Function(String key, @JsonKey(name: 'version_id') String versionId)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NotificationSource() when $default != null:
        return $default(_that.key, _that.versionId);
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
    TResult Function(String key, @JsonKey(name: 'version_id') String versionId)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSource():
        return $default(_that.key, _that.versionId);
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
            String key, @JsonKey(name: 'version_id') String versionId)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NotificationSource() when $default != null:
        return $default(_that.key, _that.versionId);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _NotificationSource implements NotificationSource {
  const _NotificationSource(
      {required this.key,
      @JsonKey(name: 'version_id') required this.versionId});
  factory _NotificationSource.fromJson(Map<String, dynamic> json) =>
      _$NotificationSourceFromJson(json);

  @override
  final String key;
  @override
  @JsonKey(name: 'version_id')
  final String versionId;

  /// Create a copy of NotificationSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NotificationSourceCopyWith<_NotificationSource> get copyWith =>
      __$NotificationSourceCopyWithImpl<_NotificationSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NotificationSourceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NotificationSource &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId);

  @override
  String toString() {
    return 'NotificationSource(key: $key, versionId: $versionId)';
  }
}

/// @nodoc
abstract mixin class _$NotificationSourceCopyWith<$Res>
    implements $NotificationSourceCopyWith<$Res> {
  factory _$NotificationSourceCopyWith(
          _NotificationSource value, $Res Function(_NotificationSource) _then) =
      __$NotificationSourceCopyWithImpl;
  @override
  @useResult
  $Res call({String key, @JsonKey(name: 'version_id') String versionId});
}

/// @nodoc
class __$NotificationSourceCopyWithImpl<$Res>
    implements _$NotificationSourceCopyWith<$Res> {
  __$NotificationSourceCopyWithImpl(this._self, this._then);

  final _NotificationSource _self;
  final $Res Function(_NotificationSource) _then;

  /// Create a copy of NotificationSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? versionId = null,
  }) {
    return _then(_NotificationSource(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _self.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$PageInfo {
  String? get after;
  String? get before;
  @JsonKey(name: 'page_size')
  int get pageSize;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageInfoCopyWith<PageInfo> get copyWith =>
      _$PageInfoCopyWithImpl<PageInfo>(this as PageInfo, _$identity);

  /// Serializes this PageInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageInfo &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, after, before, pageSize);

  @override
  String toString() {
    return 'PageInfo(after: $after, before: $before, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class $PageInfoCopyWith<$Res> {
  factory $PageInfoCopyWith(PageInfo value, $Res Function(PageInfo) _then) =
      _$PageInfoCopyWithImpl;
  @useResult
  $Res call(
      {String? after,
      String? before,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class _$PageInfoCopyWithImpl<$Res> implements $PageInfoCopyWith<$Res> {
  _$PageInfoCopyWithImpl(this._self, this._then);

  final PageInfo _self;
  final $Res Function(PageInfo) _then;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? pageSize = null,
  }) {
    return _then(_self.copyWith(
      after: freezed == after
          ? _self.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _self.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [PageInfo].
extension PageInfoPatterns on PageInfo {
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
    TResult Function(_PageInfo value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
    TResult Function(_PageInfo value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo():
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
    TResult? Function(_PageInfo value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
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
    TResult Function(String? after, String? before,
            @JsonKey(name: 'page_size') int pageSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
        return $default(_that.after, _that.before, _that.pageSize);
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
    TResult Function(String? after, String? before,
            @JsonKey(name: 'page_size') int pageSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo():
        return $default(_that.after, _that.before, _that.pageSize);
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
    TResult? Function(String? after, String? before,
            @JsonKey(name: 'page_size') int pageSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PageInfo() when $default != null:
        return $default(_that.after, _that.before, _that.pageSize);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PageInfo implements PageInfo {
  const _PageInfo(
      {required this.after,
      required this.before,
      @JsonKey(name: 'page_size') required this.pageSize});
  factory _PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  @override
  final String? after;
  @override
  final String? before;
  @override
  @JsonKey(name: 'page_size')
  final int pageSize;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PageInfoCopyWith<_PageInfo> get copyWith =>
      __$PageInfoCopyWithImpl<_PageInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PageInfoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PageInfo &&
            (identical(other.after, after) || other.after == after) &&
            (identical(other.before, before) || other.before == before) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, after, before, pageSize);

  @override
  String toString() {
    return 'PageInfo(after: $after, before: $before, pageSize: $pageSize)';
  }
}

/// @nodoc
abstract mixin class _$PageInfoCopyWith<$Res>
    implements $PageInfoCopyWith<$Res> {
  factory _$PageInfoCopyWith(_PageInfo value, $Res Function(_PageInfo) _then) =
      __$PageInfoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? after,
      String? before,
      @JsonKey(name: 'page_size') int pageSize});
}

/// @nodoc
class __$PageInfoCopyWithImpl<$Res> implements _$PageInfoCopyWith<$Res> {
  __$PageInfoCopyWithImpl(this._self, this._then);

  final _PageInfo _self;
  final $Res Function(_PageInfo) _then;

  /// Create a copy of PageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? after = freezed,
    Object? before = freezed,
    Object? pageSize = null,
  }) {
    return _then(_PageInfo(
      after: freezed == after
          ? _self.after
          : after // ignore: cast_nullable_to_non_nullable
              as String?,
      before: freezed == before
          ? _self.before
          : before // ignore: cast_nullable_to_non_nullable
              as String?,
      pageSize: null == pageSize
          ? _self.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$FeedMetadata {
  @JsonKey(name: 'total_count')
  int get totalCount;
  @JsonKey(name: 'unread_count')
  int get unreadCount;
  @JsonKey(name: 'unseen_count')
  int get unseenCount;

  /// Create a copy of FeedMetadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<FeedMetadata> get copyWith =>
      _$FeedMetadataCopyWithImpl<FeedMetadata>(
          this as FeedMetadata, _$identity);

  /// Serializes this FeedMetadata to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedMetadata &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.unseenCount, unseenCount) ||
                other.unseenCount == unseenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, unreadCount, unseenCount);

  @override
  String toString() {
    return 'FeedMetadata(totalCount: $totalCount, unreadCount: $unreadCount, unseenCount: $unseenCount)';
  }
}

/// @nodoc
abstract mixin class $FeedMetadataCopyWith<$Res> {
  factory $FeedMetadataCopyWith(
          FeedMetadata value, $Res Function(FeedMetadata) _then) =
      _$FeedMetadataCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'unread_count') int unreadCount,
      @JsonKey(name: 'unseen_count') int unseenCount});
}

/// @nodoc
class _$FeedMetadataCopyWithImpl<$Res> implements $FeedMetadataCopyWith<$Res> {
  _$FeedMetadataCopyWithImpl(this._self, this._then);

  final FeedMetadata _self;
  final $Res Function(FeedMetadata) _then;

  /// Create a copy of FeedMetadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? unreadCount = null,
    Object? unseenCount = null,
  }) {
    return _then(_self.copyWith(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unseenCount: null == unseenCount
          ? _self.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [FeedMetadata].
extension FeedMetadataPatterns on FeedMetadata {
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
    TResult Function(_FeedMetadata value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata() when $default != null:
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
    TResult Function(_FeedMetadata value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata():
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
    TResult? Function(_FeedMetadata value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata() when $default != null:
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
            @JsonKey(name: 'total_count') int totalCount,
            @JsonKey(name: 'unread_count') int unreadCount,
            @JsonKey(name: 'unseen_count') int unseenCount)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata() when $default != null:
        return $default(_that.totalCount, _that.unreadCount, _that.unseenCount);
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
            @JsonKey(name: 'total_count') int totalCount,
            @JsonKey(name: 'unread_count') int unreadCount,
            @JsonKey(name: 'unseen_count') int unseenCount)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata():
        return $default(_that.totalCount, _that.unreadCount, _that.unseenCount);
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
            @JsonKey(name: 'total_count') int totalCount,
            @JsonKey(name: 'unread_count') int unreadCount,
            @JsonKey(name: 'unseen_count') int unseenCount)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedMetadata() when $default != null:
        return $default(_that.totalCount, _that.unreadCount, _that.unseenCount);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _FeedMetadata implements FeedMetadata {
  const _FeedMetadata(
      {@JsonKey(name: 'total_count') required this.totalCount,
      @JsonKey(name: 'unread_count') required this.unreadCount,
      @JsonKey(name: 'unseen_count') required this.unseenCount});
  factory _FeedMetadata.fromJson(Map<String, dynamic> json) =>
      _$FeedMetadataFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'unread_count')
  final int unreadCount;
  @override
  @JsonKey(name: 'unseen_count')
  final int unseenCount;

  /// Create a copy of FeedMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedMetadataCopyWith<_FeedMetadata> get copyWith =>
      __$FeedMetadataCopyWithImpl<_FeedMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FeedMetadataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedMetadata &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.unseenCount, unseenCount) ||
                other.unseenCount == unseenCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, totalCount, unreadCount, unseenCount);

  @override
  String toString() {
    return 'FeedMetadata(totalCount: $totalCount, unreadCount: $unreadCount, unseenCount: $unseenCount)';
  }
}

/// @nodoc
abstract mixin class _$FeedMetadataCopyWith<$Res>
    implements $FeedMetadataCopyWith<$Res> {
  factory _$FeedMetadataCopyWith(
          _FeedMetadata value, $Res Function(_FeedMetadata) _then) =
      __$FeedMetadataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'unread_count') int unreadCount,
      @JsonKey(name: 'unseen_count') int unseenCount});
}

/// @nodoc
class __$FeedMetadataCopyWithImpl<$Res>
    implements _$FeedMetadataCopyWith<$Res> {
  __$FeedMetadataCopyWithImpl(this._self, this._then);

  final _FeedMetadata _self;
  final $Res Function(_FeedMetadata) _then;

  /// Create a copy of FeedMetadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? totalCount = null,
    Object? unreadCount = null,
    Object? unseenCount = null,
  }) {
    return _then(_FeedMetadata(
      totalCount: null == totalCount
          ? _self.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadCount: null == unreadCount
          ? _self.unreadCount
          : unreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unseenCount: null == unseenCount
          ? _self.unseenCount
          : unseenCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on

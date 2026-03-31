// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KnockMessage {
  /// The unique identifier for this message.
  String get id;

  /// The channel ID this message was sent through.
  @JsonKey(name: 'channel_id')
  String get channelId;

  /// The recipient of this message.
  Recipient get recipient;

  /// The source workflow that triggered this message.
  KnockMessageSource get source;

  /// The delivery status of the message.
  KnockMessageDeliveryStatus get status;

  /// When the message was inserted.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  DateTime get insertedAt;

  /// When the message was last updated.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;

  /// The actors who triggered this message.
  List<Recipient> get actors;

  /// The tenant associated with this message, if any.
  String? get tenant;

  /// The engagement statuses of the message.
  @JsonKey(name: 'engagement_statuses')
  List<KnockMessageEngagementStatus> get engagementStatuses;

  /// When the message was seen by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  DateTime? get seenAt;

  /// When the message was read by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt;

  /// When the message was archived by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  DateTime? get archivedAt;

  /// When the message was clicked.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'clicked_at')
  DateTime? get clickedAt;

  /// When the message was interacted with by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  DateTime? get interactedAt;

  /// When the message link was clicked, if applicable.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'link_clicked_at')
  DateTime? get linkClickedAt;

  /// Custom data associated with this message.
  Map<String, dynamic>? get data;

  /// Metadata associated with this message.
  Map<String, dynamic> get metadata;

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnockMessageCopyWith<KnockMessage> get copyWith =>
      _$KnockMessageCopyWithImpl<KnockMessage>(
          this as KnockMessage, _$identity);

  /// Serializes this KnockMessage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnockMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.actors, actors) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            const DeepCollectionEquality()
                .equals(other.engagementStatuses, engagementStatuses) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.clickedAt, clickedAt) ||
                other.clickedAt == clickedAt) &&
            (identical(other.interactedAt, interactedAt) ||
                other.interactedAt == interactedAt) &&
            (identical(other.linkClickedAt, linkClickedAt) ||
                other.linkClickedAt == linkClickedAt) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.metadata, metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      channelId,
      recipient,
      source,
      status,
      insertedAt,
      updatedAt,
      const DeepCollectionEquality().hash(actors),
      tenant,
      const DeepCollectionEquality().hash(engagementStatuses),
      seenAt,
      readAt,
      archivedAt,
      clickedAt,
      interactedAt,
      linkClickedAt,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(metadata));

  @override
  String toString() {
    return 'KnockMessage(id: $id, channelId: $channelId, recipient: $recipient, source: $source, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, actors: $actors, tenant: $tenant, engagementStatuses: $engagementStatuses, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, clickedAt: $clickedAt, interactedAt: $interactedAt, linkClickedAt: $linkClickedAt, data: $data, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $KnockMessageCopyWith<$Res> {
  factory $KnockMessageCopyWith(
          KnockMessage value, $Res Function(KnockMessage) _then) =
      _$KnockMessageCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'channel_id') String channelId,
      Recipient recipient,
      KnockMessageSource source,
      KnockMessageDeliveryStatus status,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      List<Recipient> actors,
      String? tenant,
      @JsonKey(name: 'engagement_statuses')
      List<KnockMessageEngagementStatus> engagementStatuses,
      @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') DateTime? seenAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      DateTime? archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'clicked_at')
      DateTime? clickedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      DateTime? interactedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'link_clicked_at')
      DateTime? linkClickedAt,
      Map<String, dynamic>? data,
      Map<String, dynamic> metadata});

  $RecipientCopyWith<$Res> get recipient;
  $KnockMessageSourceCopyWith<$Res> get source;
}

/// @nodoc
class _$KnockMessageCopyWithImpl<$Res> implements $KnockMessageCopyWith<$Res> {
  _$KnockMessageCopyWithImpl(this._self, this._then);

  final KnockMessage _self;
  final $Res Function(KnockMessage) _then;

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? recipient = null,
    Object? source = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? actors = null,
    Object? tenant = freezed,
    Object? engagementStatuses = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? clickedAt = freezed,
    Object? interactedAt = freezed,
    Object? linkClickedAt = freezed,
    Object? data = freezed,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as KnockMessageSource,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as KnockMessageDeliveryStatus,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actors: null == actors
          ? _self.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementStatuses: null == engagementStatuses
          ? _self.engagementStatuses
          : engagementStatuses // ignore: cast_nullable_to_non_nullable
              as List<KnockMessageEngagementStatus>,
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
      clickedAt: freezed == clickedAt
          ? _self.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _self.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkClickedAt: freezed == linkClickedAt
          ? _self.linkClickedAt
          : linkClickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res> get recipient {
    return $RecipientCopyWith<$Res>(_self.recipient, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnockMessageSourceCopyWith<$Res> get source {
    return $KnockMessageSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// Adds pattern-matching-related methods to [KnockMessage].
extension KnockMessagePatterns on KnockMessage {
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
    TResult Function(_KnockMessage value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockMessage() when $default != null:
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
    TResult Function(_KnockMessage value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessage():
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
    TResult? Function(_KnockMessage value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessage() when $default != null:
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
            @JsonKey(name: 'channel_id') String channelId,
            Recipient recipient,
            KnockMessageSource source,
            KnockMessageDeliveryStatus status,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            List<Recipient> actors,
            String? tenant,
            @JsonKey(name: 'engagement_statuses')
            List<KnockMessageEngagementStatus> engagementStatuses,
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
            @JsonKey(name: 'clicked_at')
            DateTime? clickedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'link_clicked_at')
            DateTime? linkClickedAt,
            Map<String, dynamic>? data,
            Map<String, dynamic> metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockMessage() when $default != null:
        return $default(
            _that.id,
            _that.channelId,
            _that.recipient,
            _that.source,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.actors,
            _that.tenant,
            _that.engagementStatuses,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.clickedAt,
            _that.interactedAt,
            _that.linkClickedAt,
            _that.data,
            _that.metadata);
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
            @JsonKey(name: 'channel_id') String channelId,
            Recipient recipient,
            KnockMessageSource source,
            KnockMessageDeliveryStatus status,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            List<Recipient> actors,
            String? tenant,
            @JsonKey(name: 'engagement_statuses')
            List<KnockMessageEngagementStatus> engagementStatuses,
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
            @JsonKey(name: 'clicked_at')
            DateTime? clickedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'link_clicked_at')
            DateTime? linkClickedAt,
            Map<String, dynamic>? data,
            Map<String, dynamic> metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessage():
        return $default(
            _that.id,
            _that.channelId,
            _that.recipient,
            _that.source,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.actors,
            _that.tenant,
            _that.engagementStatuses,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.clickedAt,
            _that.interactedAt,
            _that.linkClickedAt,
            _that.data,
            _that.metadata);
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
            @JsonKey(name: 'channel_id') String channelId,
            Recipient recipient,
            KnockMessageSource source,
            KnockMessageDeliveryStatus status,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'inserted_at')
            DateTime insertedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            List<Recipient> actors,
            String? tenant,
            @JsonKey(name: 'engagement_statuses')
            List<KnockMessageEngagementStatus> engagementStatuses,
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
            @JsonKey(name: 'clicked_at')
            DateTime? clickedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'interacted_at')
            DateTime? interactedAt,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'link_clicked_at')
            DateTime? linkClickedAt,
            Map<String, dynamic>? data,
            Map<String, dynamic> metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessage() when $default != null:
        return $default(
            _that.id,
            _that.channelId,
            _that.recipient,
            _that.source,
            _that.status,
            _that.insertedAt,
            _that.updatedAt,
            _that.actors,
            _that.tenant,
            _that.engagementStatuses,
            _that.seenAt,
            _that.readAt,
            _that.archivedAt,
            _that.clickedAt,
            _that.interactedAt,
            _that.linkClickedAt,
            _that.data,
            _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _KnockMessage extends KnockMessage {
  const _KnockMessage(
      {required this.id,
      @JsonKey(name: 'channel_id') required this.channelId,
      required this.recipient,
      required this.source,
      required this.status,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      required this.insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      final List<Recipient> actors = const [],
      this.tenant,
      @JsonKey(name: 'engagement_statuses')
      final List<KnockMessageEngagementStatus> engagementStatuses = const [],
      @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') this.seenAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') this.readAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'archived_at') this.archivedAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'clicked_at') this.clickedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      this.interactedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'link_clicked_at')
      this.linkClickedAt,
      final Map<String, dynamic>? data,
      final Map<String, dynamic> metadata = const {}})
      : _actors = actors,
        _engagementStatuses = engagementStatuses,
        _data = data,
        _metadata = metadata,
        super._();
  factory _KnockMessage.fromJson(Map<String, dynamic> json) =>
      _$KnockMessageFromJson(json);

  /// The unique identifier for this message.
  @override
  final String id;

  /// The channel ID this message was sent through.
  @override
  @JsonKey(name: 'channel_id')
  final String channelId;

  /// The recipient of this message.
  @override
  final Recipient recipient;

  /// The source workflow that triggered this message.
  @override
  final KnockMessageSource source;

  /// The delivery status of the message.
  @override
  final KnockMessageDeliveryStatus status;

  /// When the message was inserted.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  final DateTime insertedAt;

  /// When the message was last updated.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;

  /// The actors who triggered this message.
  final List<Recipient> _actors;

  /// The actors who triggered this message.
  @override
  @JsonKey()
  List<Recipient> get actors {
    if (_actors is EqualUnmodifiableListView) return _actors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actors);
  }

  /// The tenant associated with this message, if any.
  @override
  final String? tenant;

  /// The engagement statuses of the message.
  final List<KnockMessageEngagementStatus> _engagementStatuses;

  /// The engagement statuses of the message.
  @override
  @JsonKey(name: 'engagement_statuses')
  List<KnockMessageEngagementStatus> get engagementStatuses {
    if (_engagementStatuses is EqualUnmodifiableListView)
      return _engagementStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_engagementStatuses);
  }

  /// When the message was seen by the recipient.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  final DateTime? seenAt;

  /// When the message was read by the recipient.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  final DateTime? readAt;

  /// When the message was archived by the recipient.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  final DateTime? archivedAt;

  /// When the message was clicked.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'clicked_at')
  final DateTime? clickedAt;

  /// When the message was interacted with by the recipient.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  final DateTime? interactedAt;

  /// When the message link was clicked, if applicable.
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'link_clicked_at')
  final DateTime? linkClickedAt;

  /// Custom data associated with this message.
  final Map<String, dynamic>? _data;

  /// Custom data associated with this message.
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Metadata associated with this message.
  final Map<String, dynamic> _metadata;

  /// Metadata associated with this message.
  @override
  @JsonKey()
  Map<String, dynamic> get metadata {
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_metadata);
  }

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KnockMessageCopyWith<_KnockMessage> get copyWith =>
      __$KnockMessageCopyWithImpl<_KnockMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnockMessageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KnockMessage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.insertedAt, insertedAt) ||
                other.insertedAt == insertedAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._actors, _actors) &&
            (identical(other.tenant, tenant) || other.tenant == tenant) &&
            const DeepCollectionEquality()
                .equals(other._engagementStatuses, _engagementStatuses) &&
            (identical(other.seenAt, seenAt) || other.seenAt == seenAt) &&
            (identical(other.readAt, readAt) || other.readAt == readAt) &&
            (identical(other.archivedAt, archivedAt) ||
                other.archivedAt == archivedAt) &&
            (identical(other.clickedAt, clickedAt) ||
                other.clickedAt == clickedAt) &&
            (identical(other.interactedAt, interactedAt) ||
                other.interactedAt == interactedAt) &&
            (identical(other.linkClickedAt, linkClickedAt) ||
                other.linkClickedAt == linkClickedAt) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      channelId,
      recipient,
      source,
      status,
      insertedAt,
      updatedAt,
      const DeepCollectionEquality().hash(_actors),
      tenant,
      const DeepCollectionEquality().hash(_engagementStatuses),
      seenAt,
      readAt,
      archivedAt,
      clickedAt,
      interactedAt,
      linkClickedAt,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_metadata));

  @override
  String toString() {
    return 'KnockMessage(id: $id, channelId: $channelId, recipient: $recipient, source: $source, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, actors: $actors, tenant: $tenant, engagementStatuses: $engagementStatuses, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, clickedAt: $clickedAt, interactedAt: $interactedAt, linkClickedAt: $linkClickedAt, data: $data, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$KnockMessageCopyWith<$Res>
    implements $KnockMessageCopyWith<$Res> {
  factory _$KnockMessageCopyWith(
          _KnockMessage value, $Res Function(_KnockMessage) _then) =
      __$KnockMessageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'channel_id') String channelId,
      Recipient recipient,
      KnockMessageSource source,
      KnockMessageDeliveryStatus status,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      List<Recipient> actors,
      String? tenant,
      @JsonKey(name: 'engagement_statuses')
      List<KnockMessageEngagementStatus> engagementStatuses,
      @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') DateTime? seenAt,
      @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      DateTime? archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'clicked_at')
      DateTime? clickedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      DateTime? interactedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'link_clicked_at')
      DateTime? linkClickedAt,
      Map<String, dynamic>? data,
      Map<String, dynamic> metadata});

  @override
  $RecipientCopyWith<$Res> get recipient;
  @override
  $KnockMessageSourceCopyWith<$Res> get source;
}

/// @nodoc
class __$KnockMessageCopyWithImpl<$Res>
    implements _$KnockMessageCopyWith<$Res> {
  __$KnockMessageCopyWithImpl(this._self, this._then);

  final _KnockMessage _self;
  final $Res Function(_KnockMessage) _then;

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? recipient = null,
    Object? source = null,
    Object? status = null,
    Object? insertedAt = null,
    Object? updatedAt = null,
    Object? actors = null,
    Object? tenant = freezed,
    Object? engagementStatuses = null,
    Object? seenAt = freezed,
    Object? readAt = freezed,
    Object? archivedAt = freezed,
    Object? clickedAt = freezed,
    Object? interactedAt = freezed,
    Object? linkClickedAt = freezed,
    Object? data = freezed,
    Object? metadata = null,
  }) {
    return _then(_KnockMessage(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _self.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _self.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      source: null == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as KnockMessageSource,
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as KnockMessageDeliveryStatus,
      insertedAt: null == insertedAt
          ? _self.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actors: null == actors
          ? _self._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      tenant: freezed == tenant
          ? _self.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementStatuses: null == engagementStatuses
          ? _self._engagementStatuses
          : engagementStatuses // ignore: cast_nullable_to_non_nullable
              as List<KnockMessageEngagementStatus>,
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
      clickedAt: freezed == clickedAt
          ? _self.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _self.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkClickedAt: freezed == linkClickedAt
          ? _self.linkClickedAt
          : linkClickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: null == metadata
          ? _self._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipientCopyWith<$Res> get recipient {
    return $RecipientCopyWith<$Res>(_self.recipient, (value) {
      return _then(_self.copyWith(recipient: value));
    });
  }

  /// Create a copy of KnockMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnockMessageSourceCopyWith<$Res> get source {
    return $KnockMessageSourceCopyWith<$Res>(_self.source, (value) {
      return _then(_self.copyWith(source: value));
    });
  }
}

/// @nodoc
mixin _$KnockMessageSource {
  /// The workflow key.
  String get key;

  /// The version ID of the workflow.
  @JsonKey(name: 'version_id')
  String get versionId;

  /// Categories associated with this workflow.
  List<String> get categories;

  /// The step reference, if applicable.
  @JsonKey(name: 'step_ref')
  String? get stepRef;

  /// Create a copy of KnockMessageSource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnockMessageSourceCopyWith<KnockMessageSource> get copyWith =>
      _$KnockMessageSourceCopyWithImpl<KnockMessageSource>(
          this as KnockMessageSource, _$identity);

  /// Serializes this KnockMessageSource to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnockMessageSource &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            const DeepCollectionEquality()
                .equals(other.categories, categories) &&
            (identical(other.stepRef, stepRef) || other.stepRef == stepRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId,
      const DeepCollectionEquality().hash(categories), stepRef);

  @override
  String toString() {
    return 'KnockMessageSource(key: $key, versionId: $versionId, categories: $categories, stepRef: $stepRef)';
  }
}

/// @nodoc
abstract mixin class $KnockMessageSourceCopyWith<$Res> {
  factory $KnockMessageSourceCopyWith(
          KnockMessageSource value, $Res Function(KnockMessageSource) _then) =
      _$KnockMessageSourceCopyWithImpl;
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'version_id') String versionId,
      List<String> categories,
      @JsonKey(name: 'step_ref') String? stepRef});
}

/// @nodoc
class _$KnockMessageSourceCopyWithImpl<$Res>
    implements $KnockMessageSourceCopyWith<$Res> {
  _$KnockMessageSourceCopyWithImpl(this._self, this._then);

  final KnockMessageSource _self;
  final $Res Function(KnockMessageSource) _then;

  /// Create a copy of KnockMessageSource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
    Object? categories = null,
    Object? stepRef = freezed,
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
      categories: null == categories
          ? _self.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stepRef: freezed == stepRef
          ? _self.stepRef
          : stepRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [KnockMessageSource].
extension KnockMessageSourcePatterns on KnockMessageSource {
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
    TResult Function(_KnockMessageSource value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource() when $default != null:
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
    TResult Function(_KnockMessageSource value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource():
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
    TResult? Function(_KnockMessageSource value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource() when $default != null:
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
            String key,
            @JsonKey(name: 'version_id') String versionId,
            List<String> categories,
            @JsonKey(name: 'step_ref') String? stepRef)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource() when $default != null:
        return $default(
            _that.key, _that.versionId, _that.categories, _that.stepRef);
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
    TResult Function(String key, @JsonKey(name: 'version_id') String versionId,
            List<String> categories, @JsonKey(name: 'step_ref') String? stepRef)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource():
        return $default(
            _that.key, _that.versionId, _that.categories, _that.stepRef);
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
            String key,
            @JsonKey(name: 'version_id') String versionId,
            List<String> categories,
            @JsonKey(name: 'step_ref') String? stepRef)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockMessageSource() when $default != null:
        return $default(
            _that.key, _that.versionId, _that.categories, _that.stepRef);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _KnockMessageSource implements KnockMessageSource {
  const _KnockMessageSource(
      {required this.key,
      @JsonKey(name: 'version_id') required this.versionId,
      final List<String> categories = const [],
      @JsonKey(name: 'step_ref') this.stepRef})
      : _categories = categories;
  factory _KnockMessageSource.fromJson(Map<String, dynamic> json) =>
      _$KnockMessageSourceFromJson(json);

  /// The workflow key.
  @override
  final String key;

  /// The version ID of the workflow.
  @override
  @JsonKey(name: 'version_id')
  final String versionId;

  /// Categories associated with this workflow.
  final List<String> _categories;

  /// Categories associated with this workflow.
  @override
  @JsonKey()
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  /// The step reference, if applicable.
  @override
  @JsonKey(name: 'step_ref')
  final String? stepRef;

  /// Create a copy of KnockMessageSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KnockMessageSourceCopyWith<_KnockMessageSource> get copyWith =>
      __$KnockMessageSourceCopyWithImpl<_KnockMessageSource>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnockMessageSourceToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KnockMessageSource &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.stepRef, stepRef) || other.stepRef == stepRef));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId,
      const DeepCollectionEquality().hash(_categories), stepRef);

  @override
  String toString() {
    return 'KnockMessageSource(key: $key, versionId: $versionId, categories: $categories, stepRef: $stepRef)';
  }
}

/// @nodoc
abstract mixin class _$KnockMessageSourceCopyWith<$Res>
    implements $KnockMessageSourceCopyWith<$Res> {
  factory _$KnockMessageSourceCopyWith(
          _KnockMessageSource value, $Res Function(_KnockMessageSource) _then) =
      __$KnockMessageSourceCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'version_id') String versionId,
      List<String> categories,
      @JsonKey(name: 'step_ref') String? stepRef});
}

/// @nodoc
class __$KnockMessageSourceCopyWithImpl<$Res>
    implements _$KnockMessageSourceCopyWith<$Res> {
  __$KnockMessageSourceCopyWithImpl(this._self, this._then);

  final _KnockMessageSource _self;
  final $Res Function(_KnockMessageSource) _then;

  /// Create a copy of KnockMessageSource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? versionId = null,
    Object? categories = null,
    Object? stepRef = freezed,
  }) {
    return _then(_KnockMessageSource(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _self.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _self._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stepRef: freezed == stepRef
          ? _self.stepRef
          : stepRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

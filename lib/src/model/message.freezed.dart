// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KnockMessage _$KnockMessageFromJson(Map<String, dynamic> json) {
  return _KnockMessage.fromJson(json);
}

/// @nodoc
mixin _$KnockMessage {
  /// The unique identifier for this message.
  String get id => throw _privateConstructorUsedError;

  /// The channel ID this message was sent through.
  @JsonKey(name: 'channel_id')
  String get channelId => throw _privateConstructorUsedError;

  /// The recipient of this message.
  Recipient get recipient => throw _privateConstructorUsedError;

  /// The source workflow that triggered this message.
  KnockMessageSource get source => throw _privateConstructorUsedError;

  /// The delivery status of the message.
  KnockMessageDeliveryStatus get status => throw _privateConstructorUsedError;

  /// When the message was inserted.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  DateTime get insertedAt => throw _privateConstructorUsedError;

  /// When the message was last updated.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// The actors who triggered this message.
  List<Recipient> get actors => throw _privateConstructorUsedError;

  /// The tenant associated with this message, if any.
  String? get tenant => throw _privateConstructorUsedError;

  /// The engagement statuses of the message.
  @JsonKey(name: 'engagement_statuses')
  List<KnockMessageEngagementStatus> get engagementStatuses =>
      throw _privateConstructorUsedError;

  /// When the message was seen by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  DateTime? get seenAt => throw _privateConstructorUsedError;

  /// When the message was read by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt => throw _privateConstructorUsedError;

  /// When the message was archived by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  DateTime? get archivedAt => throw _privateConstructorUsedError;

  /// When the message was clicked.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'clicked_at')
  DateTime? get clickedAt => throw _privateConstructorUsedError;

  /// When the message was interacted with by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  DateTime? get interactedAt => throw _privateConstructorUsedError;

  /// When the message link was clicked, if applicable.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'link_clicked_at')
  DateTime? get linkClickedAt => throw _privateConstructorUsedError;

  /// Custom data associated with this message.
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Metadata associated with this message.
  Map<String, dynamic> get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnockMessageCopyWith<KnockMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnockMessageCopyWith<$Res> {
  factory $KnockMessageCopyWith(
          KnockMessage value, $Res Function(KnockMessage) then) =
      _$KnockMessageCopyWithImpl<$Res, KnockMessage>;
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
class _$KnockMessageCopyWithImpl<$Res, $Val extends KnockMessage>
    implements $KnockMessageCopyWith<$Res> {
  _$KnockMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as KnockMessageSource,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KnockMessageDeliveryStatus,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actors: null == actors
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementStatuses: null == engagementStatuses
          ? _value.engagementStatuses
          : engagementStatuses // ignore: cast_nullable_to_non_nullable
              as List<KnockMessageEngagementStatus>,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clickedAt: freezed == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _value.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkClickedAt: freezed == linkClickedAt
          ? _value.linkClickedAt
          : linkClickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
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
  $KnockMessageSourceCopyWith<$Res> get source {
    return $KnockMessageSourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KnockMessageImplCopyWith<$Res>
    implements $KnockMessageCopyWith<$Res> {
  factory _$$KnockMessageImplCopyWith(
          _$KnockMessageImpl value, $Res Function(_$KnockMessageImpl) then) =
      __$$KnockMessageImplCopyWithImpl<$Res>;
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
class __$$KnockMessageImplCopyWithImpl<$Res>
    extends _$KnockMessageCopyWithImpl<$Res, _$KnockMessageImpl>
    implements _$$KnockMessageImplCopyWith<$Res> {
  __$$KnockMessageImplCopyWithImpl(
      _$KnockMessageImpl _value, $Res Function(_$KnockMessageImpl) _then)
      : super(_value, _then);

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
    return _then(_$KnockMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as String,
      recipient: null == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Recipient,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as KnockMessageSource,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as KnockMessageDeliveryStatus,
      insertedAt: null == insertedAt
          ? _value.insertedAt
          : insertedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      actors: null == actors
          ? _value._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as List<Recipient>,
      tenant: freezed == tenant
          ? _value.tenant
          : tenant // ignore: cast_nullable_to_non_nullable
              as String?,
      engagementStatuses: null == engagementStatuses
          ? _value._engagementStatuses
          : engagementStatuses // ignore: cast_nullable_to_non_nullable
              as List<KnockMessageEngagementStatus>,
      seenAt: freezed == seenAt
          ? _value.seenAt
          : seenAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      readAt: freezed == readAt
          ? _value.readAt
          : readAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      archivedAt: freezed == archivedAt
          ? _value.archivedAt
          : archivedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      clickedAt: freezed == clickedAt
          ? _value.clickedAt
          : clickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      interactedAt: freezed == interactedAt
          ? _value.interactedAt
          : interactedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      linkClickedAt: freezed == linkClickedAt
          ? _value.linkClickedAt
          : linkClickedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      metadata: null == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KnockMessageImpl extends _KnockMessage {
  const _$KnockMessageImpl(
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

  factory _$KnockMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnockMessageImplFromJson(json);

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

  @override
  String toString() {
    return 'KnockMessage(id: $id, channelId: $channelId, recipient: $recipient, source: $source, status: $status, insertedAt: $insertedAt, updatedAt: $updatedAt, actors: $actors, tenant: $tenant, engagementStatuses: $engagementStatuses, seenAt: $seenAt, readAt: $readAt, archivedAt: $archivedAt, clickedAt: $clickedAt, interactedAt: $interactedAt, linkClickedAt: $linkClickedAt, data: $data, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnockMessageImpl &&
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

  @JsonKey(ignore: true)
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnockMessageImplCopyWith<_$KnockMessageImpl> get copyWith =>
      __$$KnockMessageImplCopyWithImpl<_$KnockMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnockMessageImplToJson(
      this,
    );
  }
}

abstract class _KnockMessage extends KnockMessage {
  const factory _KnockMessage(
      {required final String id,
      @JsonKey(name: 'channel_id') required final String channelId,
      required final Recipient recipient,
      required final KnockMessageSource source,
      required final KnockMessageDeliveryStatus status,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'inserted_at')
      required final DateTime insertedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required final DateTime updatedAt,
      final List<Recipient> actors,
      final String? tenant,
      @JsonKey(name: 'engagement_statuses')
      final List<KnockMessageEngagementStatus> engagementStatuses,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'seen_at')
      final DateTime? seenAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'read_at')
      final DateTime? readAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'archived_at')
      final DateTime? archivedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'clicked_at')
      final DateTime? clickedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'interacted_at')
      final DateTime? interactedAt,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'link_clicked_at')
      final DateTime? linkClickedAt,
      final Map<String, dynamic>? data,
      final Map<String, dynamic> metadata}) = _$KnockMessageImpl;
  const _KnockMessage._() : super._();

  factory _KnockMessage.fromJson(Map<String, dynamic> json) =
      _$KnockMessageImpl.fromJson;

  @override

  /// The unique identifier for this message.
  String get id;
  @override

  /// The channel ID this message was sent through.
  @JsonKey(name: 'channel_id')
  String get channelId;
  @override

  /// The recipient of this message.
  Recipient get recipient;
  @override

  /// The source workflow that triggered this message.
  KnockMessageSource get source;
  @override

  /// The delivery status of the message.
  KnockMessageDeliveryStatus get status;
  @override

  /// When the message was inserted.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'inserted_at')
  DateTime get insertedAt;
  @override

  /// When the message was last updated.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override

  /// The actors who triggered this message.
  List<Recipient> get actors;
  @override

  /// The tenant associated with this message, if any.
  String? get tenant;
  @override

  /// The engagement statuses of the message.
  @JsonKey(name: 'engagement_statuses')
  List<KnockMessageEngagementStatus> get engagementStatuses;
  @override

  /// When the message was seen by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'seen_at')
  DateTime? get seenAt;
  @override

  /// When the message was read by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'read_at')
  DateTime? get readAt;
  @override

  /// When the message was archived by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'archived_at')
  DateTime? get archivedAt;
  @override

  /// When the message was clicked.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'clicked_at')
  DateTime? get clickedAt;
  @override

  /// When the message was interacted with by the recipient.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'interacted_at')
  DateTime? get interactedAt;
  @override

  /// When the message link was clicked, if applicable.
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'link_clicked_at')
  DateTime? get linkClickedAt;
  @override

  /// Custom data associated with this message.
  Map<String, dynamic>? get data;
  @override

  /// Metadata associated with this message.
  Map<String, dynamic> get metadata;
  @override
  @JsonKey(ignore: true)
  _$$KnockMessageImplCopyWith<_$KnockMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

KnockMessageSource _$KnockMessageSourceFromJson(Map<String, dynamic> json) {
  return _KnockMessageSource.fromJson(json);
}

/// @nodoc
mixin _$KnockMessageSource {
  /// The workflow key.
  String get key => throw _privateConstructorUsedError;

  /// The version ID of the workflow.
  @JsonKey(name: 'version_id')
  String get versionId => throw _privateConstructorUsedError;

  /// Categories associated with this workflow.
  List<String> get categories => throw _privateConstructorUsedError;

  /// The step reference, if applicable.
  @JsonKey(name: 'step_ref')
  String? get stepRef => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnockMessageSourceCopyWith<KnockMessageSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnockMessageSourceCopyWith<$Res> {
  factory $KnockMessageSourceCopyWith(
          KnockMessageSource value, $Res Function(KnockMessageSource) then) =
      _$KnockMessageSourceCopyWithImpl<$Res, KnockMessageSource>;
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'version_id') String versionId,
      List<String> categories,
      @JsonKey(name: 'step_ref') String? stepRef});
}

/// @nodoc
class _$KnockMessageSourceCopyWithImpl<$Res, $Val extends KnockMessageSource>
    implements $KnockMessageSourceCopyWith<$Res> {
  _$KnockMessageSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
    Object? categories = null,
    Object? stepRef = freezed,
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
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stepRef: freezed == stepRef
          ? _value.stepRef
          : stepRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnockMessageSourceImplCopyWith<$Res>
    implements $KnockMessageSourceCopyWith<$Res> {
  factory _$$KnockMessageSourceImplCopyWith(_$KnockMessageSourceImpl value,
          $Res Function(_$KnockMessageSourceImpl) then) =
      __$$KnockMessageSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String key,
      @JsonKey(name: 'version_id') String versionId,
      List<String> categories,
      @JsonKey(name: 'step_ref') String? stepRef});
}

/// @nodoc
class __$$KnockMessageSourceImplCopyWithImpl<$Res>
    extends _$KnockMessageSourceCopyWithImpl<$Res, _$KnockMessageSourceImpl>
    implements _$$KnockMessageSourceImplCopyWith<$Res> {
  __$$KnockMessageSourceImplCopyWithImpl(_$KnockMessageSourceImpl _value,
      $Res Function(_$KnockMessageSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? versionId = null,
    Object? categories = null,
    Object? stepRef = freezed,
  }) {
    return _then(_$KnockMessageSourceImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      versionId: null == versionId
          ? _value.versionId
          : versionId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
      stepRef: freezed == stepRef
          ? _value.stepRef
          : stepRef // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KnockMessageSourceImpl implements _KnockMessageSource {
  const _$KnockMessageSourceImpl(
      {required this.key,
      @JsonKey(name: 'version_id') required this.versionId,
      final List<String> categories = const [],
      @JsonKey(name: 'step_ref') this.stepRef})
      : _categories = categories;

  factory _$KnockMessageSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnockMessageSourceImplFromJson(json);

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

  @override
  String toString() {
    return 'KnockMessageSource(key: $key, versionId: $versionId, categories: $categories, stepRef: $stepRef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnockMessageSourceImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.versionId, versionId) ||
                other.versionId == versionId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.stepRef, stepRef) || other.stepRef == stepRef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, versionId,
      const DeepCollectionEquality().hash(_categories), stepRef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnockMessageSourceImplCopyWith<_$KnockMessageSourceImpl> get copyWith =>
      __$$KnockMessageSourceImplCopyWithImpl<_$KnockMessageSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnockMessageSourceImplToJson(
      this,
    );
  }
}

abstract class _KnockMessageSource implements KnockMessageSource {
  const factory _KnockMessageSource(
          {required final String key,
          @JsonKey(name: 'version_id') required final String versionId,
          final List<String> categories,
          @JsonKey(name: 'step_ref') final String? stepRef}) =
      _$KnockMessageSourceImpl;

  factory _KnockMessageSource.fromJson(Map<String, dynamic> json) =
      _$KnockMessageSourceImpl.fromJson;

  @override

  /// The workflow key.
  String get key;
  @override

  /// The version ID of the workflow.
  @JsonKey(name: 'version_id')
  String get versionId;
  @override

  /// Categories associated with this workflow.
  List<String> get categories;
  @override

  /// The step reference, if applicable.
  @JsonKey(name: 'step_ref')
  String? get stepRef;
  @override
  @JsonKey(ignore: true)
  _$$KnockMessageSourceImplCopyWith<_$KnockMessageSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

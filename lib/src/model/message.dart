import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/src/model/recipient.dart';
import 'package:knock_flutter/src/util/date_time.dart';

part 'message.freezed.dart';
part 'message.g.dart';

/// The delivery status of a message.
enum KnockMessageDeliveryStatus {
  queued,
  sent,
  delivered,
  @JsonValue('delivery_attempted')
  deliveryAttempted,
  undelivered,
  @JsonValue('not_sent')
  notSent,
}

/// The engagement status of a message.
enum KnockMessageEngagementStatus {
  seen,
  read,
  interacted,
  archived,
}

/// A Knock message represents a notification sent to a user via a channel.
@freezed
class KnockMessage with _$KnockMessage {
  @JsonSerializable(explicitToJson: true)
  const factory KnockMessage({
    /// The unique identifier for this message.
    required String id,

    /// The channel ID this message was sent through.
    @JsonKey(name: 'channel_id') required String channelId,

    /// The recipient of this message.
    required Recipient recipient,

    /// The source workflow that triggered this message.
    required KnockMessageSource source,

    /// The delivery status of the message.
    required KnockMessageDeliveryStatus status,

    /// When the message was inserted.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'inserted_at')
    required DateTime insertedAt,

    /// When the message was last updated.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,

    /// The actors who triggered this message.
    @Default([]) List<Recipient> actors,

    /// The tenant associated with this message, if any.
    String? tenant,

    /// The engagement statuses of the message.
    @JsonKey(name: 'engagement_statuses')
    @Default([])
    List<KnockMessageEngagementStatus> engagementStatuses,

    /// When the message was seen by the recipient.
    @ISO8601DateTimeConverter() @JsonKey(name: 'seen_at') DateTime? seenAt,

    /// When the message was read by the recipient.
    @ISO8601DateTimeConverter() @JsonKey(name: 'read_at') DateTime? readAt,

    /// When the message was archived by the recipient.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'archived_at')
    DateTime? archivedAt,

    /// When the message was clicked.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'clicked_at')
    DateTime? clickedAt,

    /// When the message was interacted with by the recipient.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'interacted_at')
    DateTime? interactedAt,

    /// When the message link was clicked, if applicable.
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'link_clicked_at')
    DateTime? linkClickedAt,

    /// Custom data associated with this message.
    Map<String, dynamic>? data,

    /// Metadata associated with this message.
    @Default({}) Map<String, dynamic> metadata,
  }) = _KnockMessage;

  const KnockMessage._();

  factory KnockMessage.fromJson(Map<String, dynamic> json) =>
      _$KnockMessageFromJson(json);

  /// Whether this message has been seen.
  bool get isSeen => seenAt != null;

  /// Whether this message has been read.
  bool get isRead => readAt != null;

  /// Whether this message has been archived.
  bool get isArchived => archivedAt != null;

  /// Whether this message has been interacted with.
  bool get isInteracted => interactedAt != null;
}

/// Information about the source workflow that triggered a message.
@freezed
class KnockMessageSource with _$KnockMessageSource {
  @JsonSerializable(explicitToJson: true)
  const factory KnockMessageSource({
    /// The workflow key.
    required String key,

    /// The version ID of the workflow.
    @JsonKey(name: 'version_id') required String versionId,

    /// Categories associated with this workflow.
    @Default([]) List<String> categories,

    /// The step reference, if applicable.
    @JsonKey(name: 'step_ref') String? stepRef,
  }) = _KnockMessageSource;

  factory KnockMessageSource.fromJson(Map<String, dynamic> json) =>
      _$KnockMessageSourceFromJson(json);
}

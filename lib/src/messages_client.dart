import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';

/// The engagement status for updating a message.
enum MessageEngagementStatus {
  seen('seen'),
  read('read'),
  interacted('interacted'),
  archived('archived');

  const MessageEngagementStatus(this.apiValue);

  final String apiValue;
}

/// The status for removing from a message (excludes 'interacted').
enum RemovableMessageStatus {
  seen('seen'),
  read('read'),
  archived('archived');

  const RemovableMessageStatus(this.apiValue);

  final String apiValue;
}

/// The status for batch/bulk operations.
enum BatchMessageStatus {
  seen('seen'),
  unseen('unseen'),
  read('read'),
  unread('unread'),
  interacted('interacted'),
  archived('archived'),
  unarchived('unarchived');

  const BatchMessageStatus(this.apiValue);

  final String apiValue;
}

/// The status for bulk channel operations.
enum BulkChannelMessageStatus {
  seen('seen'),
  read('read'),
  archive('archive');

  const BulkChannelMessageStatus(this.apiValue);

  final String apiValue;
}

/// Options for updating message status.
class UpdateMessageStatusOptions {
  const UpdateMessageStatusOptions({this.metadata});

  /// Metadata to include with the status update (only used for 'interacted').
  final Map<String, String>? metadata;
}

/// Options for bulk updating messages in a channel.
class BulkUpdateMessagesInChannelOptions {
  const BulkUpdateMessagesInChannelOptions({
    this.userIds,
    this.engagementStatus,
    this.archived,
    this.hasTenant,
    this.tenants,
  });

  final List<String>? userIds;
  final String? engagementStatus;
  final String? archived;
  final bool? hasTenant;
  final List<String>? tenants;

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (userIds != null) json['user_ids'] = userIds;
    if (engagementStatus != null) json['engagement_status'] = engagementStatus;
    if (archived != null) json['archived'] = archived;
    if (hasTenant != null) json['has_tenant'] = hasTenant;
    if (tenants != null) json['tenants'] = tenants;
    return json;
  }
}

/// Represents a bulk operation response.
class BulkOperation {
  BulkOperation({
    required this.id,
    required this.status,
    required this.estimatedTotalRows,
    required this.processedRows,
  });

  factory BulkOperation.fromJson(Map<String, dynamic> json) {
    return BulkOperation(
      id: json['id'] as String,
      status: json['status'] as String,
      estimatedTotalRows: json['estimated_total_rows'] as int,
      processedRows: json['processed_rows'] as int,
    );
  }

  final String id;
  final String status;
  final int estimatedTotalRows;
  final int processedRows;
}

/// Client for interacting with Knock messages.
///
/// Access via `knock.messages()`.
///
/// Example:
/// ```dart
/// // Get a message
/// final message = await knock.messages().get(messageId);
///
/// // Update a single message status
/// await knock.messages().updateStatus(
///   messageId,
///   MessageEngagementStatus.read,
/// );
///
/// // Batch update multiple messages
/// await knock.messages().batchUpdateStatuses(
///   [messageId1, messageId2],
///   BatchMessageStatus.read,
/// );
/// ```
class MessagesClient {
  MessagesClient(this._knock);

  final Knock _knock;

  ApiClient get _api => _knock.client();

  /// Gets a message by its ID.
  ///
  /// Returns a [KnockMessage] object containing the message details.
  Future<KnockMessage> get(String messageId) async {
    final response = await _api.doGet('/v1/messages/$messageId');
    final json = response.decodeResponse();
    return KnockMessage.fromJson(json);
  }

  /// Updates the engagement status of a message.
  ///
  /// Use this to mark messages as seen, read, interacted, etc.
  ///
  /// For 'interacted' status, you can optionally pass [options] with metadata.
  ///
/// Example:
/// ```dart
/// // Mark a message as read
/// await knock.messages().updateStatus(
///   messageId,
///   MessageEngagementStatus.read,
/// );
///
/// // Mark a message as interacted with metadata
  /// await knock.messages().updateStatus(
  ///   messageId,
  ///   MessageEngagementStatus.interacted,
  ///   options: UpdateMessageStatusOptions(metadata: {'button': 'accept'}),
  /// );
  /// ```
  Future<KnockMessage> updateStatus(
    String messageId,
    MessageEngagementStatus status, {
    UpdateMessageStatusOptions? options,
  }) async {
    String? body;

    // Metadata is only used for the "interacted" status
    if (status == MessageEngagementStatus.interacted &&
        options?.metadata != null) {
      body = jsonEncode({'metadata': options!.metadata});
    }

    final response = await _api.doPut(
      '/v1/messages/$messageId/${status.apiValue}',
      body: body,
    );
    final json = response.decodeResponse();
    return KnockMessage.fromJson(json);
  }

  /// Removes an engagement status from a message.
  ///
  /// Note: 'interacted' status cannot be removed.
  ///
  /// Example:
  /// ```dart
  /// // Remove the 'seen' status from a message
  /// await knock.messages().removeStatus(
///   messageId,
///   RemovableMessageStatus.seen,
/// );
  /// ```
  Future<KnockMessage> removeStatus(
    String messageId,
    RemovableMessageStatus status,
  ) async {
    final response = await _api.doDelete(
      '/v1/messages/$messageId/${status.apiValue}',
    );
    final json = response.decodeResponse();
    return KnockMessage.fromJson(json);
  }

  /// Batch updates the status of multiple messages.
  ///
  /// Example:
  /// ```dart
  /// await knock.messages().batchUpdateStatuses(
  ///   [messageId1, messageId2, messageId3],
  ///   BatchMessageStatus.read,
  /// );
  /// ```
  Future<List<KnockMessage>> batchUpdateStatuses(
    List<String> messageIds,
    BatchMessageStatus status, {
    UpdateMessageStatusOptions? options,
  }) async {
    final payload = <String, dynamic>{'message_ids': messageIds};

    // Metadata is only used for the "interacted" status
    if (status == BatchMessageStatus.interacted && options?.metadata != null) {
      payload['metadata'] = options!.metadata;
    }

    final response = await _api.doPost(
      '/v1/messages/batch/${status.apiValue}',
      body: jsonEncode(payload),
    );
    final json = response.decodeResponse();
    final list = json as List<dynamic>;
    return list
        .map((item) => KnockMessage.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  /// Bulk updates all message statuses in a channel.
  ///
  /// Returns a [BulkOperation] that can be used to track the operation
  /// progress.
  ///
  /// Example:
  /// ```dart
  /// final operation = await knock.messages().bulkUpdateAllStatusesInChannel(
  ///   channelId: 'my-channel',
  ///   status: BulkChannelMessageStatus.read,
  ///   options: BulkUpdateMessagesInChannelOptions(
  ///     userIds: [userId],
  ///   ),
  /// );
  /// ```
  Future<BulkOperation> bulkUpdateAllStatusesInChannel({
    required String channelId,
    required BulkChannelMessageStatus status,
    BulkUpdateMessagesInChannelOptions? options,
  }) async {
    final response = await _api.doPost(
      '/v1/channels/$channelId/messages/bulk/${status.apiValue}',
      body: options != null ? jsonEncode(options.toJson()) : null,
    );
    final json = response.decodeResponse();
    return BulkOperation.fromJson(json);
  }

  // Convenience methods

  /// Marks a message as seen.
  Future<KnockMessage> markAsSeen(String messageId) =>
      updateStatus(messageId, MessageEngagementStatus.seen);

  /// Marks a message as read.
  Future<KnockMessage> markAsRead(String messageId) =>
      updateStatus(messageId, MessageEngagementStatus.read);

  /// Marks a message as archived.
  Future<KnockMessage> markAsArchived(String messageId) =>
      updateStatus(messageId, MessageEngagementStatus.archived);

  /// Marks a message as interacted.
  ///
  /// This is typically called when a user interacts with a notification,
  /// such as tapping on a push notification.
  ///
  /// Optionally pass [metadata] to include additional context about the
  /// interaction.
  Future<KnockMessage> markAsInteracted(
    String messageId, {
    Map<String, String>? metadata,
  }) =>
      updateStatus(
        messageId,
        MessageEngagementStatus.interacted,
        options: metadata != null
            ? UpdateMessageStatusOptions(metadata: metadata)
            : null,
      );

  /// Removes the seen status from a message.
  Future<KnockMessage> markAsUnseen(String messageId) =>
      removeStatus(messageId, RemovableMessageStatus.seen);

  /// Removes the read status from a message.
  Future<KnockMessage> markAsUnread(String messageId) =>
      removeStatus(messageId, RemovableMessageStatus.read);

  /// Removes the archived status from a message.
  Future<KnockMessage> markAsUnarchived(String messageId) =>
      removeStatus(messageId, RemovableMessageStatus.archived);
}

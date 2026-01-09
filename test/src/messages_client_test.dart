import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:mockito/mockito.dart';

import 'mocks.mocks.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('MessagesClient', () {
    late MockApiClient apiClient;
    late MockKnock knock;
    late MessagesClient messagesClient;

    final testMessageJson = {
      'id': 'msg_123',
      'channel_id': 'channel_456',
      'recipient': {
        '__typename': 'User',
        'id': 'user_789',
        'updated_at': '2024-01-01T00:00:00.000Z',
      },
      'actors': <Map<String, dynamic>>[],
      'source': {
        'key': 'workflow_key',
        'version_id': 'version_1',
        'categories': ['category1'],
      },
      'tenant': null,
      'status': 'delivered',
      'engagement_statuses': ['seen'],
      'inserted_at': '2024-01-01T00:00:00.000Z',
      'updated_at': '2024-01-01T00:00:00.000Z',
      'seen_at': '2024-01-01T01:00:00.000Z',
      'read_at': null,
      'archived_at': null,
      'clicked_at': null,
      'interacted_at': null,
      'link_clicked_at': null,
      'data': {'key': 'value'},
      'metadata': <String, dynamic>{},
    };

    final testMessageResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(testMessageJson),
    );

    final testBatchMessagesResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode([testMessageJson, testMessageJson]),
    );

    final testBulkOperationResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode({
        'id': 'bulk_op_123',
        'status': 'processing',
        'estimated_total_rows': 100,
        'processed_rows': 0,
      }),
    );

    setUp(() {
      apiClient = MockApiClient();
      knock = MockKnock()..authenticate('testUser');

      when(knock.client()).thenReturn(apiClient);
      messagesClient = MessagesClient(knock);
    });

    group('get', () {
      test('fetches a message by ID', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testMessageResponse);

        final message = await messagesClient.get('msg_123');

        expect(message.id, 'msg_123');
        expect(message.channelId, 'channel_456');
        expect(message.status, KnockMessageDeliveryStatus.delivered);
        expect(message.source.key, 'workflow_key');

        verify(apiClient.doGet('/v1/messages/msg_123'));
      });
    });

    group('updateStatus', () {
      test('updates message status to seen', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.updateStatus(
          'msg_123',
          MessageEngagementStatus.seen,
        );

        verify(apiClient.doPut('/v1/messages/msg_123/seen', body: null));
      });

      test('updates message status to read', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.updateStatus(
          'msg_123',
          MessageEngagementStatus.read,
        );

        verify(apiClient.doPut('/v1/messages/msg_123/read', body: null));
      });

      test('updates message status to archived', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.updateStatus(
          'msg_123',
          MessageEngagementStatus.archived,
        );

        verify(apiClient.doPut('/v1/messages/msg_123/archived', body: null));
      });

      test('updates message status to interacted with metadata', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.updateStatus(
          'msg_123',
          MessageEngagementStatus.interacted,
          options: const UpdateMessageStatusOptions(
            metadata: {'button': 'accept'},
          ),
        );

        verify(
          apiClient.doPut(
            '/v1/messages/msg_123/interacted',
            body: argThat(
              contains('"metadata":{"button":"accept"}'),
              named: 'body',
            ),
          ),
        );
      });

      test('updates message status to interacted without metadata', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.updateStatus(
          'msg_123',
          MessageEngagementStatus.interacted,
        );

        verify(
          apiClient.doPut('/v1/messages/msg_123/interacted', body: null),
        );
      });
    });

    group('removeStatus', () {
      test('removes seen status from a message', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.removeStatus(
          'msg_123',
          RemovableMessageStatus.seen,
        );

        verify(apiClient.doDelete('/v1/messages/msg_123/seen'));
      });

      test('removes read status from a message', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.removeStatus(
          'msg_123',
          RemovableMessageStatus.read,
        );

        verify(apiClient.doDelete('/v1/messages/msg_123/read'));
      });

      test('removes archived status from a message', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.removeStatus(
          'msg_123',
          RemovableMessageStatus.archived,
        );

        verify(apiClient.doDelete('/v1/messages/msg_123/archived'));
      });
    });

    group('batchUpdateStatuses', () {
      test('batch updates multiple messages', () async {
        when(apiClient.doPost(any, body: anyNamed('body')))
            .thenAnswer((_) async => testBatchMessagesResponse);

        final messages = await messagesClient.batchUpdateStatuses(
          ['msg_1', 'msg_2'],
          BatchMessageStatus.read,
        );

        expect(messages.length, 2);

        verify(
          apiClient.doPost(
            '/v1/messages/batch/read',
            body: argThat(
              contains('"message_ids":["msg_1","msg_2"]'),
              named: 'body',
            ),
          ),
        );
      });

      test('batch updates with interacted status includes metadata', () async {
        when(apiClient.doPost(any, body: anyNamed('body')))
            .thenAnswer((_) async => testBatchMessagesResponse);

        await messagesClient.batchUpdateStatuses(
          ['msg_1', 'msg_2'],
          BatchMessageStatus.interacted,
          options: const UpdateMessageStatusOptions(
            metadata: {'action': 'clicked'},
          ),
        );

        verify(
          apiClient.doPost(
            '/v1/messages/batch/interacted',
            body: argThat(
              allOf(
                contains('"message_ids":["msg_1","msg_2"]'),
                contains('"metadata":{"action":"clicked"}'),
              ),
              named: 'body',
            ),
          ),
        );
      });
    });

    group('bulkUpdateAllStatusesInChannel', () {
      test('bulk updates all messages in a channel', () async {
        when(apiClient.doPost(any, body: anyNamed('body')))
            .thenAnswer((_) async => testBulkOperationResponse);

        final operation = await messagesClient.bulkUpdateAllStatusesInChannel(
          channelId: 'channel_123',
          status: BulkChannelMessageStatus.read,
        );

        expect(operation.id, 'bulk_op_123');
        expect(operation.status, 'processing');
        expect(operation.estimatedTotalRows, 100);
        expect(operation.processedRows, 0);

        verify(
          apiClient.doPost(
            '/v1/channels/channel_123/messages/bulk/read',
            body: null,
          ),
        );
      });

      test('bulk updates with options', () async {
        when(apiClient.doPost(any, body: anyNamed('body')))
            .thenAnswer((_) async => testBulkOperationResponse);

        await messagesClient.bulkUpdateAllStatusesInChannel(
          channelId: 'channel_123',
          status: BulkChannelMessageStatus.seen,
          options: const BulkUpdateMessagesInChannelOptions(
            userIds: ['user_1', 'user_2'],
            engagementStatus: 'unread',
            archived: 'exclude',
          ),
        );

        verify(
          apiClient.doPost(
            '/v1/channels/channel_123/messages/bulk/seen',
            body: argThat(
              allOf(
                contains('"user_ids":["user_1","user_2"]'),
                contains('"engagement_status":"unread"'),
                contains('"archived":"exclude"'),
              ),
              named: 'body',
            ),
          ),
        );
      });
    });

    group('convenience methods', () {
      test('markAsSeen calls updateStatus with seen', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsSeen('msg_123');

        verify(apiClient.doPut('/v1/messages/msg_123/seen', body: null));
      });

      test('markAsRead calls updateStatus with read', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsRead('msg_123');

        verify(apiClient.doPut('/v1/messages/msg_123/read', body: null));
      });

      test('markAsArchived calls updateStatus with archived', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsArchived('msg_123');

        verify(apiClient.doPut('/v1/messages/msg_123/archived', body: null));
      });

      test('markAsInteracted calls updateStatus with interacted', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsInteracted('msg_123');

        verify(
          apiClient.doPut('/v1/messages/msg_123/interacted', body: null),
        );
      });

      test('markAsInteracted with metadata passes metadata', () async {
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsInteracted(
          'msg_123',
          metadata: {'button': 'dismiss'},
        );

        verify(
          apiClient.doPut(
            '/v1/messages/msg_123/interacted',
            body: argThat(
              contains('"metadata":{"button":"dismiss"}'),
              named: 'body',
            ),
          ),
        );
      });

      test('markAsUnseen calls removeStatus with seen', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsUnseen('msg_123');

        verify(apiClient.doDelete('/v1/messages/msg_123/seen'));
      });

      test('markAsUnread calls removeStatus with read', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsUnread('msg_123');

        verify(apiClient.doDelete('/v1/messages/msg_123/read'));
      });

      test('markAsUnarchived calls removeStatus with archived', () async {
        when(apiClient.doDelete(any))
            .thenAnswer((_) async => testMessageResponse);

        await messagesClient.markAsUnarchived('msg_123');

        verify(apiClient.doDelete('/v1/messages/msg_123/archived'));
      });
    });
  });

  group('KnockMessage', () {
    test('deserializes correctly with all fields', () {
      final json = {
        'id': 'msg_123',
        'channel_id': 'channel_456',
        'recipient': {
          '__typename': 'User',
          'id': 'user_789',
          'updated_at': '2024-01-01T00:00:00.000Z',
        },
        'actors': [
          {
            '__typename': 'User',
            'id': 'actor_1',
            'updated_at': '2024-01-01T00:00:00.000Z',
          },
        ],
        'source': {
          'key': 'workflow_key',
          'version_id': 'version_1',
          'categories': ['transactional', 'urgent'],
          'step_ref': 'step_1',
        },
        'tenant': 'tenant_abc',
        'status': 'delivered',
        'engagement_statuses': ['seen', 'read'],
        'inserted_at': '2024-01-01T00:00:00.000Z',
        'updated_at': '2024-01-02T00:00:00.000Z',
        'seen_at': '2024-01-01T01:00:00.000Z',
        'read_at': '2024-01-01T02:00:00.000Z',
        'archived_at': null,
        'clicked_at': '2024-01-01T03:00:00.000Z',
        'interacted_at': '2024-01-01T04:00:00.000Z',
        'link_clicked_at': '2024-01-01T05:00:00.000Z',
        'data': {'custom_key': 'custom_value'},
        'metadata': {'external_id': 'ext_123'},
      };

      final message = KnockMessage.fromJson(json);

      expect(message.id, 'msg_123');
      expect(message.channelId, 'channel_456');
      expect(message.tenant, 'tenant_abc');
      expect(message.status, KnockMessageDeliveryStatus.delivered);
      expect(
        message.engagementStatuses,
        [KnockMessageEngagementStatus.seen, KnockMessageEngagementStatus.read],
      );

      // Source
      expect(message.source.key, 'workflow_key');
      expect(message.source.versionId, 'version_1');
      expect(message.source.categories, ['transactional', 'urgent']);
      expect(message.source.stepRef, 'step_1');

      // Actors
      expect(message.actors.length, 1);

      // Timestamps
      expect(message.seenAt, isNotNull);
      expect(message.readAt, isNotNull);
      expect(message.archivedAt, isNull);
      expect(message.clickedAt, isNotNull);
      expect(message.interactedAt, isNotNull);
      expect(message.linkClickedAt, isNotNull);

      // Data
      expect(message.data, {'custom_key': 'custom_value'});
      expect(message.metadata, {'external_id': 'ext_123'});

      // Convenience getters
      expect(message.isSeen, true);
      expect(message.isRead, true);
      expect(message.isArchived, false);
      expect(message.isInteracted, true);
    });

    test('deserializes correctly with minimal fields', () {
      final json = {
        'id': 'msg_123',
        'channel_id': 'channel_456',
        'recipient': {
          '__typename': 'User',
          'id': 'user_789',
          'updated_at': '2024-01-01T00:00:00.000Z',
        },
        'source': {
          'key': 'workflow_key',
          'version_id': 'version_1',
        },
        'status': 'queued',
        'inserted_at': '2024-01-01T00:00:00.000Z',
        'updated_at': '2024-01-01T00:00:00.000Z',
      };

      final message = KnockMessage.fromJson(json);

      expect(message.id, 'msg_123');
      expect(message.status, KnockMessageDeliveryStatus.queued);
      expect(message.actors, isEmpty);
      expect(message.engagementStatuses, isEmpty);
      expect(message.source.categories, isEmpty);
      expect(message.metadata, isEmpty);
    });

    test('handles all delivery statuses', () {
      final statuses = {
        'queued': KnockMessageDeliveryStatus.queued,
        'sent': KnockMessageDeliveryStatus.sent,
        'delivered': KnockMessageDeliveryStatus.delivered,
        'delivery_attempted': KnockMessageDeliveryStatus.deliveryAttempted,
        'undelivered': KnockMessageDeliveryStatus.undelivered,
        'not_sent': KnockMessageDeliveryStatus.notSent,
      };

      for (final entry in statuses.entries) {
        final json = {
          'id': 'msg_123',
          'channel_id': 'channel_456',
          'recipient': {
            '__typename': 'User',
            'id': 'user_789',
            'updated_at': '2024-01-01T00:00:00.000Z',
          },
          'source': {'key': 'wf', 'version_id': 'v1'},
          'status': entry.key,
          'inserted_at': '2024-01-01T00:00:00.000Z',
          'updated_at': '2024-01-01T00:00:00.000Z',
        };

        final message = KnockMessage.fromJson(json);
        expect(message.status, entry.value);
      }
    });
  });

  group('BulkOperation', () {
    test('deserializes correctly', () {
      final json = {
        'id': 'bulk_op_123',
        'status': 'completed',
        'estimated_total_rows': 500,
        'processed_rows': 500,
      };

      final operation = BulkOperation.fromJson(json);

      expect(operation.id, 'bulk_op_123');
      expect(operation.status, 'completed');
      expect(operation.estimatedTotalRows, 500);
      expect(operation.processedRows, 500);
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

Map<String, dynamic> _messageJson({
  String status = 'delivered',
  List<String> engagementStatuses = const [],
}) {
  return {
    'id': 'message-1',
    'channel_id': 'channel-1',
    'recipient': {
      '__typename': 'User',
      'id': 'user-1',
      'updated_at': '2024-01-01T00:00:00Z',
    },
    'source': {'key': 'workflow', 'version_id': 'version'},
    'status': status,
    'engagement_statuses': engagementStatuses,
    'inserted_at': '2024-01-01T00:00:00Z',
    'updated_at': '2024-01-01T00:00:00Z',
  };
}

void main() {
  group('KnockMessage deserializes', () {
    test('the bounced delivery status', () {
      final message = KnockMessage.fromJson(_messageJson(status: 'bounced'));

      expect(message.status, KnockMessageDeliveryStatus.bounced);
    });

    test('the link_clicked engagement status', () {
      final message = KnockMessage.fromJson(
        _messageJson(engagementStatuses: ['seen', 'link_clicked']),
      );

      expect(message.engagementStatuses, [
        KnockMessageEngagementStatus.seen,
        KnockMessageEngagementStatus.linkClicked,
      ]);
    });

    test('and ignores engagement statuses the SDK does not know about', () {
      final message = KnockMessage.fromJson(
        _messageJson(engagementStatuses: ['read', 'some_future_status']),
      );

      expect(message.engagementStatuses, [KnockMessageEngagementStatus.read]);
    });

    test('and serializes link_clicked back to its API value', () {
      final message = KnockMessage.fromJson(
        _messageJson(engagementStatuses: ['link_clicked']),
      );

      expect(message.toJson()['engagement_statuses'], ['link_clicked']);
    });
  });
}

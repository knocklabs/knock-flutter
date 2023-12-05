import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_response.dart';

void main() {
  group('OnNewMessageResponse deserializes', () {
    test('new-messages correctly', () {
      final json = jsonDecode('''
          {
            "metadata": {
              "total_count": 24,
              "unread_count": 24,
              "unseen_count": 24
            }
          }
        ''');
      final response = OnNewMessageResponse.fromJson(json);
      expect(
          response,
          const OnNewMessageResponse(
              metadata: FeedMetadata(
            totalCount: 24,
            unreadCount: 24,
            unseenCount: 24,
          )),);
    });
  });
}

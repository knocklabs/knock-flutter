import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_extensions.dart';

void main() {
  DateTime testNow() => DateTime.parse('2023-11-29T14:30:45.100-05:00');

  Feed testFeed() => Feed.initialState();

  FeedItem testFeedItem(String id) => FeedItem(
        id: id,
        activities: [],
        actors: [],
        blocks: [],
        insertedAt: '',
        updatedAt: '',
        seenAt: null,
        readAt: null,
        archivedAt: null,
        totalActivities: 0,
        totalActors: 0,
        data: null,
        source: const NotificationSource(key: '', versionId: ''),
        tenant: null,
      );

  group('FeedItemsModifiers', () {
    test('actions on item ids', () {
      final items = [
        testFeedItem('1'),
        testFeedItem('2'),
      ];
      final actionIds = [];
      items.action((ids) => actionIds.addAll(ids));
      expect(actionIds, ['1', '2']);
    });
  });

  group('FeedModifiersExtension', () {
    test('updates metadata', () {
      final feed = testFeed();
      final updatedFeed = feed.updateMetadata(const FeedMetadata(
        totalCount: 100,
        unreadCount: 75,
        unseenCount: 50,
      ));

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          metadata: const FeedMetadata(
            totalCount: 100,
            unreadCount: 75,
            unseenCount: 50,
          ),
        ),
      );
    });

    test('marks items as seen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]);
      final updatedFeed = feed.markAsSeen(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2').copyWith(seenAt: '2023-11-29T19:30:45.100Z'),
        ]),
      );
    });

    test('marks items as unseen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(seenAt: '2023-11-29T19:30:45.100Z'),
      ]);
      final updatedFeed = feed.markAsUnseen(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2'),
        ]),
      );
    });

    test('marks items as read', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]);
      final updatedFeed = feed.markAsRead(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2').copyWith(readAt: '2023-11-29T19:30:45.100Z'),
        ]),
      );
    });

    test('marks items as unread', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(readAt: '2023-11-29T19:30:45.100Z'),
      ]);
      final updatedFeed = feed.markAsUnread(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2'),
        ]),
      );
    });

    test('marks items as archived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]);
      final updatedFeed = feed.markAsArchived(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2').copyWith(archivedAt: '2023-11-29T19:30:45.100Z'),
        ]),
      );
    });

    test('marks items as unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(archivedAt: '2023-11-29T19:30:45.100Z'),
      ]);
      final updatedFeed = feed.markAsUnarchived(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(items: [
          testFeedItem('1'),
          testFeedItem('2'),
        ]),
      );
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_extensions.dart';

void main() {
  DateTime testNow() => DateTime.parse('2023-11-29T14:30:45.100-05:00');

  Feed testFeed() => Feed.initialState();

  FeedItem testFeedItem(String id) => FeedItem(
        knockInternalCursor: '',
        id: id,
        activities: [],
        actors: [],
        blocks: [],
        insertedAt: DateTime.parse('2023-12-01T12:00:00.000Z'),
        updatedAt: DateTime.parse('2023-12-01T12:00:00.000Z'),
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
          testFeedItem('2').copyWith(
            seenAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
          ),
        ]),
      );
    });

    test('marks items as unseen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2')
            .copyWith(seenAt: DateTime.parse('2023-11-29T19:30:45.100Z')),
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
          testFeedItem('2').copyWith(
            readAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
          ),
        ]),
      );
    });

    test('marks items as unread', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(
          readAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
        ),
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
          testFeedItem('2').copyWith(
            archivedAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
          ),
        ]),
      );
    });

    test('marks items as unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(
          archivedAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
        ),
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

    group('merging', () {
      test('default append behavior is to replace the feed items', () {
        final feed = testFeed().copyWith(
          items: [testFeedItem('1')],
        );

        final otherFeed = testFeed().copyWith(
          items: [testFeedItem('2')],
        );

        final mergedFeed = feed.merge(otherFeed);
        expect(
          mergedFeed,
          testFeed().copyWith(
            items: [testFeedItem('2')],
          ),
        );
      });

      test('appending should append items to the feed', () {
        final feed = testFeed().copyWith(
          items: [
            // Item will be duplicated below and we expect to take that copy
            testFeedItem('1').copyWith(
              insertedAt: DateTime.parse('2023-12-01T12:00:00.000Z'),
            )
          ],
        );

        final otherFeed = testFeed().copyWith(
          items: [
            // Duplicate with a different timestamp, keep this copy
            testFeedItem('1').copyWith(
              insertedAt: DateTime.parse('2023-12-01T12:30:00.000Z'),
            ),
            testFeedItem('2').copyWith(
              // Inserted one hour later than the previous
              insertedAt: DateTime.parse('2023-12-01T13:00:00.000Z'),
            ),
            testFeedItem('3').copyWith(
              // Somehow this has an earlier timestamp so should be sorted last
              insertedAt: DateTime.parse('2023-12-01T12:00:00.000Z'),
            )
          ],
        );

        final mergedFeed = feed.merge(otherFeed, shouldAppend: true);
        expect(
          mergedFeed,
          testFeed().copyWith(
            items: [
              // Items should sort to the top
              testFeedItem('2').copyWith(
                insertedAt: DateTime.parse('2023-12-01T13:00:00.000Z'),
              ),
              testFeedItem('1').copyWith(
                insertedAt: DateTime.parse('2023-12-01T12:30:00.000Z'),
              ),
              testFeedItem('3').copyWith(
                insertedAt: DateTime.parse('2023-12-01T12:00:00.000Z'),
              )
            ],
          ),
        );
      });

      test('default set page behavior is to replace the replace the page info',
          () {
        final feed = testFeed().copyWith(
          pageInfo: const PageInfo(after: '1', before: '2', pageSize: 25),
        );

        final otherFeed = testFeed().copyWith(
          pageInfo: const PageInfo(after: 'A', before: 'B', pageSize: 25),
        );

        final mergedFeed = feed.merge(otherFeed);
        expect(
          mergedFeed,
          testFeed().copyWith(
            pageInfo: const PageInfo(after: 'A', before: 'B', pageSize: 25),
          ),
        );
      });

      test('does not set page info when requested', () {
        final feed = testFeed().copyWith(
          pageInfo: const PageInfo(after: '1', before: '2', pageSize: 25),
        );

        final otherFeed = testFeed().copyWith(
          pageInfo: const PageInfo(after: 'A', before: 'B', pageSize: 25),
        );

        final mergedFeed = feed.merge(otherFeed, shouldSetPage: false);
        expect(
          mergedFeed,
          testFeed().copyWith(
            pageInfo: const PageInfo(after: '1', before: '2', pageSize: 25),
          ),
        );
      });
    });
  });
}

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
        interactedAt: null,
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
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsSeen(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2').copyWith(
              seenAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
            ),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 1,
          ),
        ),
      );
    });

    test('marks items as unseen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2')
            .copyWith(seenAt: DateTime.parse('2023-11-29T19:30:45.100Z')),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsUnseen(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2'),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks items as read', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsRead(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2').copyWith(
              readAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
            ),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 1,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks items as unread', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(
          readAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
        ),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsUnread(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2'),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks items as interacted', () {
      final feed = testFeed().copyWith(
          items: [testFeedItem('1'), testFeedItem('2')]).correctTestMetadata();
      final updatedFeed = feed.markAsInteracted(['2'], testNow());

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2').copyWith(
              readAt: testNow(),
              interactedAt: testNow(),
            ),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 1,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks items as archived when filtering for unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsArchived(['2'], testNow(), true);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
          ],
          metadata: const FeedMetadata(
            totalCount: 1,
            unreadCount: 1,
            unseenCount: 1,
          ),
        ),
      );
    });

    test('marks items as archived when not filtering for unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsArchived(['2'], testNow(), false);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2').copyWith(
              archivedAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
            ),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks items as unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2').copyWith(
          archivedAt: DateTime.parse('2023-11-29T19:30:45.100Z'),
        ),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAsUnarchived(['2']);

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1'),
            testFeedItem('2'),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks all items as seen when filtering for unseen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsSeen(
        testNow(),
        true,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState(),
      );
    });

    test('marks all items as seen when not filtering for unseen', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsSeen(
        testNow(),
        false,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1').copyWith(seenAt: testNow()),
            testFeedItem('2').copyWith(seenAt: testNow()),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 0,
          ),
        ),
      );
    });

    test('marks all items as read when filtering for unread', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsRead(
        testNow(),
        true,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState(),
      );
    });

    test('marks all items as read when not filtering for unread', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsRead(
        testNow(),
        false,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1').copyWith(readAt: testNow()),
            testFeedItem('2').copyWith(readAt: testNow()),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 0,
            unseenCount: 2,
          ),
        ),
      );
    });

    test('marks all items as archived when filtering for unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsArchived(
        testNow(),
        true,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState(),
      );
    });

    test('marks all items as archived when not filtering for unarchived', () {
      final feed = testFeed().copyWith(items: [
        testFeedItem('1'),
        testFeedItem('2'),
      ]).correctTestMetadata();
      final updatedFeed = feed.markAllAsArchived(
        testNow(),
        false,
        () => Feed.initialState(),
      );

      expect(
        updatedFeed,
        Feed.initialState().copyWith(
          items: [
            testFeedItem('1').copyWith(archivedAt: testNow()),
            testFeedItem('2').copyWith(archivedAt: testNow()),
          ],
          metadata: const FeedMetadata(
            totalCount: 2,
            unreadCount: 2,
            unseenCount: 2,
          ),
        ),
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

extension _TestFeedExtension on Feed {
  Feed correctTestMetadata() {
    final totalCount = items.length;
    final unreadCount = items.where((item) => item.readAt == null).length;
    final unseenCount = items.where((item) => item.seenAt == null).length;
    return copyWith(
      metadata: FeedMetadata(
        totalCount: totalCount,
        unreadCount: unreadCount,
        unseenCount: unseenCount,
      ),
    );
  }
}

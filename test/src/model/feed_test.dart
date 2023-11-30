import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  test('Feed has a blank initial state', () {
    final feed = Feed.initialState();
    expect(
      feed,
      const Feed(
        items: [],
        metadata: FeedMetadata(
          totalCount: 0,
          unreadCount: 0,
          unseenCount: 0,
        ),
        pageInfo: PageInfo(
          before: null,
          after: null,
          pageSize: 50,
        ),
        networkStatus: NetworkStatus.ready,
      ),
    );
  });

  group('Feed deserializes', () {
    test('user recipients correctly', () {
      final json = jsonDecode('''
        {
          "__typename": "User",
          "created_at": null,
          "id": "1",
          "updated_at": "2023-11-17T22:46:39.020Z",
          "email": "jhammond@ingen.net",
          "name": "John Hammond"
        }
      ''');
      final actor = Recipient.fromJson(json);
      expect(
        actor,
        equals(Recipient.user(User(
          id: '1',
          email: 'jhammond@ingen.net',
          name: 'John Hammond',
          updatedAt: '2023-11-17T22:46:39.020Z',
          properties: {'__typename': 'User'},
        ))),
      );
    });

    test('structure correctly', () {
      final json = jsonDecode('''
        {
          "entries": [
            {
              "__cursor": "g3QAAAABZAALaW5zZXJ0ZWRfYXR0AAAADWQACl9fc3RydWN0X19kAA9FbGl4aXIuRGF0ZVRpbWVkAAhjYWxlbmRhcmQAE0VsaXhpci5DYWxlbmRhci5JU09kAANkYXlhG2QABGhvdXJhFmQAC21pY3Jvc2Vjb25kaAJiAAx3AWEGZAAGbWludXRlYQhkAAVtb250aGELZAAGc2Vjb25kYR5kAApzdGRfb2Zmc2V0YQBkAAl0aW1lX3pvbmVtAAAAB0V0Yy9VVENkAAp1dGNfb2Zmc2V0YQBkAAR5ZWFyYgAAB-dkAAl6b25lX2FiYnJtAAAAA1VUQw==",
              "__typename": "FeedItem",
              "activities": [
                {
                  "__typename": "Activity",
                  "actor": {
                    "__typename": "User",
                    "created_at": null,
                    "id": "1",
                    "updated_at": "2023-11-17T22:46:39.020Z",
                    "email": "jhammond@ingen.net",
                    "name": "John Hammond"
                  },
                  "data": {
                    "project_name": "My Project"
                  },
                  "id": "2YmFaQ1DBIl0Km6TyGgpforc1KP",
                  "inserted_at": "2023-11-27T22:08:30.795658Z",
                  "recipient": {
                    "__typename": "User",
                    "created_at": null,
                    "id": "2",
                    "updated_at": "2023-11-27T22:08:30.739Z",
                    "email": "esattler@ingen.net",
                    "name": "Ellie Sattler"
                  },
                  "updated_at": "2023-11-27T22:08:30.795658Z"
                }
              ],
              "actors": [
                {
                    "__typename": "User",
                    "created_at": null,
                    "id": "1",
                    "updated_at": "2023-11-17T22:46:39.020Z",
                    "email": "jhammond@ingen.net",
                    "name": "John Hammond"
                }
              ],
              "archived_at": null,
              "blocks": [
                {
                    "content": "Hey **{{ recipient.name | split: ' ' | first }}** - {{ actor.name }} added a new comment.",
                    "name": "body",
                    "rendered": "<p>Hey <strong>Ellie</strong> - John Hammond added a new comment.</p>",
                    "type": "markdown"
                },
                {
                    "content": "{{ vars.app_url }}",
                    "name": "action_url",
                    "rendered": "",
                    "type": "text"
                }
              ],
              "clicked_at": null,
              "data": {
                "project_name": "My Project"
              },
              "id": "2YmFaQ8EGs2p1T4usnQW5TzTQlA",
              "inserted_at": "2023-11-27T22:08:30.816897Z",
              "interacted_at": null,
              "link_clicked_at": null,
              "read_at": null,
              "seen_at": null,
              "source": {
                "__typename": "NotificationSource",
                "key": "new-comment",
                "version_id": "3da6b2de-8d09-470d-8d24-076055696f64"
              },
              "tenant": null,
              "total_activities": 1,
              "total_actors": 1,
              "updated_at": "2023-11-27T22:24:35.547189Z"
            }
          ],
          "meta": {
            "__typename": "FeedMetadata",
            "total_count": 24,
            "unread_count": 24,
            "unseen_count": 24
          },
          "page_info": {
            "__typename": "PageInfo",
            "after": null,
            "before": null,
            "page_size": 50,
            "total_count": 24
          },
          "vars": {}
        }
        ''');
      final feed = Feed.fromJson(json);

      // There is a lot to parse out of here so we'll do it in pieces
      expect(
        feed.metadata,
        const FeedMetadata(
          totalCount: 24,
          unreadCount: 24,
          unseenCount: 24,
        ),
      );
      expect(
        feed.pageInfo,
        const PageInfo(
          after: null,
          before: null,
          pageSize: 50,
        ),
      );
      expect(feed.networkStatus, NetworkStatus.ready);

      // Check feed items
      expect(feed.items.length, 1);
      final item = feed.items[0];

      // Start with the top level data...will check activities, actors, and blocks next
      expect(
        item.copyWith(activities: [], actors: [], blocks: []),
        const FeedItem(
          id: '2YmFaQ8EGs2p1T4usnQW5TzTQlA',
          activities: [],
          actors: [],
          blocks: [],
          insertedAt: '2023-11-27T22:08:30.816897Z',
          updatedAt: '2023-11-27T22:24:35.547189Z',
          seenAt: null,
          readAt: null,
          archivedAt: null,
          totalActivities: 1,
          totalActors: 1,
          data: {
            'project_name': 'My Project',
          },
          source: NotificationSource(
            key: 'new-comment',
            versionId: '3da6b2de-8d09-470d-8d24-076055696f64',
          ),
          tenant: null,
        ),
      );

      // Check feed item activities
      expect(item.activities.length, 1);
      expect(
        item.activities[0],
        Activity(
          id: '2YmFaQ1DBIl0Km6TyGgpforc1KP',
          insertedAt: '2023-11-27T22:08:30.795658Z',
          updatedAt: '2023-11-27T22:08:30.795658Z',
          recipient: Recipient.user(
            User(
              id: '2',
              name: 'Ellie Sattler',
              email: 'esattler@ingen.net',
              updatedAt: '2023-11-27T22:08:30.739Z',
              properties: {'__typename': 'User'},
            ),
          ),
          actor: Recipient.user(
            User(
              id: '1',
              name: 'John Hammond',
              email: 'jhammond@ingen.net',
              updatedAt: '2023-11-17T22:46:39.020Z',
              properties: {'__typename': 'User'},
            ),
          ),
          data: {
            'project_name': 'My Project',
          },
        ),
      );

      // Check feed item actors
      expect(item.actors.length, 1);
      expect(
        item.actors,
        [
          Recipient.user(
            User(
              id: '1',
              name: 'John Hammond',
              email: 'jhammond@ingen.net',
              updatedAt: '2023-11-17T22:46:39.020Z',
              properties: {'__typename': 'User'},
            ),
          )
        ],
      );

      expect(item.blocks.length, 2);
      expect(
        item.blocks,
        const [
          ContentBlock(
            content:
                'Hey **{{ recipient.name | split: \' \' | first }}** - {{ actor.name }} added a new comment.',
            name: 'body',
            rendered:
                '<p>Hey <strong>Ellie</strong> - John Hammond added a new comment.</p>',
            type: ContentBlockType.markdown,
          ),
          ContentBlock(
            content: '{{ vars.app_url }}',
            name: 'action_url',
            rendered: '',
            type: ContentBlockType.text,
          ),
        ],
      );
    });
  });
}

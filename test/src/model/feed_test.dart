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

  test('Feed knows when it has an inflight request', () {
    expect(
      Feed.initialState()
          .copyWith(networkStatus: NetworkStatus.ready)
          .requestInFlight,
      false,
    );

    expect(
      Feed.initialState()
          .copyWith(networkStatus: NetworkStatus.error)
          .requestInFlight,
      false,
    );

    expect(
      Feed.initialState()
          .copyWith(networkStatus: NetworkStatus.loading)
          .requestInFlight,
      true,
    );

    expect(
      Feed.initialState()
          .copyWith(networkStatus: NetworkStatus.fetchMore)
          .requestInFlight,
      true,
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
        equals(
          Recipient.user(
            User(
              id: '1',
              email: 'jhammond@ingen.net',
              name: 'John Hammond',
              updatedAt: DateTime.parse('2023-11-17T22:46:39.020Z'),
              properties: {'__typename': 'User'},
            ),
          ),
        ),
      );
    });

    test('structure correctly', () {
      final json = jsonDecode('''
        {
          "entries": [
            {
              "__cursor": "long_value",
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
                    "content": "https://pavecommute.app/home/challenges/history/summary/{{challengeId}}?p=1",
                    "name": "action_url",
                    "rendered": "https://pavecommute.app/home/challenges/history/summary/3?p=1",
                    "type": "text"
                },
                {
                    "buttons": [
                        {
                            "action": "/action-url",
                            "label": "Primary",
                            "name": "primary"
                        }
                    ],
                    "name": "actions",
                    "type": "button_set"
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

      // Start with the top level data...will check activities, actors, and
      // blocks next
      expect(
        item.copyWith(activities: [], actors: [], blocks: []),
        FeedItem(
          knockInternalCursor: 'long_value',
          id: '2YmFaQ8EGs2p1T4usnQW5TzTQlA',
          activities: [],
          actors: [],
          blocks: [],
          insertedAt: DateTime.parse('2023-11-27T22:08:30.816897Z'),
          updatedAt: DateTime.parse('2023-11-27T22:24:35.547189Z'),
          seenAt: null,
          readAt: null,
          archivedAt: null,
          interactedAt: null,
          totalActivities: 1,
          totalActors: 1,
          data: {
            'project_name': 'My Project',
          },
          source: const NotificationSource(
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
          insertedAt: DateTime.parse('2023-11-27T22:08:30.795658Z'),
          updatedAt: DateTime.parse('2023-11-27T22:08:30.795658Z'),
          recipient: Recipient.user(
            User(
              id: '2',
              name: 'Ellie Sattler',
              email: 'esattler@ingen.net',
              updatedAt: DateTime.parse('2023-11-27T22:08:30.739Z'),
              properties: {'__typename': 'User'},
            ),
          ),
          actor: Recipient.user(
            User(
              id: '1',
              name: 'John Hammond',
              email: 'jhammond@ingen.net',
              updatedAt: DateTime.parse('2023-11-17T22:46:39.020Z'),
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
              updatedAt: DateTime.parse('2023-11-17T22:46:39.020Z'),
              properties: {'__typename': 'User'},
            ),
          ),
        ],
      );

      expect(item.blocks.length, 3);
      expect(
        item.blocks,
        const [
          ContentBlock.markdown(
            name: 'body',
            content:
                // ignore: lines_longer_than_80_chars
                "Hey **{{ recipient.name | split: ' ' | first }}** - {{ actor.name }} added a new comment.",
            rendered:
                '<p>Hey <strong>Ellie</strong> - John Hammond added a new comment.</p>',
          ),
          ContentBlock.text(
            content:
                'https://pavecommute.app/home/challenges/history/summary/{{challengeId}}?p=1',
            name: 'action_url',
            rendered:
                'https://pavecommute.app/home/challenges/history/summary/3?p=1',
          ),
          ContentBlock.buttonSet(
            name: 'actions',
            buttons: [
              BlockActionButton(
                action: '/action-url',
                name: 'primary',
                label: 'Primary',
              ),
            ],
          ),
        ],
      );
    });
  });
}

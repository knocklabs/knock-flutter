import 'dart:async';
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';

import 'support/fake_phoenix_server.dart';
import 'support/test_knock.dart';

const _feedChannelId = 'feed-channel';
const _userId = 'user-1';
const _topic = 'feeds:$_feedChannelId:$_userId';

Map<String, dynamic> _newMessagePayload() => {
  'metadata': {'total_count': 2, 'unread_count': 2, 'unseen_count': 2},
};

void main() {
  late FakePhoenixServer server;
  late TestKnock knock;

  setUp(() async {
    server = FakePhoenixServer();
    await server.start();
  });

  tearDown(() async {
    knock.dispose();
    await server.stop();
  });

  TestKnock createKnock(RequestHandler handler) {
    return knock = TestKnock(handler, host: server.host)..authenticate(_userId);
  }

  Future<Feed Function()> listen(FeedClient feedClient) async {
    Feed? latest;
    feedClient.feed.listen((feed) => latest = feed);
    await pump(300);
    return () => latest!;
  }

  test('a response that fails to decode sets error and does not wedge the '
      'feed in loading', () async {
    var respondWithValidFeed = false;
    createKnock((request) async {
      if (!respondWithValidFeed) {
        return http.Response('{"entries": "invalid"}', 200);
      }
      return http.Response(feedResponseJson([feedItemJson('1')]), 200);
    });
    final feedClient = knock.feed(_feedChannelId);
    final latest = await listen(feedClient);

    expect(latest().networkStatus, NetworkStatus.error);

    respondWithValidFeed = true;

    server.broadcast(_topic, 'new-message', _newMessagePayload());
    await pump(200);

    expect(latest().networkStatus, NetworkStatus.ready);
    expect(latest().items.map((item) => item.id), ['1']);
    feedClient.dispose();
  });

  test('skips content block types the SDK does not know about', () async {
    createKnock((request) async {
      return http.Response(
        feedResponseJson([
          feedItemJson(
            '1',
            blocks: [
              {'type': 'image', 'name': 'hero', 'url': 'https://x'},
              {
                'type': 'markdown',
                'name': 'body',
                'content': 'Hi',
                'rendered': '<p>Hi</p>',
              },
            ],
          ),
        ]),
        200,
      );
    });
    final feedClient = knock.feed(_feedChannelId);
    final latest = await listen(feedClient);

    expect(latest().networkStatus, NetworkStatus.ready);
    expect(latest().items.single.blocks, [
      const ContentBlock.markdown(
        name: 'body',
        content: 'Hi',
        rendered: '<p>Hi</p>',
      ),
    ]);
    feedClient.dispose();
  });

  test(
    'markAllAsRead on an unread-filtered feed keeps the feed ready',
    () async {
      createKnock((request) async {
        if (request.method == 'GET') {
          return http.Response(feedResponseJson([feedItemJson('1')]), 200);
        }
        return http.Response(
          jsonEncode({
            'id': 'op',
            'status': 'queued',
            'estimated_total_rows': 1,
            'processed_rows': 0,
          }),
          200,
        );
      });
      final feedClient = knock.feed(
        _feedChannelId,
        options: const FeedOptions(status: FeedOptionsStatus.unread),
      );
      final latest = await listen(feedClient);
      expect(latest().networkStatus, NetworkStatus.ready);

      await feedClient.markAllAsRead();

      expect(latest().items, isEmpty);
      expect(latest().networkStatus, NetworkStatus.ready);
      feedClient.dispose();
    },
  );

  test('a failed page fetch keeps optimistic updates made while it was in '
      'flight', () async {
    final releasePage = Completer<void>();
    createKnock((request) async {
      if (request.method == 'GET' &&
          request.url.queryParameters.containsKey('after')) {
        await releasePage.future;
        return http.Response('{"error": "bad request"}', 400);
      }
      if (request.method == 'GET') {
        return http.Response(
          feedResponseJson([feedItemJson('1')], after: 'cursor_1'),
          200,
        );
      }
      return http.Response('[]', 200);
    });
    final feedClient = knock.feed(_feedChannelId);
    final latest = await listen(feedClient);

    feedClient.fetchNextPage();
    await pump(10);
    await feedClient.markAsRead([latest().items.first]);
    releasePage.complete();
    await pump();

    expect(latest().networkStatus, NetworkStatus.error);
    expect(latest().items.first.readAt, isNotNull);
    expect(latest().metadata.unreadCount, 0);
    feedClient.dispose();
  });

  test('a realtime update during an in-flight request is replayed', () async {
    final releasePage = Completer<void>();
    createKnock((request) async {
      final params = request.url.queryParameters;
      if (params.containsKey('after')) {
        await releasePage.future;
        return http.Response(
          feedResponseJson([
            feedItemJson('0', insertedAt: '2023-12-31T00:00:00Z'),
          ]),
          200,
        );
      }
      if (params.containsKey('before')) {
        return http.Response(
          feedResponseJson([
            feedItemJson('2', insertedAt: '2024-01-02T00:00:00Z'),
          ]),
          200,
        );
      }
      return http.Response(
        feedResponseJson([feedItemJson('1')], after: 'cursor_1'),
        200,
      );
    });
    final feedClient = knock.feed(_feedChannelId);
    final latest = await listen(feedClient);

    feedClient.fetchNextPage();
    await pump(10);
    server.broadcast(_topic, 'new-message', _newMessagePayload());
    await pump(100);
    expect(
      knock.requests.where((r) => r.url.queryParameters.containsKey('before')),
      isEmpty,
    );

    releasePage.complete();
    await pump(200);

    expect(
      knock.requests.where((r) => r.url.queryParameters.containsKey('before')),
      hasLength(1),
    );
    expect(latest().items.map((item) => item.id), ['2', '1', '0']);
    feedClient.dispose();
  });

  test('the feed stream is inert after dispose', () async {
    createKnock(
      (request) async =>
          http.Response(feedResponseJson([feedItemJson('1')]), 200),
    );
    final feedClient = knock.feed(_feedChannelId);
    await listen(feedClient);
    final requestCount = knock.requests.length;
    final joinCount = server.events('phx_join').length;

    feedClient.dispose();
    final events = <Feed>[];
    feedClient.feed.listen(events.add);
    await pump(200);

    expect(events, isEmpty);
    expect(knock.requests, hasLength(requestCount));
    expect(server.events('phx_join'), hasLength(joinCount));
  });
}

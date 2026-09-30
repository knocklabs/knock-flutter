import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';

import 'support/fake_phoenix_server.dart';
import 'support/test_knock.dart';

const _feedChannelId = 'feed-channel';
const _userId = 'user-1';
const _topic = 'feeds:$_feedChannelId:$_userId';

Future<http.Response> _emptyFeed(http.Request request) async =>
    http.Response(feedResponseJson([]), 200);

void main() {
  late FakePhoenixServer server;
  late TestKnock knock;
  late List<Object> uncaughtErrors;

  setUp(() async {
    server = FakePhoenixServer();
    await server.start();
    uncaughtErrors = [];
  });

  tearDown(() async {
    knock.dispose();
    await server.stop();
  });

  /// Runs [body] and records errors that escape to the zone, e.g. from
  /// stream callbacks and unawaited futures.
  Future<void> guarded(Future<void> Function() body) async {
    await runZonedGuarded(body, (error, _) => uncaughtErrors.add(error));
  }

  TestKnock createKnock({String? userToken}) {
    return knock = TestKnock(_emptyFeed, host: server.host)
      ..authenticate(_userId, userToken);
  }

  int feedGets() => knock
      .requestsWhere('GET')
      .where((request) => request.url.path.contains('/feeds/'))
      .length;

  test('feed clients on the same feed channel share one channel', () async {
    await guarded(() async {
      createKnock();
      final first = knock.feed(_feedChannelId);
      final second = knock.feed(
        _feedChannelId,
        options: const FeedOptions(tenant: 'tenant-1'),
      );
      first.feed.listen((_) {});
      await pump(300);
      second.feed.listen((_) {});
      await pump(300);

      expect(server.events('phx_join'), hasLength(1));

      first.dispose();
      await pump(100);
      expect(server.events('phx_leave'), isEmpty);

      final getsBefore = feedGets();
      server.broadcast(_topic, 'new-message', {
        'metadata': {'total_count': 1, 'unread_count': 1, 'unseen_count': 1},
      });
      await pump(200);
      expect(feedGets(), getsBefore + 1);

      second.dispose();
      await pump(100);
      expect(server.events('phx_leave'), hasLength(1));
    });

    expect(uncaughtErrors, isEmpty);
  });

  test('a feed client resubscribed right after cancel rejoins', () async {
    await guarded(() async {
      createKnock();
      final feedClient = knock.feed(_feedChannelId);
      final subscription = feedClient.feed.listen((_) {});
      await pump(300);

      await subscription.cancel();
      feedClient.feed.listen((_) {});
      await pump(300);

      expect(server.events('phx_join'), hasLength(2));
      feedClient.dispose();
    });

    expect(uncaughtErrors, isEmpty);
  });

  test('rejoins and refetches after the socket reconnects', () async {
    createKnock();
    final feedClient = knock.feed(_feedChannelId);
    feedClient.feed.listen((_) {});
    await pump(300);
    final getsBefore = feedGets();

    await server.dropConnections();
    await pump(3000);

    expect(server.connections, 2);
    expect(server.events('phx_join'), hasLength(2));
    expect(feedGets(), greaterThan(getsBefore));
    feedClient.dispose();
  });

  test('reconnects with the latest user token', () async {
    createKnock(userToken: 'token-a');
    final feedClient = knock.feed(_feedChannelId);
    feedClient.feed.listen((_) {});
    await pump(300);

    knock.authenticate(_userId, 'token-b');
    await server.dropConnections();
    await pump(3000);

    expect(server.connectionParams.map((params) => params['user_token']), [
      'token-a',
      'token-b',
    ]);
    expect(knock.createdClients, hasLength(1));
    feedClient.dispose();
  });

  test('authenticating as a different user disposes the previous user '
      'client and feeds', () async {
    createKnock(userToken: 'token-a');
    final feedClient = knock.feed(_feedChannelId);
    feedClient.feed.listen((_) {});
    await pump(300);
    final previousClient = knock.client();

    knock.authenticate('user-2', 'token-b');

    expect(knock.client(), isNot(same(previousClient)));
    expect(
      () => feedClient.on(BindableFeedEvent.allItemsEvents),
      throwsStateError,
    );
  });

  test('disposing a feed client right after logout does not throw', () async {
    await guarded(() async {
      createKnock();
      final feedClient = knock.feed(_feedChannelId);
      feedClient.feed.listen((_) {});
      await pump(300);

      knock.logout();
      expect(feedClient.dispose, returnsNormally);
      await pump(200);
    });

    expect(uncaughtErrors, isEmpty);
  });

  test('disposing a feed client right after Knock.dispose does not open a '
      'new connection', () async {
    await guarded(() async {
      createKnock();
      final feedClient = knock.feed(_feedChannelId);
      feedClient.feed.listen((_) {});
      await pump(300);

      knock.dispose();
      feedClient.dispose();
      await pump(1500);
    });

    expect(uncaughtErrors, isEmpty);
    expect(knock.createdClients, hasLength(1));
    expect(server.connections, 1);
  });
}

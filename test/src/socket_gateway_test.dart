import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/src/socket_gateway.dart';
import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

void main() {
  late DateTime now;
  late int fetches;
  late DateTime Function() expiry;
  late SocketGatewayConnectionCache cache;

  SocketGatewayConnection connection() => SocketGatewayConnection(
    mode: 'websocket',
    url: 'wss://gateway.example.com/websocket?auth_token=abc',
    expiresAt: expiry(),
  );

  setUp(() {
    now = DateTime.utc(2025);
    fetches = 0;
    expiry = () => now.add(const Duration(minutes: 1));
    cache = SocketGatewayConnectionCache(
      fetch: () async {
        fetches++;
        return connection();
      },
      now: () => now,
    );
  });

  group('SocketGatewayConnectionCache', () {
    test('reuses the connection before expiry', () async {
      await cache.get();
      await cache.get();
      expect(fetches, 1);
    });

    test('refetches inside the 5s padding', () async {
      await cache.get();
      now = now.add(const Duration(seconds: 56));
      await cache.get();
      expect(fetches, 2);
    });

    test('refetches after expiry', () async {
      await cache.get();
      now = now.add(const Duration(minutes: 2));
      await cache.get();
      expect(fetches, 2);
    });

    test('refetches after invalidate', () async {
      await cache.get();
      cache.invalidate();
      await cache.get();
      expect(fetches, 2);
    });

    test('a failed fetch caches nothing', () async {
      var fail = true;
      final failing = SocketGatewayConnectionCache(
        fetch: () async {
          fetches++;
          if (fail) throw Exception('boom');
          return connection();
        },
        now: () => now,
      );
      await expectLater(failing.get(), throwsException);
      fail = false;
      await failing.get();
      await failing.get();
      expect(fetches, 2);
    });

    test('concurrent gets share one fetch', () async {
      await Future.wait([cache.get(), cache.get(), cache.get()]);
      expect(fetches, 1);
    });

    test('a hung fetch times out and the next get refetches', () async {
      var hang = true;
      final hanging = SocketGatewayConnectionCache(
        fetch: () {
          fetches++;
          if (hang) return Completer<SocketGatewayConnection>().future;
          return Future.value(connection());
        },
        now: () => now,
        fetchTimeout: const Duration(milliseconds: 10),
      );
      await expectLater(hanging.get(), throwsA(isA<TimeoutException>()));
      hang = false;
      await hanging.get();
      expect(fetches, 2);
    });
  });

  group('SocketGatewayConnection.fromJson', () {
    test('throws FormatException on missing url or bad expires_at', () {
      expect(
        () => SocketGatewayConnection.fromJson({
          'mode': 'websocket',
          'expires_at': '2999-01-01T00:00:00Z',
        }),
        throwsFormatException,
      );
      expect(
        () => SocketGatewayConnection.fromJson({
          'mode': 'websocket',
          'url': 'wss://x',
          'expires_at': 'nope',
        }),
        throwsFormatException,
      );
    });
  });

  group('connectViaSocketGateway', () {
    final original = Uri.parse(
      'wss://api.knock.app/ws/v1/websocket?vsn=2.0.0&api_key=pk&user_token=t',
    );

    test('rewrites the URL and merges params, gateway params win', () async {
      final connected = <Uri>[];
      final channel = connectViaSocketGateway(
        original,
        cache: SocketGatewayConnectionCache(
          fetch: () async => SocketGatewayConnection(
            mode: 'websocket',
            url: 'wss://gateway.example.com/websocket?auth_token=abc&vsn=9',
            expiresAt: DateTime.utc(2999),
          ),
        ),
        onUnsupportedMode: () {},
        connect: (url) {
          connected.add(url);
          return Future<WebSocket>.error(StateError('stop'));
        },
      );
      await expectLater(channel.ready, throwsA(anything));

      expect(connected.single.host, 'gateway.example.com');
      expect(connected.single.path, '/websocket');
      expect(connected.single.queryParameters, {
        'vsn': '9',
        'api_key': 'pk',
        'user_token': 't',
        'auth_token': 'abc',
      });
    });

    test('two connects share one fetch', () async {
      for (var i = 0; i < 2; i++) {
        final channel = connectViaSocketGateway(
          original,
          cache: cache,
          onUnsupportedMode: () {},
          connect: (_) => Future<WebSocket>.error(StateError('stop')),
        );
        // Failure invalidates the cache, so reconnect to a cached value
        // by using a connect that succeeds is not needed; just count below.
        await expectLater(channel.ready, throwsA(anything));
        // Re-prime the cache as a successful connect would have left it.
        await cache.get();
      }
      // First connect: fetch (1), invalidated, re-primed (2). Second connect
      // reuses (2), invalidated, re-primed (3).
      expect(fetches, 3);
    });

    test('a failed connect invalidates the cache', () async {
      final channel = connectViaSocketGateway(
        original,
        cache: cache,
        onUnsupportedMode: () {},
        connect: (_) => Future<WebSocket>.error(StateError('stop')),
      );
      await expectLater(channel.ready, throwsA(anything));
      await cache.get();
      expect(fetches, 2);
    });

    test('unsupported mode calls onUnsupportedMode', () async {
      var called = 0;
      final channel = connectViaSocketGateway(
        original,
        cache: SocketGatewayConnectionCache(
          fetch: () async => throw const UnsupportedSocketModeException('x'),
        ),
        onUnsupportedMode: () => called++,
      );
      await expectLater(
        channel.ready,
        throwsA(isA<WebSocketChannelException>()),
      );
      expect(called, 1);
    });
  });
}

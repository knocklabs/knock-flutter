import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:mockito/mockito.dart';

import 'mocks.mocks.dart';
import 'support/test_knock.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  const channel = MethodChannel('plugins.flutter.io/flutter_timezone');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (methodCall) async {
          if (methodCall.method == 'getLocalTimezone') {
            return 'America/New_York';
          }
          return null;
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  group('UserClient', () {
    final noDevicesResponse = KnockApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(ChannelData.forDevices([]).toJson()),
    );

    final testDeviceResponse = KnockApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(
        ChannelData.forDevices([
          const Device(
            token: 'testToken',
            locale: 'en-US',
            timezone: 'America/New_York',
          ),
        ]).toJson(),
      ),
    );

    late MockKnockApiClient apiClient;
    late MockKnock knock;
    late UserClient userClient;

    setUp(() {
      apiClient = MockKnockApiClient();
      knock = MockKnock()..authenticate('testUser');

      when(knock.client()).thenReturn(apiClient);
      when(knock.userId).thenReturn('testUser');
      userClient = UserClient(knock);
    });

    group('appends devices', () {
      test('to a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => noDevicesResponse);
        // We don't actually care what the response is for this test
        when(
          apiClient.doPut(any, body: anyNamed('body')),
        ).thenAnswer((_) async => noDevicesResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');

        verify(
          apiClient.doPut(
            any,
            body: argThat(contains('"token":"testToken"'), named: 'body'),
          ),
        );
      });

      test('skips appending existing devices', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testDeviceResponse);
        // We don't actually care what the response is for this test
        when(
          apiClient.doPut(any, body: anyNamed('body')),
        ).thenAnswer((_) async => testDeviceResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');
        verifyNever(apiClient.doPut(any, body: anyNamed('body')));
      });

      test('handles when there is no channel data', () async {
        when(apiClient.doGet(any)).thenAnswer(
          (_) async => throw KnockApiException(
            const KnockApiResponse(status: 404, statusCode: StatusCode.error),
          ),
        );
        // We don't actually care what the response is for this test
        when(
          apiClient.doPut(any, body: anyNamed('body')),
        ).thenAnswer((_) async => noDevicesResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');

        verify(
          apiClient.doPut(
            any,
            body: argThat(contains('"token":"testToken"'), named: 'body'),
          ),
        );
      });

      test('only rethrows other errors when registering tokens', () async {
        when(apiClient.doGet(any)).thenAnswer(
          (_) async => throw KnockApiException(
            const KnockApiResponse(status: 405, statusCode: StatusCode.error),
          ),
        );
        // We don't actually care what the response is for this test
        when(
          apiClient.doPut(any, body: anyNamed('body')),
        ).thenAnswer((_) async => noDevicesResponse);

        await expectLater(
          userClient.registerTokenForChannel('testChannelId', 'testToken'),
          throwsA(isA<KnockApiException>()),
        );
      });
    });

    group('removes devices', () {
      test('from a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testDeviceResponse);
        // We don't actually care what the response is for this test
        when(
          apiClient.doPut(any, body: anyNamed('body')),
        ).thenAnswer((_) async => noDevicesResponse);

        await userClient.deregisterTokenForChannel(
          'testChannelId',
          'testToken',
        );

        final expectedPut = ChannelData.forDevices([]);
        verify(apiClient.doPut(any, body: jsonEncode(expectedPut.toJson())));
      });
    });

    test('skips removing non-existant devices', () async {
      when(apiClient.doGet(any)).thenAnswer((_) async => testDeviceResponse);
      // We don't actually care what the response is for this test
      when(
        apiClient.doPut(any, body: anyNamed('body')),
      ).thenAnswer((_) async => testDeviceResponse);

      await userClient.deregisterTokenForChannel('testChannelId', 'nope');
      verifyNever(apiClient.doPut(any, body: anyNamed('body')));
    });

    test('handles when there is no channel data', () async {
      when(apiClient.doGet(any)).thenAnswer(
        (_) async => throw KnockApiException(
          const KnockApiResponse(status: 404, statusCode: StatusCode.error),
        ),
      );
      // We don't actually care what the response is for this test
      when(
        apiClient.doPut(any, body: anyNamed('body')),
      ).thenAnswer((_) async => noDevicesResponse);

      await userClient.deregisterTokenForChannel('testChannelId', 'nope');
      verifyNever(apiClient.doPut(any, body: anyNamed('body')));
    });

    test('only rethrows other errors when registering tokens', () async {
      when(apiClient.doGet(any)).thenAnswer(
        (_) async => throw KnockApiException(
          const KnockApiResponse(status: 405, statusCode: StatusCode.error),
        ),
      );
      // We don't actually care what the response is for this test
      when(
        apiClient.doPut(any, body: anyNamed('body')),
      ).thenAnswer((_) async => noDevicesResponse);

      await expectLater(
        userClient.deregisterTokenForChannel('testChannelId', 'testToken'),
        throwsA(isA<KnockApiException>()),
      );
    });
  });

  group('UserClient paths', () {
    test('encode the user id and channel id', () async {
      final knock = TestKnock((request) async {
        return http.Response(
          jsonEncode({
            'data': {'devices': <dynamic>[]},
          }),
          200,
        );
      })..authenticate('team#1/alice?x');
      addTearDown(knock.dispose);

      await knock.user().getChannelData('channel/1');

      final url = knock.requests.single.url;
      expect(url.pathSegments, [
        'v1',
        'users',
        'team#1/alice?x',
        'channel_data',
        'channel/1',
      ]);
      expect(url.hasQuery, isFalse);
      expect(url.hasFragment, isFalse);
    });
  });
}

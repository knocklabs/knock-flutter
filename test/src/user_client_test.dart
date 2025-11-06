import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:mockito/mockito.dart';

import 'mocks.mocks.dart';

void main() {
  group('UserClient', () {
    final noDevicesResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(ChannelData.forDevices([]).toJson()),
    );

    final testDeviceResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(
        ChannelData.forDevices([
          const Device(token: 'testToken', locale: 'en-US', timezone: 'UTC'),
        ]).toJson(),
      ),
    );

    late MockApiClient apiClient;
    late MockKnock knock;
    late UserClient userClient;

    setUp(() {
      apiClient = MockApiClient();
      knock = MockKnock()..authenticate('testUser');

      when(knock.client()).thenReturn(apiClient);
      userClient = UserClient(knock);
    });

    group('appends devices', () {
      test('to a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => noDevicesResponse);
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noDevicesResponse);

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
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testDeviceResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');
        verifyNever(apiClient.doPut(any, body: anyNamed('body')));
      });

      test('handles when there is no channel data', () async {
        when(apiClient.doGet(any)).thenAnswer(
          (_) async => throw ApiError(
            const ApiResponse(status: 404, statusCode: StatusCode.error),
          ),
        );
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noDevicesResponse);

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
          (_) async => throw ApiError(
            const ApiResponse(status: 405, statusCode: StatusCode.error),
          ),
        );
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noDevicesResponse);

        await expectLater(
          userClient.registerDeviceForChannel(
            'testChannelId',
            'testToken',
          ),
          throwsA(isA<ApiError>()),
        );
      });
    });

    group('removes devices', () {
      test('from a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testDeviceResponse);
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noDevicesResponse);

        await userClient.deregisterDeviceForChannel(
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
      when(apiClient.doPut(any, body: anyNamed('body')))
          .thenAnswer((_) async => testDeviceResponse);

      await userClient.deregisterDeviceForChannel('testChannelId', 'nope');
      verifyNever(apiClient.doPut(any, body: anyNamed('body')));
    });

    test('handles when there is no channel data', () async {
      when(apiClient.doGet(any)).thenAnswer(
        (_) async => throw ApiError(
          const ApiResponse(status: 404, statusCode: StatusCode.error),
        ),
      );
      // We don't actually care what the response is for this test
      when(apiClient.doPut(any, body: anyNamed('body')))
          .thenAnswer((_) async => noDevicesResponse);

      await userClient.deregisterDeviceForChannel('testChannelId', 'nope');
      verifyNever(apiClient.doPut(any, body: anyNamed('body')));
    });

    test('only rethrows other errors when registering tokens', () async {
      when(apiClient.doGet(any)).thenAnswer(
        (_) async => throw ApiError(
          const ApiResponse(status: 405, statusCode: StatusCode.error),
        ),
      );
      // We don't actually care what the response is for this test
      when(apiClient.doPut(any, body: anyNamed('body')))
          .thenAnswer((_) async => noDevicesResponse);

      await expectLater(
        userClient.deregisterDeviceForChannel(
          'testChannelId',
          'testToken',
        ),
        throwsA(isA<ApiError>()),
      );
    });
  });
}

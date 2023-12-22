import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:mockito/mockito.dart';

import 'mocks.mocks.dart';

void main() {
  group('UserClient', () {
    final noTokensResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(ChannelData.forTokens([]).toJson()),
    );

    final testTokenResponse = ApiResponse(
      status: 200,
      statusCode: StatusCode.ok,
      body: jsonEncode(ChannelData.forTokens(['testToken']).toJson()),
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

    group('appends tokens', () {
      test('to a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => noTokensResponse);
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noTokensResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');

        final expectedPut = ChannelData.forTokens(['testToken']);
        verify(apiClient.doPut(any, body: jsonEncode(expectedPut.toJson())));
      });

      test('skips appending existing tokens', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testTokenResponse);
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => testTokenResponse);

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
            .thenAnswer((_) async => noTokensResponse);

        await userClient.registerTokenForChannel('testChannelId', 'testToken');

        final expectedPut = ChannelData.forTokens(['testToken']);
        verify(apiClient.doPut(any, body: jsonEncode(expectedPut.toJson())));
      });

      test('only rethrows other errors when registering tokens', () async {
        when(apiClient.doGet(any)).thenAnswer(
          (_) async => throw ApiError(
            const ApiResponse(status: 405, statusCode: StatusCode.error),
          ),
        );
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noTokensResponse);

        await expectLater(
          userClient.registerTokenForChannel(
            'testChannelId',
            'testToken',
          ),
          throwsA(isA<ApiError>()),
        );
      });
    });

    group('removes tokens', () {
      test('from a channel', () async {
        when(apiClient.doGet(any)).thenAnswer((_) async => testTokenResponse);
        // We don't actually care what the response is for this test
        when(apiClient.doPut(any, body: anyNamed('body')))
            .thenAnswer((_) async => noTokensResponse);

        await userClient.deregisterTokenForChannel(
          'testChannelId',
          'testToken',
        );

        final expectedPut = ChannelData.forTokens([]);
        verify(apiClient.doPut(any, body: jsonEncode(expectedPut.toJson())));
      });
    });

    test('skips removing non-existant tokens', () async {
      when(apiClient.doGet(any)).thenAnswer((_) async => testTokenResponse);
      // We don't actually care what the response is for this test
      when(apiClient.doPut(any, body: anyNamed('body')))
          .thenAnswer((_) async => testTokenResponse);

      await userClient.deregisterTokenForChannel('testChannelId', 'nope');
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
          .thenAnswer((_) async => noTokensResponse);

      await userClient.deregisterTokenForChannel('testChannelId', 'nope');
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
          .thenAnswer((_) async => noTokensResponse);

      await expectLater(
        userClient.deregisterTokenForChannel(
          'testChannelId',
          'testToken',
        ),
        throwsA(isA<ApiError>()),
      );
    });
  });
}

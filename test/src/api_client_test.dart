import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/util/retry.dart';

void main() {
  group('ApiClient', () {
    late Knock knock;
    late Response Function() responseBuilder;
    late ApiClient client;
    Request? capturedRequest;

    setUp(() {
      knock = Knock('public_api_key');
      responseBuilder = () => Response('', 200);
      final mockClient = MockClient((request) async {
        capturedRequest = request;
        return responseBuilder();
      });
      client = ApiClient(knock, client: mockClient);
    });

    tearDown(() {
      capturedRequest = null;
      client.dispose();
    });

    test('correctly returns an ApiResponse when an exception occurs', () async {
      final error = Error();
      responseBuilder = () => throw error;

      final response = await client.doGet('/');
      expect(
        response,
        ApiResponse(status: 500, statusCode: StatusCode.error, error: error),
      );
    });

    test('correctly sets headers before user authentication', () async {
      await client.doPut('/');

      final headers = capturedRequest?.headers ?? {};
      expect(headers['Accept'], 'application/json');
      expect(headers['Content-Type'], 'application/json');
      expect(headers['Authorization'], 'Bearer public_api_key');
      expect(headers['X-Knock-User-Token'], null);
    });

    test('correctly sets headers without enhanced security mode', () async {
      knock.authenticate('1');
      await client.doPost('/');

      final headers = capturedRequest?.headers ?? {};
      expect(headers['Accept'], 'application/json');
      expect(headers['Content-Type'], 'application/json');
      expect(headers['Authorization'], 'Bearer public_api_key');
      expect(headers['X-Knock-User-Token'], null);
    });

    test('correctly sets headers with enhanced security mode', () async {
      knock.authenticate('1', 'test_jwt_token');
      await client.doGet('/');

      final headers = capturedRequest?.headers ?? {};
      expect(headers['Accept'], 'application/json');
      expect(headers['Content-Type'], 'application/json');
      expect(headers['Authorization'], 'Bearer public_api_key');
      expect(headers['X-Knock-User-Token'], 'test_jwt_token');
    });
  });

  group('ApiClient retries', () {
    late Knock knock;
    late Response Function() responseBuilder;
    late ApiClient client;

    setUp(() {
      knock = Knock('public_api_key');
      responseBuilder = () => Response('', 200);
      final mockClient = MockClient((request) async {
        return responseBuilder();
      });
      client = ApiClient(
        knock,
        client: buildRetryClient(
          mockClient,
          delayMs: 0,
        ),
      );
    });

    tearDown(() {
      client.dispose();
    });

    test('correctly stops retrying after three retries', () async {
      // One failure, three retries, and then a successful call
      final error = Error();
      final responses = <dynamic>[error, error, error, error, ''];
      responseBuilder = () {
        final response = responses.removeAt(0);
        if (response is Error) {
          throw response;
        } else {
          return Response(response, 200);
        }
      };

      final response = await client.doGet('/');
      expect(
        response,
        ApiResponse(
          status: 500,
          statusCode: StatusCode.error,
          error: error,
        ),
      );
    });

    test('correctly retries a failure and then gets a successful response',
        () async {
      final error = Error();
      final responses = <dynamic>[error, ''];
      responseBuilder = () {
        final response = responses.removeAt(0);
        if (response is Error) {
          throw response;
        } else {
          return Response(response, 200);
        }
      };

      final response = await client.doGet('/');
      expect(
        response,
        const ApiResponse(
          status: 200,
          statusCode: StatusCode.ok,
          body: '',
          error: null,
        ),
      );
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:http/testing.dart';

import 'package:knock_flutter/src/api_client.dart';
import 'package:knock_flutter/src/model/api_response.dart';

void main() {
  group('ApiClient', () {
    late Knock knock;
    late Response Function() responseBuilder;
    late ApiClient client;
    Request? capturedRequest;

    setUp(() {
      knock = Knock('public_api_key');
      responseBuilder = () => Response("", 200);
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
      expect(response, ApiResponse(status: 500, statusCode: StatusCode.error, error: error));
    });

    test('correctly sets headers before user authentication', () async {
      await client.doGet('/');

      final headers = capturedRequest?.headers ?? {};
      expect(headers['Accept'], 'application/json');
      expect(headers['Content-Type'], 'application/json');
      expect(headers['Authorization'], 'Bearer public_api_key');
      expect(headers['X-Knock-User-Token'], null);
    });

    test('correctly sets headers without enhanced security mode', () async {
      knock.authenticate('1');
      await client.doGet('/');

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
}

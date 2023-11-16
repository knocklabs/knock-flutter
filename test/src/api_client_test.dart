import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:http/testing.dart';

import 'package:knock_flutter/src/api_client.dart';

void main() {
  group('ApiClient', () {
    late Knock knock;
    late ApiClient client;
    Request? capturedRequest;

    setUp(() {
      knock = Knock('public_api_key');
      final mockClient = MockClient((request) async {
        capturedRequest = request;
        return Response("", 200);
      });
      client = ApiClient(knock, client: mockClient);
    });

    tearDown(() {
      capturedRequest = null;
      client.dispose();
    });

    test('correctly sets headers before user authentication', () async {
      final uri = client.path('/users/1/preferences');
      await client.get(uri);

      expect(capturedRequest?.headers['Accept'], 'application/json');
      expect(capturedRequest?.headers['Content-Type'], 'application/json');
      expect(capturedRequest?.headers['Authorization'], 'Bearer public_api_key');
      expect(capturedRequest?.headers['X-Knock-User-Token'], null);
    });

    test('correctly sets headers without enhanced security mode', () async {
      knock.authenticate('1');

      final uri = client.path('/users/1/preferences');
      await client.get(uri);

      expect(capturedRequest?.headers['Accept'], 'application/json');
      expect(capturedRequest?.headers['Content-Type'], 'application/json');
      expect(capturedRequest?.headers['Authorization'], 'Bearer public_api_key');
      expect(capturedRequest?.headers['X-Knock-User-Token'], null);
    });

    test('correctly sets headers with enhanced security mode', () async {
      knock.authenticate('1', 'test_jwt_token');

      final uri = client.path('/users/1/preferences');
      await client.get(uri);

      expect(capturedRequest?.headers['Accept'], 'application/json');
      expect(capturedRequest?.headers['Content-Type'], 'application/json');
      expect(capturedRequest?.headers['Authorization'], 'Bearer public_api_key');
      expect(capturedRequest?.headers['X-Knock-User-Token'], 'test_jwt_token');
    });
  });
}

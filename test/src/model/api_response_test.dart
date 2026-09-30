import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/src/model/api_response.dart';

void main() {
  group('KnockApiResponse.decodeResponse', () {
    test('decodes a JSON body', () {
      const response = KnockApiResponse(
        status: 200,
        statusCode: StatusCode.ok,
        body: '{"id": "1"}',
      );

      expect(response.decodeResponse(), {'id': '1'});
    });

    test('throws KnockApiException for an empty body', () {
      const response = KnockApiResponse(
        status: 204,
        statusCode: StatusCode.ok,
        body: '',
      );

      expect(response.decodeResponse, throwsA(isA<KnockApiException>()));
    });

    test('throws KnockApiException for an error response', () {
      const response = KnockApiResponse(
        status: 404,
        statusCode: StatusCode.error,
        body: '{"code": "not_found"}',
      );

      expect(response.decodeResponse, throwsA(isA<KnockApiException>()));
    });
  });
}

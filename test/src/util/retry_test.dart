import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:knock_flutter/src/util/retry.dart';

void main() {
  test('exponentialBackoff returns correct duration', () {
    expect(
      [
        exponentialBackoff(0, 200),
        exponentialBackoff(1, 200),
        exponentialBackoff(2, 200),
        exponentialBackoff(3, 200),
      ],
      const [
        Duration(milliseconds: 200),
        Duration(milliseconds: 400),
        Duration(milliseconds: 800),
        Duration(seconds: 1, milliseconds: 600),
      ],
    );
  });

  test('will retry for server errors', () {
    expect(isRetryable(Response('', 500)), true);
    expect(isRetryable(Response('', 599)), true);
  });

  test('will retry for rate limits errors', () {
    expect(isRetryable(Response('', 429)), true);
  });

  test('will not retry for client errors', () {
    expect(isRetryable(Response('', 400)), false);
  });

  test('will not retry ok responses', () {
    expect(isRetryable(Response('', 200)), false);
  });
}

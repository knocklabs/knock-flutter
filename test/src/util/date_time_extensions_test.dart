import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/src/util/date_time_extension.dart';

void main() {
  test('DateTimeExtension formats timestamps to ISO 8601', () {
    // Intentionally creating a timestamp with non-UTC time
    final timestamp = DateTime.parse('2023-11-29T14:30:45.100-05:00');
    final formatted = timestamp.apiFormatted();
    expect(formatted, '2023-11-29T19:30:45.100Z');
  });
}

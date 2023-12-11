import 'dart:math';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

Duration exponentialBackoff(int retryCount, int delayMs) {
  final factor = pow(2, retryCount).toInt();
  final ms = factor * delayMs;
  return Duration(milliseconds: ms);
}

bool isRetryable(http.BaseResponse response) {
  if (response.statusCode >= 500 && response.statusCode <= 599) {
    // Server errors
    return true;
  } else if (response.statusCode == 429) {
    // Rate limited
    return true;
  } else {
    return false;
  }
}

RetryClient buildRetryClient(http.Client client, {int delayMs = 200}) {
  return RetryClient(
    client,
    delay: (retryCount) => exponentialBackoff(retryCount, delayMs),
    when: isRetryable,
    whenError: (_, __) => true,
  );
}

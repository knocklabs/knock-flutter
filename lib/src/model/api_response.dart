import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

enum StatusCode { ok, error }

@freezed
class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    required int status,
    required StatusCode statusCode,
    String? body,
    Object? error,
  }) = _ApiResponse;

  const ApiResponse._();

  dynamic decodeResponse() {
    checkResponse();
    return jsonDecode(body!);
  }

  void checkResponse() {
    if (statusCode == StatusCode.error) {
      throw KnockApiException(this);
    }
  }

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'ApiResponse(status: $status, statusCode: $statusCode, body: $body, error: $error)';
  }
}

class KnockApiException implements Exception {
  KnockApiException(this.response);

  final ApiResponse response;

  @override
  String toString() {
    return 'KnockApiException: statusCode: ${response.statusCode}, status: ${response.status}, body: ${response.body}, error: ${response.error}';
  }
}

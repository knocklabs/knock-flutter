import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

enum StatusCode { ok, error }

@freezed
abstract class KnockApiResponse with _$KnockApiResponse {
  const factory KnockApiResponse({
    required int status,
    required StatusCode statusCode,
    String? body,
    Object? error,
  }) = _KnockApiResponse;

  const KnockApiResponse._();

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
    return 'KnockApiResponse(status: $status, statusCode: $statusCode, body: $body, error: $error)';
  }
}

class KnockApiException implements Exception {
  KnockApiException(this.response);

  final KnockApiResponse response;

  @override
  String toString() {
    return 'KnockApiException: response: $response';
  }
}

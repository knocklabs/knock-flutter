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
    if (statusCode == StatusCode.error) {
      throw Exception(this);
    } else {
      return jsonDecode(body!);
    }
  }
}

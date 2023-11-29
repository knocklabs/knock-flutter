import 'package:equatable/equatable.dart';

enum StatusCode { ok, error }

class ApiResponse extends Equatable {
  final int status;
  final StatusCode statusCode;
  final String? body;
  final Object? error;

  const ApiResponse({
    required this.status,
    required this.statusCode,
    this.body,
    this.error,
  });

  @override
  List<Object?> get props => [status, statusCode, body, error];

  @override
  String toString() {
    return 'ApiResponse{status=$status, statusCode=$statusCode, body=$body, error=$error}';
  }
}

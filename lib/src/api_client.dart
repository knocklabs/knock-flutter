import 'dart:developer' as developer;

import 'package:http/http.dart' as http;

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

typedef ApiRequestBuilder = Future<http.Response> Function();

class ApiClient extends http.BaseClient {
  final Knock knock;
  final http.Client _client;

  PhoenixSocket? _socket;

  ApiClient(
    this.knock, {
    http.Client? client,
  }) : _client = client ?? http.Client();

  String get _host => knock.host;

  String get _wsHost => '${_host.replaceFirst('http', 'ws')}/ws/v1/websocket';

  PhoenixSocket get socket => _socket ?? _buildSocket();

  PhoenixSocket _buildSocket() {
    final params = {
      'api_key': knock.apiKey,
    };

    final userToken = knock.userToken;
    if (userToken != null) {
      params['user_token'] = userToken;
    }

    return PhoenixSocket(
      _wsHost,
      socketOptions: PhoenixSocketOptions(params: params),
    )..connect();
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    request.headers['Content-Type'] = 'application/json';
    request.headers['Authorization'] = 'Bearer ${knock.apiKey}';

    final userToken = knock.userToken;
    if (userToken != null) {
      request.headers['X-Knock-User-Token'] = userToken;
    }

    return _client.send(request);
  }

  Future<ApiResponse> doGet(String path) async {
    return _doRequest(() => get(_usingPath(path)));
  }

  Future<ApiResponse> doPut(String path, {Object? body}) async {
    return _doRequest(() => put(_usingPath(path), body: body));
  }

  Future<ApiResponse> doPost(String path, {Object? body}) async {
    return _doRequest(() => post(_usingPath(path), body: body));
  }

  Future<ApiResponse> _doRequest(ApiRequestBuilder requestBuilder) async {
    try {
      final response = await requestBuilder();
      final status = response.statusCode;
      final statusCode = status < 300 ? StatusCode.ok : StatusCode.error;
      final body = response.body;
      return ApiResponse(status: status, statusCode: statusCode, body: body);
    } catch (error) {
      developer.log('Failed API request', error: error);

      return ApiResponse(
        status: 500,
        statusCode: StatusCode.error,
        error: error,
      );
    }
  }

  Uri _usingPath(String path) => Uri.parse('$_host$path');

  void dispose() {
    _client.close();
    _socket?.close();
  }
}

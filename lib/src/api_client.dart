import 'dart:async';
import 'dart:convert';
import 'dart:developer' as developer;

import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/socket_gateway.dart';
import 'package:knock_flutter/src/util/retry.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

enum KnockApiClientStatus { disposed }

class KnockApiClient extends http.BaseClient {
  KnockApiClient(
    Knock knock, {
    http.Client? client,
  }) : this._(knock, client ?? http.Client(), retry: client == null);

  KnockApiClient._(
    this.knock,
    http.Client inner, {
    required bool retry,
  }) : _rawClient = inner,
       _client = retry ? buildRetryClient(inner) : inner;

  final Knock knock;
  final http.Client _client;

  /// Same transport as [_client] but without retries; used for the socket
  /// gateway fetch, where the socket's reconnect backoff is the retry.
  final http.Client _rawClient;

  PhoenixSocket? _socket;

  late final _socketGatewayCache = SocketGatewayConnectionCache(
    fetch: _fetchSocketGatewayConnection,
  );

  bool _disposed = false;
  // Synchronous so that anything bound to this client (e.g. FeedClient) sees
  // the disposal before dispose() returns.
  final _status = StreamController<KnockApiClientStatus>.broadcast(sync: true);

  String get _host => knock.host;

  String get _wsHost => '${_host.replaceFirst('http', 'ws')}/ws/v1/websocket';

  Stream<KnockApiClientStatus> get status => _status.stream;

  PhoenixSocket get socket => _socket ??= _buildSocket();

  PhoenixSocket _buildSocket() {
    _assertNotDisposed();

    late final PhoenixSocket socket;
    socket = PhoenixSocket(
      _wsHost,
      // Read on every (re)connect so a refreshed user token is picked up.
      socketOptions: PhoenixSocketOptions(dynamicParams: _socketParams),
      webSocketChannelFactory: (uri) => connectViaSocketGateway(
        uri,
        cache: _socketGatewayCache,
        onUnsupportedMode: () => _abandonSocket(socket),
      ),
    );
    unawaited(socket.connect());
    return socket;
  }

  /// Stops reconnecting after the gateway returned a mode this SDK can't use.
  /// The next [socket] access builds a fresh one.
  void _abandonSocket(PhoenixSocket socket) {
    developer.log(
      'Unsupported socket gateway mode; realtime updates are disabled',
    );
    socket.dispose();
    if (identical(_socket, socket)) {
      _socket = null;
    }
  }

  Future<SocketGatewayConnection> _fetchSocketGatewayConnection() async {
    _assertNotDisposed();

    final request = http.Request('POST', _buildUri('/v1/sockets/connect', null))
      ..body = '{}';
    _applyHeaders(request);
    final response = await http.Response.fromStream(
      await _rawClient.send(request),
    );
    if (response.statusCode >= 300) {
      throw http.ClientException(
        'Socket gateway request failed with status ${response.statusCode}',
        request.url,
      );
    }

    final json = jsonDecode(response.body) as Map<String, dynamic>;
    final connection = SocketGatewayConnection.fromJson(json);
    if (connection.mode != supportedSocketMode) {
      throw UnsupportedSocketModeException(connection.mode);
    }
    return connection;
  }

  Future<Map<String, String>> _socketParams() async {
    return {
      'api_key': knock.apiKey,
      'user_token': ?knock.userToken,
    };
  }

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    _assertNotDisposed();
    _applyHeaders(request);
    return _client.send(request);
  }

  void _applyHeaders(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    request.headers['Content-Type'] = 'application/json';
    request.headers['Authorization'] = 'Bearer ${knock.apiKey}';

    final userToken = knock.userToken;
    if (userToken != null) {
      request.headers['X-Knock-User-Token'] = userToken;
    }
  }

  Future<KnockApiResponse> doGet(
    String path, {
    Map<String, dynamic>? queryParams,
  }) {
    return _doRequest(() => get(_buildUri(path, queryParams)));
  }

  Future<KnockApiResponse> doPut(
    String path, {
    Map<String, dynamic>? queryParams,
    Object? body,
  }) {
    return _doRequest(() => put(_buildUri(path, queryParams), body: body));
  }

  Future<KnockApiResponse> doPost(
    String path, {
    Map<String, dynamic>? queryParams,
    Object? body,
  }) {
    return _doRequest(() => post(_buildUri(path, queryParams), body: body));
  }

  Future<KnockApiResponse> doDelete(
    String path, {
    Map<String, dynamic>? queryParams,
  }) {
    return _doRequest(() => delete(_buildUri(path, queryParams)));
  }

  Future<KnockApiResponse> _doRequest(
    Future<http.Response> Function() requestBuilder,
  ) async {
    try {
      final response = await requestBuilder();
      final status = response.statusCode;
      final statusCode = status < 300 ? StatusCode.ok : StatusCode.error;
      final body = response.body;
      return KnockApiResponse(
        status: status,
        statusCode: statusCode,
        body: body,
      );
    } on Object catch (error) {
      developer.log('Failed API request', error: error);

      return KnockApiResponse(
        status: 500,
        statusCode: StatusCode.error,
        error: error,
      );
    }
  }

  Uri _buildUri(String path, Map<String, dynamic>? queryParams) {
    final uri = Uri.parse('$_host$path');
    final cleanParams = Map<String, dynamic>.from(queryParams ?? {}).map(
      (key, value) => MapEntry(key, value?.toString()),
    )..removeWhere((key, value) => value == null);

    return Uri(
      scheme: uri.scheme,
      userInfo: uri.userInfo,
      host: uri.host,
      port: uri.port == 0 ? null : uri.port,
      pathSegments: uri.pathSegments,
      queryParameters: cleanParams.isEmpty ? null : cleanParams,
      fragment: uri.hasFragment ? uri.fragment : null,
    );
  }

  void dispose() {
    if (_disposed) return;
    _disposed = true;
    _status.add(KnockApiClientStatus.disposed);

    _client.close();

    if (_socket != null) {
      if (_socket!.isConnected) {
        _socket!.close();
      }
      _socket!.dispose();
      _socket = null;
    }

    unawaited(_status.close());
  }

  void _assertNotDisposed() {
    if (_disposed) {
      throw StateError('''
        [Knock] This APIClient has been disposed. Please create a new client.
      ''');
    }
  }
}

import 'dart:async';

import 'package:web_socket/web_socket.dart';
import 'package:web_socket_channel/adapter_web_socket_channel.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

const supportedSocketMode = 'websocket';

/// Connections are treated as expired this long before `expires_at`.
const _expiryPadding = Duration(seconds: 5);

/// Shorter than `phoenix_socket`'s 10s connect timeout, which also covers the
/// WebSocket handshake, so a hung fetch fails the attempt instead of being
/// shared with the next one.
const _defaultFetchTimeout = Duration(seconds: 8);

/// The response of `POST /v1/sockets/connect`.
class SocketGatewayConnection {
  const SocketGatewayConnection({
    required this.mode,
    required this.url,
    required this.expiresAt,
  });

  factory SocketGatewayConnection.fromJson(Map<String, dynamic> json) {
    final url = json['url'];
    if (url is! String || url.isEmpty) {
      throw const FormatException('Socket gateway response is missing "url"');
    }
    final expiresAtRaw = json['expires_at'];
    final expiresAt = expiresAtRaw is String
        ? DateTime.tryParse(expiresAtRaw)
        : null;
    if (expiresAt == null) {
      throw const FormatException(
        'Socket gateway response has a missing or invalid "expires_at"',
      );
    }
    return SocketGatewayConnection(
      mode: json['mode'] as String? ?? '',
      url: url,
      expiresAt: expiresAt,
    );
  }

  final String mode;
  final String url;
  final DateTime expiresAt;
}

class UnsupportedSocketModeException implements Exception {
  const UnsupportedSocketModeException(this.mode);

  final String mode;

  @override
  String toString() => 'UnsupportedSocketModeException: mode "$mode"';
}

/// Caches the gateway connection until shortly before it expires.
class SocketGatewayConnectionCache {
  SocketGatewayConnectionCache({
    required Future<SocketGatewayConnection> Function() fetch,
    DateTime Function() now = DateTime.now,
    Duration fetchTimeout = _defaultFetchTimeout,
  }) : _fetch = fetch,
       _now = now,
       _fetchTimeout = fetchTimeout;

  final Future<SocketGatewayConnection> Function() _fetch;
  final DateTime Function() _now;
  final Duration _fetchTimeout;

  SocketGatewayConnection? _cached;
  Future<SocketGatewayConnection>? _inFlight;

  Future<SocketGatewayConnection> get() {
    final cached = _cached;
    if (cached != null &&
        cached.expiresAt.subtract(_expiryPadding).isAfter(_now())) {
      return Future.value(cached);
    }
    return _inFlight ??= _load();
  }

  Future<SocketGatewayConnection> _load() async {
    try {
      final connection = await _fetch().timeout(_fetchTimeout);
      _cached = connection;
      return connection;
    } finally {
      _inFlight = null;
    }
  }

  void invalidate() {
    _cached = null;
  }
}

/// Returns a channel that connects to the gateway URL instead of [originalUri].
///
/// The channel is returned synchronously; the gateway fetch and connect happen
/// inside its future, so failures surface as channel errors and
/// `phoenix_socket` retries with its normal backoff.
WebSocketChannel connectViaSocketGateway(
  Uri originalUri, {
  required SocketGatewayConnectionCache cache,
  required void Function() onUnsupportedMode,
  Future<WebSocket> Function(Uri url) connect = WebSocket.connect,
}) {
  Future<WebSocket> open() async {
    try {
      final connection = await cache.get();
      final gatewayUri = Uri.parse(connection.url);
      final merged = gatewayUri.replace(
        queryParameters: {
          ...originalUri.queryParameters,
          ...gatewayUri.queryParameters,
        },
      );
      return await connect(merged);
    } on Object catch (error) {
      cache.invalidate();
      if (error is UnsupportedSocketModeException) {
        onUnsupportedMode();
      }
      rethrow;
    }
  }

  return AdapterWebSocketChannel(open());
}

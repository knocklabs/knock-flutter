import 'dart:async';
import 'dart:convert';
import 'dart:io';

/// Minimal in-process Phoenix (v2 JSON serializer) websocket server.
///
/// Every client push (heartbeat, join, leave) receives an `ok` reply, which is
/// enough for `phoenix_socket` to open the socket and join channels.
class FakePhoenixServer {
  late HttpServer _server;
  final _sockets = <WebSocket>[];

  /// Every message received from clients:
  /// `[joinRef, ref, topic, event, payload]`.
  final received = <List<dynamic>>[];

  int connections = 0;

  int get port => _server.port;

  String get host => 'http://127.0.0.1:$port';

  List<List<dynamic>> events(String event) =>
      received.where((message) => message[3] == event).toList();

  Future<void> start() async {
    _server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    _server.listen((request) async {
      if (!WebSocketTransformer.isUpgradeRequest(request)) {
        request.response.statusCode = HttpStatus.notFound;
        await request.response.close();
        return;
      }
      final socket = await WebSocketTransformer.upgrade(request);
      connections++;
      _sockets.add(socket);
      socket.listen((data) {
        final message = jsonDecode(data as String) as List<dynamic>;
        received.add(message);
        _send(socket, [
          message[0],
          message[1],
          message[2],
          'phx_reply',
          {'status': 'ok', 'response': <String, dynamic>{}},
        ]);
      });
    });
  }

  void broadcast(String topic, String event, Map<String, dynamic> payload) {
    for (final socket in _sockets) {
      _send(socket, [null, null, topic, event, payload]);
    }
  }

  void _send(WebSocket socket, List<dynamic> message) {
    if (socket.readyState != WebSocket.open) return;
    try {
      socket.add(jsonEncode(message));
      // The client can close its side between the check above and the add;
      // WebSocket reports that as a StateError.
      // ignore: avoid_catching_errors
    } on StateError catch (_) {}
  }

  Future<void> dropConnections() async {
    for (final socket in _sockets) {
      await socket.close();
    }
  }

  Future<void> stop() async {
    await dropConnections();
    await _server.close(force: true);
  }
}

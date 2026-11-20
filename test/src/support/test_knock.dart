import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:knock_flutter/knock_flutter.dart';

typedef RequestHandler = Future<http.Response> Function(http.Request request);

/// A [Knock] whose API client sends HTTP requests to [handler] instead of the
/// network. The websocket still connects to [host].
class TestKnock extends Knock {
  TestKnock(
    this.handler, {
    String host = 'http://127.0.0.1:1',
    this.gatewayHandler,
  }) : super('pk_test', options: KnockOptions(host: host));

  final RequestHandler handler;

  /// Overrides the default `POST /v1/sockets/connect` answer.
  RequestHandler? gatewayHandler;
  final requests = <http.Request>[];
  final createdClients = <KnockApiClient>[];

  KnockApiClient? _client;

  @override
  KnockApiClient client() {
    if (!isAuthenticated()) {
      throw StateError('[Knock] not authenticated');
    }
    return _client ??= _createClient();
  }

  KnockApiClient _createClient() {
    final client = KnockApiClient(
      this,
      client: MockClient((request) {
        requests.add(request);
        if (request.url.path == '/v1/sockets/connect') {
          return (gatewayHandler ?? _defaultGateway)(request);
        }
        return handler(request);
      }),
    );
    createdClients.add(client);
    return client;
  }

  Future<http.Response> _defaultGateway(http.Request request) async {
    final wsHost = host.replaceFirst('http', 'ws');
    return http.Response(
      jsonEncode({
        'mode': 'websocket',
        'url': '$wsHost/gateway/websocket?auth_token=test',
        'expires_at': '2999-01-01T00:00:00Z',
      }),
      200,
    );
  }

  @override
  void dispose() {
    _client?.dispose();
    _client = null;
  }

  List<http.Request> requestsWhere(String method) =>
      requests.where((request) => request.method == method).toList();
}

Map<String, dynamic> feedItemJson(
  String id, {
  List<Map<String, dynamic>>? blocks,
  String insertedAt = '2024-01-01T00:00:00Z',
}) {
  return {
    '__cursor': 'cursor_$id',
    'id': id,
    'activities': <dynamic>[],
    'actors': <dynamic>[],
    'blocks': blocks ?? <dynamic>[],
    'inserted_at': insertedAt,
    'updated_at': insertedAt,
    'seen_at': null,
    'read_at': null,
    'archived_at': null,
    'interacted_at': null,
    'total_activities': 1,
    'total_actors': 1,
    'data': null,
    'source': {'key': 'workflow', 'version_id': 'version'},
    'tenant': null,
  };
}

String feedResponseJson(
  List<Map<String, dynamic>> items, {
  String? after,
}) {
  return jsonEncode({
    'entries': items,
    'page_info': {'after': after, 'before': null, 'page_size': 50},
    'meta': {
      'total_count': items.length,
      'unread_count': items.length,
      'unseen_count': items.length,
    },
  });
}

Future<void> pump([int milliseconds = 50]) =>
    Future<void>.delayed(Duration(milliseconds: milliseconds));

import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';

class ApiClient extends http.BaseClient {
  final Knock knock;
  final http.Client _client;

  ApiClient(
    this.knock, {
    http.Client? client,
  }) : _client = client ?? http.Client();

  Uri path(String path) => Uri.parse('${knock.host}/$path');

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

  void dispose() {
    _client.close();
  }
}

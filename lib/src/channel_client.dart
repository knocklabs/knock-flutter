import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';

class ChannelClient {
  final Knock _knock;

  ChannelClient(this._knock);

  ApiClient get _api => _knock.client();

  Future<ChannelData> get(String channelId) async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/channel_data/$channelId',
    );
    final json = response.decodeResponse();
    return ChannelData.fromJson(json);
  }

  Future<ChannelData> set(String channelId, ChannelData channelData) async {
    final body = jsonEncode(channelData.toJson());
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}/channel_data/$channelId',
      body: body,
    );
    final json = response.decodeResponse();
    return ChannelData.fromJson(json);
  }
}

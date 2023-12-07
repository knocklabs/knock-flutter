import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/util/arguments.dart';

class UserClient {
  final Knock _knock;

  UserClient(this._knock);

  ApiClient get _api => _knock.client();

  Future<User> get() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}',
    );
    final json = response.decodeResponse();
    return User.fromJson(json);
  }

  Future<User> identify({
    String? email = knockDefaultString,
    String? name = knockDefaultString,
    String? phoneNumber = knockDefaultString,
    String? avatar = knockDefaultString,
    String? locale = knockDefaultString,
    Map<String, dynamic>? properties,
  }) async {
    final Map<String, dynamic> requestBody = Map.from(properties ?? {});
    if (!email.isDefaultValue) {
      requestBody['email'] = email;
    }

    if (!name.isDefaultValue) {
      requestBody['name'] = name;
    }

    if (!phoneNumber.isDefaultValue) {
      requestBody['phone_number'] = phoneNumber;
    }

    if (!avatar.isDefaultValue) {
      requestBody['avatar'] = avatar;
    }

    if (!locale.isDefaultValue) {
      requestBody['locale'] = locale;
    }

    final body = jsonEncode(requestBody);
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}',
      body: body,
    );
    final json = response.decodeResponse();
    return User.fromJson(json);
  }

  Future<ChannelData> getChannelData(String channelId) async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/channel_data/$channelId',
    );
    final json = response.decodeResponse();
    return ChannelData.fromJson(json);
  }

  Future<ChannelData> setChannelData(String channelId, ChannelData channelData) async {
    final body = jsonEncode(channelData.toJson());
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}/channel_data/$channelId',
      body: body,
    );
    final json = response.decodeResponse();
    return ChannelData.fromJson(json);
  }
}

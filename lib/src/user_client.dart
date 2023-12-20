import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/util/arguments.dart';

class UserClient {
  UserClient(this._knock);

  final Knock _knock;

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
    final requestBody = Map<String, dynamic>.from(properties ?? {});
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

  Future<ChannelData> setChannelData(
    String channelId,
    ChannelData channelData,
  ) async {
    final body = jsonEncode(channelData.toJson());
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}/channel_data/$channelId',
      body: body,
    );
    final json = response.decodeResponse();
    return ChannelData.fromJson(json);
  }

  Future<ChannelData> registerTokenForChannel(
    String channelId,
    String token,
  ) async {
    var channelData = ChannelData.forTokens([]);
    try {
      channelData = await getChannelData(channelId);
    } catch (error) {
      if (error is ApiError) {
        final apiError = error;
        if (apiError.response.status == 404) {
          // First time adding to this channel (channels are lazily created)
        } else {
          rethrow;
        }
      } else {
        rethrow;
      }
    }

    if (channelData.hasToken(token)) {
      return channelData;
    } else {
      final modifiedChannelData = channelData.appendToken(token);
      return setChannelData(channelId, modifiedChannelData);
    }
  }
}

extension _ChannelDataExtension on ChannelData {
  bool hasToken(String token) {
    final tokens = data.tokens;
    return tokens.contains(token);
  }

  ChannelData appendToken(String token) {
    final tokens = [...data.tokens, token];
    return copyWith(
      data: data.copyWith(tokens: tokens),
    );
  }
}

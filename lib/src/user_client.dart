import 'dart:convert';
import 'dart:ui';

import 'package:flutter_timezone/flutter_timezone.dart';
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
    final locale = PlatformDispatcher.instance.locale.toLanguageTag();
    TimezoneInfo? timezone;
    try {
      timezone = await FlutterTimezone.getLocalTimezone();
    } catch (error) {
      // Continue without timezone if we can't get it
      timezone = null;
    }

    var channelData = ChannelData.forDevices([]);
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

    if (channelData.hasDevice(token)) {
      return channelData;
    } else {
      final device = Device(
        token: token,
        locale: locale,
        timezone: timezone?.identifier,
      );
      final modifiedChannelData = channelData.appendDevice(device);
      return setChannelData(channelId, modifiedChannelData);
    }
  }

  Future<ChannelData> deregisterTokenForChannel(
    String channelId,
    String token,
  ) async {
    var channelData = ChannelData.forDevices([]);
    try {
      channelData = await getChannelData(channelId);
    } catch (error) {
      if (error is ApiError) {
        final apiError = error;
        if (apiError.response.status == 404) {
          return channelData;
        } else {
          rethrow;
        }
      } else {
        rethrow;
      }
    }

    if (channelData.hasDevice(token)) {
      final modifiedChannelData = channelData.removeDevice(token);
      return setChannelData(channelId, modifiedChannelData);
    } else {
      return channelData;
    }
  }
}

extension _ChannelDataExtension on ChannelData {
  bool hasDevice(String token) {
    final devices = data.devices;
    return devices.any((device) => device.token == token);
  }

  ChannelData appendDevice(Device device) {
    final devices = [...data.devices, device];
    return copyWith(
      data: data.copyWith(devices: devices),
    );
  }

  ChannelData removeDevice(String token) {
    final devices =
        data.devices.where((device) => device.token != token).toList();
    return copyWith(
      data: data.copyWith(devices: devices),
    );
  }
}

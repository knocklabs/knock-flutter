import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  test('ChannelData deserializes correctly when devices are present', () {
    final json = jsonDecode('''
          {
            "data": {
              "devices": [
                {
                  "token": "test-token",
                  "locale": "en-US",
                  "timezone": "America/New_York"
                }
              ]
            }
          }
        ''');

    final channelData = ChannelData.fromJson(json);
    expect(
      channelData,
      ChannelData.forDevices([
        const Device(
          token: 'test-token',
          locale: 'en-US',
          timezone: 'America/New_York',
        ),
      ]),
    );
  });

  test('ChannelData serializes correctly when devices are present', () {
    final channelData = ChannelData.forDevices([
      const Device(
        token: 'test-token',
        locale: 'en-US',
        timezone: 'America/New_York',
      ),
    ]);
    final json = channelData.toJson();

    expect(
      json,
      {
        'data': {
          'devices': [
            {
              'token': 'test-token',
              'locale': 'en-US',
              'timezone': 'America/New_York',
            },
          ],
        },
      },
    );
  });

  test('ChannelData.forTokens creates devices from tokens', () {
    final channelData = ChannelData.forTokens(['test-token']);
    expect(channelData.data.devices.length, 1);
    expect(channelData.data.devices.first.token, 'test-token');
    expect(channelData.data.devices.first.locale, null);
    expect(channelData.data.devices.first.timezone, null);
  });
}

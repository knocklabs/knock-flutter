import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:knock_flutter/knock_flutter.dart';

import 'support/test_knock.dart';

void main() {
  group('PreferencesClient', () {
    late TestKnock knock;

    tearDown(() => knock.dispose());

    test('getAll decodes every preference set', () async {
      knock = TestKnock((request) async {
        return http.Response(
          jsonEncode([
            {
              'id': 'default',
              'channel_types': {'email': true},
              'workflows': null,
              'categories': null,
            },
            {
              'id': 'tenant-set',
              'channel_types': null,
              'workflows': null,
              'categories': null,
            },
          ]),
          200,
        );
      })..authenticate('user-1');

      final preferenceSets = await knock.preferences().getAll();

      expect(preferenceSets.map((set) => set.id), ['default', 'tenant-set']);
      expect(preferenceSets.first.channelTypes, {
        ChannelType.email: ChannelTypePreference(value: true),
      });
      expect(knock.requests.single.url.path, '/v1/users/user-1/preferences');
    });

    test('skips channel types the SDK does not know about', () async {
      knock = TestKnock((request) async {
        return http.Response(
          jsonEncode({
            'id': 'default',
            'channel_types': {'email': false, 'future_channel_type': true},
            'workflows': null,
            'categories': null,
          }),
          200,
        );
      })..authenticate('user-1');

      final preferenceSet = await knock.preferences().get();

      expect(preferenceSet.channelTypes, {
        ChannelType.email: ChannelTypePreference(value: false),
      });
    });

    test('encodes the user id and preference set id in the path', () async {
      knock = TestKnock((request) async {
        return http.Response(
          jsonEncode({
            'id': 'set/1',
            'channel_types': null,
            'workflows': null,
            'categories': null,
          }),
          200,
        );
      })..authenticate('team#1/alice?x');

      await knock
          .preferences(
            options: const PreferencesOptions(preferenceSetId: 'a/b'),
          )
          .get();

      final url = knock.requests.single.url;
      expect(url.pathSegments, [
        'v1',
        'users',
        'team#1/alice?x',
        'preferences',
        'a/b',
      ]);
      expect(url.hasQuery, isFalse);
      expect(url.hasFragment, isFalse);
    });
  });
}

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:knock_flutter/src/model/preferences.dart';

void main() {
  group('PreferenceSet deserializes', () {
    test('correctly when no preference are used', () async {
      final json = jsonDecode('''
          {
            "id": "default",
            "channel_types": null,
            "workflows": null,
            "categories": null
          }
        ''');

      final preferenceSet = PreferenceSet.fromJson(json);
      expect(preferenceSet.id, 'default');
      expect(preferenceSet.channelTypes, isNull);
      expect(preferenceSet.workflows, isNull);
      expect(preferenceSet.categories, isNull);
    });

    test('correctly when channel_types preference are used', () async {
      final json = jsonDecode('''
          {
            "id": "default",
            "channel_types": {
              "in_app_feed": true,
              "sms": true
            },
            "workflows": {
              "dinosaurs-loose": {
                "channel_types": {
                  "email": true
                }
              }
            },
            "categories": {
              "park-wide": {
                "channel_types": {
                  "sms": false
                }
              }
            }
          }
        ''');

      final preferenceSet = PreferenceSet.fromJson(json);
      expect(preferenceSet.id, 'default');
      expect(
          preferenceSet.channelTypes,
          equals({
            ChannelType.sms: true,
            ChannelType.inAppFeed: true,
          }));
      expect(
          preferenceSet.workflows,
          equals(
            {
              'dinosaurs-loose':
                  WorkflowPreferenceSetting.channelTypePreferences(
                const {ChannelType.email: true},
              )
            },
          ));
      expect(
          preferenceSet.categories,
          equals(
            {
              'park-wide': WorkflowPreferenceSetting.channelTypePreferences(
                const {ChannelType.sms: false},
              )
            },
          ));
    });

    test('correctly when boolean preferences are used', () async {
      final json = jsonDecode('''
          {
            "id": "default",
            "channel_types": {
              "in_app_feed": true,
              "sms": true
            },
            "workflows": {
              "dinosaurs-loose": true
            },
            "categories": {
              "park-wide": false
            }
          }
        ''');

      final preferenceSet = PreferenceSet.fromJson(json);
      expect(preferenceSet.id, 'default');
      expect(
          preferenceSet.channelTypes,
          equals({
            ChannelType.sms: true,
            ChannelType.inAppFeed: true,
          }));
      expect(
        preferenceSet.workflows,
        equals(
          {'dinosaurs-loose': WorkflowPreferenceSetting.workflow(true)},
        ),
      );
      expect(
        preferenceSet.categories,
        equals({'park-wide': WorkflowPreferenceSetting.workflow(false)}),
      );
    });
  });

  group('SetPreferencesProperties serializes', () {
    test('correctly when no properties are used', () async {
      expect(
        const SetPreferencesProperties(
          categories: null,
          workflows: null,
          channelTypes: null,
        ).toJson(),
        {
          'categories': null,
          'workflows': null,
          'channel_types': null,
        },
      );
    });

    test('correctly when boolean properties are used', () async {
      expect(
        SetPreferencesProperties(
          categories: {
            'park-wide': WorkflowPreferenceSetting.workflow(true),
          },
          workflows: {
            'dinosaurs-loose': WorkflowPreferenceSetting.workflow(false),
          },
          channelTypes: const {
            ChannelType.inAppFeed: true,
          },
        ).toJson(),
        {
          'categories': {
            'park-wide': true,
          },
          'workflows': {
            'dinosaurs-loose': false,
          },
          'channel_types': {
            'in_app_feed': true,
          },
        },
      );
    });

    test('correctly when channel_types properties are used', () async {
      expect(
        SetPreferencesProperties(
          categories: {
            'park-wide':
                WorkflowPreferenceSetting.channelTypePreferences(const {
              ChannelType.inAppFeed: true,
            }),
          },
          workflows: {
            'dinosaurs-loose':
                WorkflowPreferenceSetting.channelTypePreferences(const {
              ChannelType.inAppFeed: false,
            }),
          },
          channelTypes: const {
            ChannelType.inAppFeed: true,
          },
        ).toJson(),
        {
          'categories': {
            'park-wide': {
              'channel_types': {
                'in_app_feed': true,
              }
            },
          },
          'workflows': {
            'dinosaurs-loose': {
              'channel_types': {
                'in_app_feed': false,
              }
            }
          },
          'channel_types': {
            'in_app_feed': true,
          },
        },
      );
    });
  });
}

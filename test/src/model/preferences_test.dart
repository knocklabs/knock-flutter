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
              "sms": true,
              "push": {
                "conditions": [ 
                  {"variable": "v1", "operator": "o1", "argument": "a1" }
                ]
              }
            },
            "workflows": {
              "dinosaurs-loose": {
                "channel_types": {
                  "email": true,
                  "push": {
                    "conditions": [ 
                      {"variable": "v2", "operator": "o2", "argument": "a2" }
                    ]
                  }
                },
                "conditions": [ 
                  {"variable": "v4", "operator": "o4", "argument": "a4" }
                ]
              }
            },
            "categories": {
              "park-wide": {
                "channel_types": {
                  "sms": false,
                  "push": {
                    "conditions": [ 
                      {"variable": "v3", "operator": "o3", "argument": "a3" }
                    ]
                  }
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
          ChannelType.sms: ChannelTypePreference(value: true),
          ChannelType.inAppFeed: ChannelTypePreference(value: true),
          ChannelType.push: ChannelTypePreference(
            conditions: [
              const PreferenceCondition(
                variable: 'v1',
                operator: 'o1',
                argument: 'a1',
              ),
            ],
          ),
        }),
      );
      expect(
        preferenceSet.workflows,
        equals(
          {
            'dinosaurs-loose': WorkflowPreferenceSetting(
              channelTypePreferences: {
                ChannelType.email: ChannelTypePreference(value: true),
                ChannelType.push: ChannelTypePreference(
                  conditions: [
                    const PreferenceCondition(
                      variable: 'v2',
                      operator: 'o2',
                      argument: 'a2',
                    ),
                  ],
                ),
              },
              conditions: [
                // Workflows and categories have the same backing structure so 
                // we do not need to recheck the parsing in categories, but we
                // will ensure that parsing works correct when there is not 
                // conditions provided.
                const PreferenceCondition(
                  variable: 'v4',
                  operator: 'o4',
                  argument: 'a4',
                ),
              ],
            ),
          },
        ),
      );
      expect(
        preferenceSet.categories,
        equals(
          {
            'park-wide': WorkflowPreferenceSetting(
              channelTypePreferences: {
                ChannelType.sms: ChannelTypePreference(value: false),
                ChannelType.push: ChannelTypePreference(
                  conditions: [
                    const PreferenceCondition(
                      variable: 'v3',
                      operator: 'o3',
                      argument: 'a3',
                    ),
                  ],
                ),
              },
            ),
          },
        ),
      );
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
          ChannelType.sms: ChannelTypePreference(value: true),
          ChannelType.inAppFeed: ChannelTypePreference(value: true),
        }),
      );
      expect(
        preferenceSet.workflows,
        equals(
          {'dinosaurs-loose': WorkflowPreferenceSetting(value: true)},
        ),
      );
      expect(
        preferenceSet.categories,
        equals({'park-wide': WorkflowPreferenceSetting(value: false)}),
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
            'park-wide': WorkflowPreferenceSetting(value: true),
          },
          workflows: {
            'dinosaurs-loose': WorkflowPreferenceSetting(value: false),
          },
          channelTypes: {
            ChannelType.inAppFeed: ChannelTypePreference(value: true),
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
            'park-wide': WorkflowPreferenceSetting(
              channelTypePreferences: {
                ChannelType.inAppFeed: ChannelTypePreference(value: true),
                ChannelType.push: ChannelTypePreference(
                  conditions: [
                    const PreferenceCondition(
                      variable: 'v2',
                      operator: 'o2',
                      argument: 'a2',
                    ),
                  ],
                ),
              },
              conditions: [
                const PreferenceCondition(
                  variable: 'v3',
                  operator: 'o3',
                  argument: 'a3',
                ),
              ],
            ),
          },
          workflows: {
            'dinosaurs-loose': WorkflowPreferenceSetting(
              channelTypePreferences: {
                ChannelType.inAppFeed: ChannelTypePreference(value: false),
              },
            ),
            'velociraptor-enclosure-alert': WorkflowPreferenceSetting(
              conditions: [
                const PreferenceCondition(
                  variable: 'v4',
                  operator: 'o4',
                  argument: 'a4',
                ),
              ],
            ),
          },
          channelTypes: {
            ChannelType.inAppFeed: ChannelTypePreference(value: true),
            ChannelType.push: ChannelTypePreference(
              conditions: [
                const PreferenceCondition(
                  variable: 'v1',
                  operator: 'o1',
                  argument: 'a1',
                ),
              ],
            ),
          },
        ).toJson(),
        {
          'categories': {
            'park-wide': {
              'channel_types': {
                'in_app_feed': true,
                'push': {
                  'conditions': [
                    {'variable': 'v2', 'operator': 'o2', 'argument': 'a2'},
                  ],
                },
              },
              'conditions': [
                {'variable': 'v3', 'operator': 'o3', 'argument': 'a3'},
              ],
            },
          },
          'workflows': {
            'dinosaurs-loose': {
              'channel_types': {
                'in_app_feed': false,
              },
            },
            'velociraptor-enclosure-alert': {
              'conditions': [
                {'variable': 'v4', 'operator': 'o4', 'argument': 'a4'},
              ],
            },
          },
          'channel_types': {
            'in_app_feed': true,
            'push': {
              'conditions': [
                {'variable': 'v1', 'operator': 'o1', 'argument': 'a1'},
              ],
            },
          },
        },
      );
    });
  });
}

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  test('ChannelData deserializes correctly when tokens are present', () {
    final json = jsonDecode('''
          {
            "data": {
              "tokens": ["test-token"]
            }
          }
        ''');

    final channelData = ChannelData.fromJson(json);
    expect(
      channelData,
      ChannelData.forTokens(['test-token']),
    );
  });

  test('ChannelData serializes correctly when tokens are present', () {
    final channelData = ChannelData.forTokens(['test-token']);
    final json = channelData.toJson();

    expect(
      json,
      {
        'data': {
          'tokens': ['test-token'],
        }
      },
    );
  });

  group('Channel deserializes', () {
    test('correctly when no known fields are present', () {
      final json = jsonDecode('''
          {
            "id": "123",
            "updated_at": "2023-11-28T15:00:00Z"
          }
        ''');

      final user = User.fromJson(json);
      expect(
          user,
          User(
              id: '123',
              email: null,
              name: null,
              phoneNumber: null,
              avatar: null,
              createdAt: null,
              updatedAt: DateTime.parse('2023-11-28T15:00:00Z')));
    });

    test('correctly when extra fields are present', () {
      final json = jsonDecode('''
          {
            "id": "123",
            "updated_at": "2023-11-28T15:00:00Z",
            "extra_number": 13,
            "extra_string": "some string",
            "extra_object": {
              "some_key": "some value"
            }
          }
        ''');

      final user = User.fromJson(json);
      expect(user.get('extra_number'), 13);
      expect(user.get('extra_string'), 'some string');
      expect(user.get('extra_object'), {
        'some_key': 'some value',
      });
    });
  });

  group('User serializes', () {
    test('correctly when all known fields are present', () {
      final json = User(
        id: '123',
        email: 'dnedrey@biosyn.com',
        name: 'Dennis Nedry',
        phoneNumber: '123-456-7890',
        avatar: 'biosyn.jpg',
        updatedAt: DateTime.parse('2023-11-28T15:00:00Z'),
        createdAt: DateTime.parse('2023-11-28T12:00:00Z'),
      ).toJson();

      expect(
        json,
        {
          'id': '123',
          'email': 'dnedrey@biosyn.com',
          'name': 'Dennis Nedry',
          'phone_number': '123-456-7890',
          'avatar': 'biosyn.jpg',
          'updated_at': '2023-11-28T15:00:00.000Z',
          'created_at': '2023-11-28T12:00:00.000Z',
        },
      );
    });

    test('correctly when no known fields are present', () {
      final json = User(
        id: '123',
        updatedAt: DateTime.parse('2023-11-28T15:00:00Z'),
      ).toJson();

      expect(
        json,
        {
          'id': '123',
          'email': null,
          'name': null,
          'phone_number': null,
          'avatar': null,
          'updated_at': '2023-11-28T15:00:00.000Z',
          'created_at': null,
        },
      );
    });

    test('correctly when extra fields are present', () {
      final json = User(
        id: '123',
        updatedAt: DateTime.parse('2023-11-28T15:00:00Z'),
      )
          .set('extra_number', 13)
          .set('extra_string', 'some string')
          .set('extra_object', {'some_key': 'some value'}).toJson();

      expect(
        json,
        {
          'id': '123',
          'email': null,
          'name': null,
          'phone_number': null,
          'avatar': null,
          'updated_at': '2023-11-28T15:00:00.000Z',
          'created_at': null,
          'extra_number': 13,
          'extra_string': 'some string',
          'extra_object': {'some_key': 'some value'},
        },
      );
    });
  });

  group('User mutations', () {
    test('does not allow mutating the user id', () {
      final user = User(
        id: '123',
        updatedAt: DateTime.parse('2023-11-28T15:00:00Z'),
      );
      expect(() => user.set('id', 'not going to happen'), throwsArgumentError);
    });
  });
}

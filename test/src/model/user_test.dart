import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';

void main() {
  group('User deserializes', () {
    test('correctly when all known fields are present', () {
      final json = jsonDecode('''
          {
            "id": "123",
            "email": "dnedrey@biosyn.com",
            "name": "Dennis Nedry",
            "phone_number": "123-456-7890",
            "avatar": "biosyn.jpg",
            "updated_at": "2023-11-28T15:00:00Z",
            "created_at": "2023-11-28T12:00:00Z"
          }
        ''');

      final user = User.fromJson(json);
      expect(
          user,
          User(
              id: '123',
              email: 'dnedrey@biosyn.com',
              name: 'Dennis Nedry',
              phoneNumber: '123-456-7890',
              avatar: 'biosyn.jpg',
              createdAt: '2023-11-28T12:00:00Z',
              updatedAt: '2023-11-28T15:00:00Z'));
    });

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
              updatedAt: '2023-11-28T15:00:00Z'));
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

  group('User mutations', () {
    test('does not allow mutating the user id', () {
      final user = User(
        id: '123',
        updatedAt: '2023-11-28T15:00:00Z',
      );
      expect(() => user.set('id', 'not going to happen'), throwsArgumentError);
    });

    test('do not mutate the original value', () {
      final user = User(
        id: '123',
        updatedAt: '2023-11-28T15:00:00Z',
      );

      final modifiedUser = user
          .setEmail('Test Email')
          .setName('Test Name')
          .setPhoneNumber('Test Phone Number')
          .setAvatar('Test Avatar')
          .setUpdatedAt('Test Updated At')
          .setCreatedAt('Test Created At');

      // Ensure the original object has not been modified
      expect(
        user.toJson(),
        {
          'id': '123',
          'updated_at': '2023-11-28T15:00:00Z',
        },
      );

      expect(
        modifiedUser.toJson(),
        {
          'id': '123',
          'email': 'Test Email',
          'name': 'Test Name',
          'phone_number': 'Test Phone Number',
          'avatar': 'Test Avatar',
          'updated_at': 'Test Updated At',
          'created_at': 'Test Created At'
        },
      );
    });
  });
}

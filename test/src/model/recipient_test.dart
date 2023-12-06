import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/knock_object.dart';

void main() {
  group('Recipient deserializes', () {
    test('user recipients', () {
      final json = jsonDecode('''
          {
            "__typename": "User",
            "id": "123",
            "email": "dnedrey@biosyn.com",
            "updated_at": "2023-11-28T15:00:00Z"
          }
        ''');
      final recipient = Recipient.fromJson(json);
      recipient.maybeWhen(
        user: (user) {
          expect(user.id, '123');
          expect(user.email, 'dnedrey@biosyn.com');
        },
        orElse: () {
          fail('Did not parse out a user from the JSON');
        },
      );
    });

    test('knock objects recipients', () {
      final json = jsonDecode('''
          {
            "id": "123",
            "collection": "my collection",
            "properties": {
              "key": "value"
            },
            "updated_at": "2023-11-28T15:00:00Z"
          }
        ''');
      final recipient = Recipient.fromJson(json);
      recipient.maybeWhen(
        knockObject: (knockObject) {
          expect(knockObject.id, '123');
          expect(knockObject.collection, 'my collection');
          expect(knockObject.properties, {'key': 'value'});
        },
        orElse: () {
          fail('Did not parse out a knock object from the JSON');
        },
      );
    });
  });

  group('Recipient serializes', () {
    test('user recipients', () {
      final recipient = Recipient.user(User(
        id: '123',
        updatedAt: DateTime.parse('2023-11-28T15:00:00Z'),
      ).set('extra', 'value'));
      expect(recipient.toJson(), {
        'id': '123',
        'email': null,
        'name': null,
        'phone_number': null,
        'avatar': null,
        'updated_at': '2023-11-28T15:00:00.000Z',
        'created_at': null,
        'extra': 'value',
      });
    });

    test('knock object recipients', () {
      final recipient = Recipient.knockObject(
        const KnockObject(
          id: '123',
          collection: 'test-collection',
          properties: {
            'test-key': 'test value',
          },
          updatedAt: 'Test updated at',
          createdAt: 'Test created at',
        ),
      );
      expect(recipient.toJson(), {
        'id': '123',
        'collection': 'test-collection',
        'properties': {
          'test-key': 'test value',
        },
        'updated_at': 'Test updated at',
        'created_at': 'Test created at',
      });
    });
  });
}

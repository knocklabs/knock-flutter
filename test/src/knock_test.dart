import 'package:flutter_test/flutter_test.dart';

import 'package:knock_flutter/knock_flutter.dart';

void main() {
  group('Knock client creation', () {
    test('can not be created with a secret API key', () {
      Knock testCreate() => Knock("sk_anything");

      expect(testCreate, throwsA(isA<ArgumentError>()));
    });

    test('can be created with a valid API key', () {
      Knock testCreate() => Knock("api_key");

      expect(testCreate, returnsNormally);

      expect(testCreate().apiKey, "api_key");
      expect(testCreate().host, "https://api.knock.app");
    });

    test('can be created with an overridden host', () {
      Knock testCreate() => Knock(
            "api_key",
            options: KnockOptions(host: "https://somehost.com"),
          );

      expect(testCreate, returnsNormally);
      expect(testCreate().apiKey, "api_key");
      expect(testCreate().host, "https://somehost.com");
    });
  });

  group('Knock client authentication', () {
    test('is not initially authenticated when not checking user tokens', () {
      final knock = Knock("api_key");
      expect(knock.userId, isNull);
      expect(knock.userToken, isNull);
      expect(knock.isAuthenticated(), false);
    });

    test('is not initially authenticated when checking user tokens', () {
      final knock = Knock("api_key");
      expect(knock.userId, isNull);
      expect(knock.userToken, isNull);
      expect(knock.isAuthenticated(checkUserToken: true), false);
    });
  });
}

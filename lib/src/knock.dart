import 'dart:developer' as developer;

import 'package:knock_flutter/src/api_client.dart';

// Default endpoint that the Knock SDK will use.
const _defaultHost = "https://api.knock.app";

/// Configuration options for the [Knock] client SDK.
class KnockOptions {
  /// The [Knock] client SDK will use this host instead of the default endpoint if set to a non-null value.
  final String? host;

  KnockOptions({this.host});
}

/// Knock client SDK.
class Knock {
  /// Your Knock public API key.
  final String apiKey;

  /// The endpoint this instance is configured to use.
  final String host;

  String? _userId;
  String? _userToken;
  ApiClient? _apiClient;

  Knock(this.apiKey, {KnockOptions? options})
      : host = options?.host ?? _defaultHost {
    // Fail loudly if we're using the wrong API key
    if (apiKey.startsWith("sk")) {
      throw ArgumentError(
        """
        [Knock] You are using your secret API key on the client. Please use the
        public key.
        """,
      );
    }
  }

  String? get userId => _userId;

  String? get userToken => _userToken;

  /// Authenticates the current user. In non-sandbox environments the userToken
  /// must be specified.
  void authenticate(String userId, [String? userToken]) {
    _userId = userId;
    _userToken = userToken;
  }

  /// Returns whether or this Knock instance is authenticated. Passing `true`
  /// will check the presence of the userToken as well.
  bool isAuthenticated({bool checkUserToken = false}) {
    if (checkUserToken) {
      return (userId?.isNotEmpty ?? false) && (userToken?.isNotEmpty ?? false);
    }

    return (userId?.isNotEmpty ?? false);
  }

  ApiClient client() {
    if (!isAuthenticated()) {
      developer.log("""
        [Knock] You must call authenticate(userId, userToken) first before 
        trying to make a request. Typically you'll see this message when 
        you're creating a feed instance before having called authenticate with 
        a user Id and token. That means we won't know who to issue the request 
        to Knock on behalf of.
        """);
    }

    return _apiClient ??= ApiClient();
  }

  /// Releases any connected resources used by this this instance.
  void dispose() {
    _apiClient?.dispose();
  }
}

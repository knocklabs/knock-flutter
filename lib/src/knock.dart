import 'package:knock_flutter/knock_flutter.dart';

// Default endpoint that the Knock SDK will use.
const _defaultHost = 'https://api.knock.app';

/// Configuration options for the [Knock] client SDK.
class KnockOptions {
  KnockOptions({this.host});

  /// The [Knock] client SDK will use this host instead of the default endpoint
  /// if set to a non-null value.
  final String? host;
}

/// Knock client SDK.
class Knock {
  Knock(this.apiKey, {KnockOptions? options})
      : host = options?.host ?? _defaultHost {
    // Fail loudly if we're using the wrong API key
    if (apiKey.startsWith('sk')) {
      throw ArgumentError(
        '''
        [Knock] You are using your secret API key on the client. Please use the
        public key.
        ''',
      );
    }
  }

  /// Your Knock public API key.
  final String apiKey;

  /// The endpoint this instance is configured to use.
  final String host;

  String? _userId;
  String? _userToken;
  ApiClient? _apiClient;

  PreferencesClient? _preferencesClient;
  UserClient? _userClient;

  String? get userId => _userId;

  String? get userToken => _userToken;

  /// Authenticates the current user. In non-sandbox environments the userToken
  /// must be specified.
  void authenticate(String userId, [String? userToken]) {
    _userId = userId;
    _userToken = userToken;
  }

  /// Clears any user authentication and disposes of any created clients.
  void logout() {
    _userId = null;
    _userToken = null;

    dispose();
  }

  /// Returns whether or this Knock instance is authenticated. Passing `true`
  /// will check the presence of the userToken as well.
  bool isAuthenticated({bool checkUserToken = false}) {
    if (checkUserToken) {
      return (userId?.isNotEmpty ?? false) && (userToken?.isNotEmpty ?? false);
    }

    return userId?.isNotEmpty ?? false;
  }

  void _assertAuthenticated() {
    if (!isAuthenticated()) {
      throw StateError("""
        [Knock] You must call authenticate(userId, userToken) first before 
        trying to make a request. Typically you'll see this message when 
        you're creating a feed instance before having called authenticate with 
        a user Id and token. That means we won't know who to issue the request 
        to Knock on behalf of.
        """);
    }
  }

  ApiClient client() {
    _assertAuthenticated();
    return _apiClient ??= ApiClient(this);
  }

  UserClient user() {
    _assertAuthenticated();
    return _userClient ??= UserClient(this);
  }

  PreferencesClient preferences({
    PreferencesOptions? options,
  }) {
    _assertAuthenticated();
    return _preferencesClient ??= PreferencesClient(this, options);
  }

  FeedClient feed(
    String feedChannelId, {
    FeedOptions? options,
  }) {
    _assertAuthenticated();
    return FeedClient(this, feedChannelId, options);
  }

  /// Releases any connected resources used by this this instance.
  void dispose() {
    _apiClient?.dispose();
    _apiClient = null;
  }
}

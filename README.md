# Knock Flutter client library

A client-side Flutter library to interact with user-facing Knock features, such as feeds.

**Note:** This is a lower-level library intended for building your own notification UIs on top of Knock’s APIs (feeds, preferences, channels, messages).

## Migrating from 0.1.x to 1.0.0

Version **1.0.0** is a major release with breaking changes. Read [CHANGELOG.md](CHANGELOG.md) for the full list. Highlights:

| Before (0.1.x) | After (1.0.0) |
| --- | --- |
| `ApiClient` | `KnockApiClient` (`knock.client()`) |
| `ApiResponse` | `KnockApiResponse` |
| `ApiClientStatus` | `KnockApiClientStatus` |
| `ApiError` (extends [`Error`](https://api.dart.dev/dart-core/Error-class.html)) | `KnockApiException` (implements [`Exception`](https://api.dart.dev/dart-core/Exception-class.html)) |
| `knock.getFcmToken()` / `knock.getApnsToken()` | Obtain tokens yourself (e.g. [`firebase_messaging`](https://pub.dev/packages/firebase_messaging)); see [Push notifications](#push-notifications) |

- **Catch semantics:** Prefer `on KnockApiException catch` or `catch (e)` and `e is KnockApiException`. Code that only caught [`Error`](https://api.dart.dev/dart-core/Error-class.html) subtype `ApiError` will not catch [`Exception`](https://api.dart.dev/dart-core/Exception-class.html) subtype `KnockApiException`.
- **Flutter / Dart SDK:** Requires Dart SDK `>=3.8.0` and Flutter `>=3.32.0`.

## Documentation

See the [documentation](https://docs.knock.app/notification-feeds/bring-your-own-ui) for usage examples.

## Lifecycle and cleanup

- Call **`knock.dispose()`** when you are finished with the `Knock` instance (your app teardown or logout flows).
- For each **`FeedClient`** created via `knock.feed(...)`, call **`feedClient.dispose()`** when that feed is torn down (e.g. navigating away). This unsubscribes from the Phoenix socket and cleans listeners. Optionally cancel any subscriptions on `feedClient.feed`; `dispose()` clears the rest deterministically. After `dispose()`, `feedClient.feed` is an empty stream.
- `knock.dispose()` and `knock.logout()` also dispose every `FeedClient` created from that instance.
- Calling **`knock.authenticate(...)`** with a **different user** disposes the current API client, its socket and its feeds; create new feeds for the new user. Calling it again for the **same user** only updates the user token (for example after a token refresh); the new token is used for subsequent requests and when the socket reconnects.

## Realtime feeds

Several `FeedClient`s for the same feed channel (for example a badge counter and a feed list) share one realtime channel. The channel is joined with the options of the first client that subscribes; every client still fetches its own items with its own options when a realtime update arrives.

## Feed loading state (`NetworkStatus.initial`)

[`Feed.initialState()`](lib/src/model/feed.dart) now uses **`NetworkStatus.initial`** before any HTTP fetch runs. Prefer checking **`feed.requestInFlight`** (or treating `loading`/`fetchMore`/`error` explicitly) rather than relying on **`NetworkStatus.ready`** alone—the feed is empty while `initial`.

## Push notifications

The SDK **does not fetch FCM/APNS tokens** (the old Android/iOS plugin was removed). In your app:

1. Complete platform setup using [Firebase for Flutter](https://firebase.google.com/docs/flutter/setup) (or another push provider compatible with Knock’s channel APIs).
2. Add [`firebase_core`](https://pub.dev/packages/firebase_core) and [`firebase_messaging`](https://pub.dev/packages/firebase_messaging) as usual.
3. Retrieve tokens—for example [`FirebaseMessaging.instance.getToken()`](https://firebase.google.com/docs/cloud-messaging/flutter/client) on Android / [`getAPNSToken()`](https://firebase.google.com/docs/cloud-messaging/flutter/client) on Apple platforms when available.
4. Register with Knock via:

```dart
await knock.user().registerTokenForChannel(channelId, token);
```

Optionally override the inferred locale passed to Knock:

```dart
await knock.user().registerTokenForChannel(
  channelId,
  token,
  languageTag: 'en-US',
);
```

For a fuller flow, including Firebase initialization guarded when no project is configured locally, see the [`example/`](example/) app and [Running the example app](#running-the-example-app).

## Package Development

### Code generation

Code generation is limited to supporting JSON serialization/deserialization of API messages. If you need to adjust the generated code, run from the repo root:

```sh
dart run build_runner build
```

Generated files are checked into version control because they ship with the published package. CI fails if they are out of date. The code generators are pinned to exact versions in `pubspec.yaml`; bump them deliberately and regenerate.

Development uses the Flutter version pinned in [`.github/workflows/quality.yml`](.github/workflows/quality.yml). CI also checks the library against the minimum supported Flutter version from `pubspec.yaml`.

### Release (internal)

Manually update [CHANGELOG.md](CHANGELOG.md).

Update `version:` in `pubspec.yaml`.

Create a PR.

After your PR is merged, run `/release status knock-flutter` in Slack to start the release process.

## Running the example app

Requirements for this repository’s example app mirror a normal Flutter app:

```sh
cd example
flutter pub get
```

To exercise **push-token** buttons in `example/lib/main.dart`, configure Firebase (e.g. add `google-services.json`, `GoogleService-Info.plist`, and `firebase_options.dart` from your Firebase project). Without them, **`Firebase.initializeApp()`** falls back gracefully and push-token actions show a helper message rather than crashing. See **[example/README.md](example/README.md)** for concrete steps.

Otherwise, follow Flutter’s [test drive](https://docs.flutter.dev/get-started/test-drive): select a device, then run/Debug (e.g. F5).

You can monitor build progress in the Debug Console until the app appears on device or simulator.

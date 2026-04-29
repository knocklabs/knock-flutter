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

> **Knock docs follow-up:** The public Knock docs may still mention old names (`ApiClient`, `ApiResponse`, `ApiError`). See [`docs-follow-up.md`](docs-follow-up.md) for pointers when updating docs.

## Lifecycle and cleanup

- Call **`knock.dispose()`** when you are finished with the `Knock` instance (your app teardown or logout flows).
- For each **`FeedClient`** created via `knock.feed(...)`, call **`feedClient.dispose()`** when that feed is torn down (e.g. navigating away). This unsubscribes from the Phoenix socket and cleans listeners. Optionally cancel any subscriptions on `feedClient.feed`; `dispose()` clears the rest deterministically.

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

Generated files are checked into version control because they ship with the published package.

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

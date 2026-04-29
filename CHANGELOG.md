## 1.0.0

### Breaking

- refactor: remove Pigeon and native plugin code (Android/iOS), convert to pure Dart package.
  Push token retrieval is now the consumer's responsibility via `firebase_messaging` or similar.
- refactor: rename `ApiClient` to `KnockApiClient`, `ApiResponse` to `KnockApiResponse`,
  `ApiClientStatus` to `KnockApiClientStatus`, `ApiError` to `KnockApiException`

### Added

- feat: add `NetworkStatus.initial` to distinguish pre-fetch state from ready
- feat: add explicit `FeedClient.dispose()` for deterministic resource cleanup

### Fixed

- fix: cache `PhoenixSocket` instance in socket getter (every access previously created a new connection)
- fix: prevent `StateError` crash on closed `_eventController` in `FeedClient`
- fix: trigger initial HTTP fetch in `onListen` without relying on `openStream` BehaviorSubject replay
- fix: close connected socket before dispose for clean WebSocket disconnect
- fix: close `_status` `StreamController` on dispose to prevent resource leak
- fix: prevent channel join assertion crash (`!_joinedOnce`) on quick unsubscribe/re-subscribe
- fix: add defensive cancel before re-subscribing to channel messages
- fix: guard `_onNewMessageReceived` against post-disposal processing

### Changed

- chore: upgrade dependencies (freezed v3, phoenix_socket ^0.8.0, json_serializable ^6.13, SDK >=3.8.0)
- test: remove duplicate User tests from channel_test.dart

## 0.1.8

- fix: Replace deprecated `flutter_native_timezone` with maintained `flutter_timezone` fork to resolve Android build failures
- fix: Use `toLanguageTag()` instead of `toString()` for locale formatting to fix iOS 422 invalid_request_error (e.g., `it-IT` instead of `it_IT`)

## 0.1.7

- feat: Update AppDelegate.swift to request push permissions
- feat(KNO-10078): replace tokens array with devices array containing token, locale, and timezone

## 0.1.6

- fix: Adding `ApiResponse` to `ApiError` to provide more context

## 0.1.5

- fix: add `rendered` property to `TextContentBlock`

## 0.1.4

- fix: ensure preferences can handle both conditions and channel types

## 0.1.3

- feat: add new ContentBlock types to FeedItem

## 0.1.2

- feat: add new methods for registering and deregistering channel data

## 0.1.1

- fix: Feed correctly observes new messages from the Knock API.

## 0.1.0

- Initial release of the Knock Flutter SDK.

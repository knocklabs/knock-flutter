## 1.1.0

A stabilization release: bug fixes, current Flutter stable tooling, and a working example app. No new features.

### Behavior changes

- **New enum values:** `KnockMessageDeliveryStatus.bounced` and `KnockMessageEngagementStatus.linkClicked` were added so messages with these API values decode. Exhaustive `switch` statements over these enums need the new cases.
- **Shared realtime subscriptions:** `FeedClient`s for the same feed channel and user now share one realtime channel. It is joined with the options of the first client that subscribes; each client still fetches its own items with its own options when a realtime update arrives.
- **Feeds are disposed on user switch:** calling `knock.authenticate()` with a different user disposes the current API client, its socket and every `FeedClient` created for the previous user. Create new feeds after switching users. Re-authenticating the same user only updates the token, which is used for subsequent requests and on socket reconnect.
- `FeedClient.feed` returns an empty stream after `dispose()` (previously it reconnected and refetched).
- `KnockApiClient.status` events are delivered synchronously.

### Fixed

- fix: `PreferencesClient.getAll()` threw a `TypeError` on every response
- fix: a feed response that failed to decode left the feed in `NetworkStatus.loading` forever and blocked all later fetches; it now moves to `NetworkStatus.error`
- fix: feed items with content block types this SDK does not know yet no longer fail the whole feed; unknown blocks are skipped
- fix: `markAllAsSeen` / `markAllAsRead` / `markAllAsArchived` on a filtered feed no longer reset the feed to `NetworkStatus.initial`
- fix: a failed feed fetch no longer reverts optimistic updates made while it was in flight
- fix: a realtime update that arrives while another feed request is in flight is replayed instead of dropped
- fix: a second `FeedClient` for the same feed channel hit a Phoenix `!_joinedOnce` assertion, and disposing either client stopped realtime updates for both (see shared realtime subscriptions above)
- fix: `FeedClient.dispose()` right after `knock.logout()` threw, and right after `knock.dispose()` opened a new websocket
- fix: the socket kept using a stale user token after `authenticate()` was called again; the token is now read on every reconnect
- fix: `KnockMessage` failed to decode the `bounced` delivery status and the `link_clicked` engagement status (see new enum values above); unknown engagement statuses are now ignored
- fix: ids used in request paths (user, channel, message, preference set) are URL-encoded, and request URLs no longer end with an empty `?#`
- fix: `KnockApiResponse.decodeResponse()` throws `KnockApiException` for an empty body instead of a `FormatException`
- fix: unknown preference channel types are skipped instead of throwing `StateError`
- fix: `KnockApiClient.dispose()` can be called more than once
- fix: `json_annotation` floor kept at `^4.9.0` so the package resolves on the minimum supported Flutter (3.32)

### Changed

- chore: regenerate all generated code with freezed 4 (the checked-in code was stale freezed v2 output and `build_runner` failed to compile); upgrade dev tooling (build_runner, json_serializable, mockito, very_good_analysis 11)
- chore: example app builds on current Flutter stable (Gradle 9.3.1 / AGP 9.1.0 / Kotlin 2.4.0 / Java 17, firebase_core 4, firebase_messaging 16, iOS 15.0); `flutter_html` removed from the example; the google-services plugin is only applied when `google-services.json` is present
- ci: pin Flutter, scope workflow permissions, and add format, generated-code, publish dry-run, minimum-Flutter and example build checks
- docs: 1.0.0 described the package as "pure Dart"; it has no native code of its own but still depends on Flutter and the `flutter_timezone` plugin

## 1.0.0

### Breaking

- refactor: remove Pigeon and native plugin code (Android/iOS), convert to pure Dart package.
  Push token retrieval is now the consumer's responsibility via `firebase_messaging` or similar.
- refactor: rename `ApiClient` to `KnockApiClient`, `ApiResponse` to `KnockApiResponse`,
  `ApiClientStatus` to `KnockApiClientStatus`, `ApiError` to `KnockApiException`
- refactor: **`ApiError` extended `dart:core`'s [`Error`](https://api.dart.dev/dart-core/Error-class.html)**;
  **`KnockApiException implements Exception`**. This is both a rename and a **semantic migration**:
  `try/catch` / `rethrow` / `Future.onError` code that depended on **`Error`** / **`ApiError`**
  will not behave the same unless updated to **`KnockApiException`** (or a broad **`Exception`** catch).
- refactor: **`Feed.initialState()`** now starts with **`NetworkStatus.initial`** instead of `ready`,
  so UIs must not infer “already loaded successfully” solely from **`NetworkStatus`** before the first HTTP
  response. Prefer **`feed.requestInFlight`** / explicit handling for `initial`, `loading`, `fetchMore`, `error`,
  and **`ready`**.
- chore: Dart SDK **`>=3.8.0`**, Flutter **`>=3.32.0`** (see `pubspec.yaml`).

### Added

- feat: add `NetworkStatus.initial` and use it from `Feed.initialState()` before the first fetch
- feat: add public **`FeedClient.dispose()`** for deterministic resource cleanup (subscriptions, Phoenix listeners,
  event stream). Call when abandoning a feed (e.g. route dispose); **`knock.dispose()`** handles the **`Knock`**
  instance broadly.

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

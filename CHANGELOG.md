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

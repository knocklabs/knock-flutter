# Knock Flutter example app

This app exercises the `knock_flutter` package (`path: ..` in `pubspec.yaml`).

## Run

```sh
cd example
flutter pub get
flutter run \
  --dart-define=KNOCK_API_KEY=your_knock_public_key
```

Without a real API key many screens will error or show empty content; that is expected for ad-hoc hacking.

## Firebase (push token tab)

Tab **Notifications** uses `firebase_core`, `firebase_messaging`, and **`Firebase.initializeApp()`** in [`lib/main.dart`](lib/main.dart). If you have not added Firebase to this example project, init is caught and the UI still runs; token buttons will surface a **“Firebase not configured”** style message until you:

1. Create a Firebase project and add Flutter apps (Android + Apple) per [Add Firebase to Flutter](https://firebase.google.com/docs/flutter/setup).
2. Run `flutterfire configure` (recommended) to generate `lib/firebase_options.dart`, or add equivalent options by hand.
3. Add `google-services.json` under `android/app/` and `GoogleService-Info.plist` under `ios/Runner/` from the Firebase console.
4. Uncomment or wire `Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)` if you use FlutterFire’s generated defaults (see [FlutterFire overview](https://firebase.google.com/docs/flutter/setup)).

 Until then, feeds, user, preferences, and channel tabs work as long as Knock API credentials are valid; only FCM/APNs token retrieval needs Firebase.

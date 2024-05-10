# Knock Flutter client library

A client-side Flutter library to interact with user-facing Knock features, such as feeds.

**Note: this is a lower level library designed for building UI on top of**

## Documentation

See the [documentation](https://docs.knock.app/notification-feeds/bring-your-own-ui) for usage examples.

### iOS

To receive push notifications via APNS (Apple Push Notification Service) you will need to enable the push notification capability in your application. You can find instructions on how to do this at https://developer.apple.com/documentation/usernotifications/registering_your_app_with_apns.

#### Example App

To test APNS integration in the example app, you will need to open `example/ios` in Xcode and select your Development Team and choose Bundle Identifier unique to you.

### Android

To receive push notifications via FCM (Firebase Cloud Messaging) you will need to add Firebase and related dependencies to your application. You can find instructions on how to do this at: https://firebase.google.com/docs/android/setup.

Note: If you've added Firebase to your Flutter app (https://firebase.google.com/docs/flutter/setup?platform=android), you should only need to add a dependency on `firebase_messaging` (https://firebase.google.com/docs/cloud-messaging/flutter/client).

1. In your project's `android/build.gradle` add:

```
buildscript {
    dependencies {
        ...
        classpath "com.google.gms:google-services:4.3.15"
        ...
    }
}
```

2. In your project's `android/app/build.gradle` add:

```
plugins {
    ...
    id "com.google.gms.google-services"
    ...
}

dependencies {
    ...
    implementation(platform("com.google.firebase:firebase-bom:YOUR_VERSION"))
    implementation("com.google.firebase:firebase-messaging")
    ...
}
```

3. Add `google-services.json` provided by your Firebase project to `app/google-services.json`.

#### Example App

To test FCM integration in the example app, you will need to create a Firebase project and add an appropriate `google-services.json` file to `example/app/google-services.json`.

## Package Development

### Code generation

Code generation is limited to supporting JSON serialization/deserization of API messages. If you need to
adust the generated code you will want to run this command from the top level directory.

```
flutter pub run build_runner build
```

If you need to update the generated platform channel messages you will want to run this command from the top level directory.

```
flutter pub run pigeon --input pigeons/messages.dart
```

Note: Generated files are checked into version control because they are part of the released packaged.

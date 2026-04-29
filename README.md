# Knock Flutter client library

A client-side Flutter library to interact with user-facing Knock features, such as feeds.

**Note: this is a lower level library designed for building UI on top of**

## Documentation

See the [documentation](https://docs.knock.app/notification-feeds/bring-your-own-ui) for usage examples.

## Package Development

### Code generation

Code generation is limited to supporting JSON serialization/deserization of API messages. If you need to
adust the generated code you will want to run this command from the top level directory.

```
flutter pub run build_runner build
```

Note: Generated files are checked into version control because they are part of the released packaged.

### Release (Internal)

Manually update changelog.md file.
Update release version in pubspec.yaml
Create PR
After your PR is merged, run /release status knock-flutter in slack to start the release process

### Running Example App

https://docs.flutter.dev/get-started/test-drive

Open the Command Palette.

Go to View > Command Palette or press Command + Shift + P.

Type flutter.

Select the Flutter: Select Device.

If no devices are running, this command prompts you to enable a device.

Select a target device from Select Device prompt.

After you select a target, start the app. Go to Run > Start Debugging or press F5.

Wait for the app to launch.

You can watch the launch progress in the Debug Console view.

After the app build completes, your device displays your app.

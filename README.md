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
dart run build_runner build --delete-conflicting-outputs
```

If you need to update the generated platform channel messages you will want to run this command from the top level directory.
```
flutter pub run pigeon --input pigeons/messages.dart
```

Generated files are checked into version control because they are part of the released packaged.
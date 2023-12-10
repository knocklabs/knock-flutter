import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/platform/messages.g.dart',
    swiftOut: 'ios/Classes/Messages.g.swift',
    kotlinOut: 'android/src/main/kotlin/app/knock/Messages.g.kt',
    kotlinOptions: KotlinOptions(package: 'app.knock'),
  ),
)
@HostApi()
abstract class KnockHostApi {
  @async
  String getFcmToken();

  @async
  String getApnsToken();
}

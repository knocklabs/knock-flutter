import Flutter
import UIKit

public class KnockPlugin: NSObject, FlutterPlugin, KnockHostApi {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let instance = KnockPlugin()
    KnockHostApiSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
  }

  func getFcmToken() -> String {
    return "TODO getFcmToken iOS"
  }

  func getApnsToken() -> String {
    return "TODO getApnsToken iOS"
  }
}

package app.knock

import io.flutter.embedding.engine.plugins.FlutterPlugin

class KnockPlugin: FlutterPlugin, KnockHostApi {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(binding.binaryMessenger, null)
  }

  override fun getFcmToken(callback: (Result<String>) -> Unit) {
    callback(Result.success("TODO getFcmToken Android"))
  }

  override fun getApnsToken(callback: (Result<String>) -> Unit) {
    callback(Result.failure(FlutterError(
      code = "unsupported",
      message = "getApnsToken is not supported on Android")))
  }
}

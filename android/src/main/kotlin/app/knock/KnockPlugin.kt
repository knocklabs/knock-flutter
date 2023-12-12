package app.knock

import com.google.firebase.messaging.FirebaseMessaging
import io.flutter.embedding.engine.plugins.FlutterPlugin

class KnockPlugin: FlutterPlugin, KnockHostApi {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(flutterPluginBinding.binaryMessenger, this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(binding.binaryMessenger, null)
  }

  override fun getFcmToken(callback: (Result<String>) -> Unit) {
    FirebaseMessaging.getInstance().token.addOnCompleteListener { task ->
      if (task.isSuccessful) {
        callback(Result.success(task.result))
      } else {
        callback(Result.failure(Throwable(task.exception)))
      }
    }
  }

  override fun getApnsToken(callback: (Result<String>) -> Unit) {
    callback(Result.failure(FlutterError(
      code = "unsupported",
      message = "getApnsToken is not supported on Android")))
  }
}

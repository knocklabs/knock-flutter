package app.knock

import app.knock.KnockHostApi

import io.flutter.embedding.engine.plugins.FlutterPlugin

class KnockPlugin: FlutterPlugin, KnockHostApi {
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(flutterPluginBinding.getBinaryMessenger(), this)
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
    KnockHostApi.setUp(binding.getBinaryMessenger(), null)
  }

  override fun getFcmToken(): String {
    return "TODO getFcmToken Android"
  }

  override fun getApnsToken(): String {
    return "TODO getApnsToken Android"
  }
}

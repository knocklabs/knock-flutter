import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';

class PreferencesOptions {
  static const _defaultPreferenceSetId = 'default';

  final String preferenceSetId;

  const PreferencesOptions({this.preferenceSetId = _defaultPreferenceSetId});
}

class PreferencesClient {
  final Knock _knock;
  final PreferencesOptions options;

  PreferencesClient(
    this._knock,
    PreferencesOptions? options,
  ) : options = options ?? const PreferencesOptions();

  ApiClient get _api => _knock.client();

  Future<List<PreferenceSet>> getAll() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/preferences',
    );
    final json = response.decodeResponse();
    final jsonList = json as List;
    return jsonList.map((e) => PreferenceSet.fromJson(e)).toList();
  }

  Future<PreferenceSet> get() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/preferences/${options.preferenceSetId}',
    );
    final json = response.decodeResponse();
    return PreferenceSet.fromJson(json);
  }

  Future<PreferenceSet> set(SetPreferencesProperties properties) async {
    final body = jsonEncode(properties.toJson());
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}/preferences/${options.preferenceSetId}',
      body: body,
    );
    final json = response.decodeResponse();
    return PreferenceSet.fromJson(json);
  }
}

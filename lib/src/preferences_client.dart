import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/api_response.dart';

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
    this.options,
  );

  ApiClient get _api => _knock.client();

  Future<List<PreferenceSet>> getAll() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/preferences',
    );
    final json = _decodeResponse(response) as List;
    return json.map((e) => PreferenceSet.fromJson(e)).toList();
  }

  Future<PreferenceSet> get() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/preferences/${options.preferenceSetId}',
    );
    final json = _decodeResponse(response);
    return PreferenceSet.fromJson(json);
  }

  Future<PreferenceSet> set(
      SetPreferencesProperties setPreferencesProperties) async {
    final body = jsonEncode(setPreferencesProperties.toJson());
    final response = await _api.doPut(
      '/v1/users/${_knock.userId}/preferences/${options.preferenceSetId}',
      body: body,
    );
    final json = _decodeResponse(response);
    return PreferenceSet.fromJson(json);
  }

  dynamic _decodeResponse(ApiResponse response) {
    if (response.statusCode == StatusCode.error) {
      throw Exception(response);
    } else {
      final body = response.body!;
      return jsonDecode(body);
    }
  }
}

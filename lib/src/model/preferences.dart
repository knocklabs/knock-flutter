import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences.freezed.dart';
part 'preferences.g.dart';

enum ChannelType {
  email,
  @JsonValue('in_app_feed')
  inAppFeed,
  sms,
  push,
  chat,
  http,
}

typedef ChannelTypePreferences = Map<ChannelType, bool>;

// This class is only used for JSON encoding/decoding. The channel_types value
// is what will be exposed in the public SDK.
@freezed
class _ChannelTypesJson with _$ChannelTypesJson {
  @JsonSerializable(explicitToJson: true)
  const factory _ChannelTypesJson({
    @JsonKey(name: 'channel_types')
    required ChannelTypePreferences channelTypes,
  }) = __ChannelTypesJson;

  factory _ChannelTypesJson.fromJson(Map<String, dynamic> json) =>
      _$ChannelTypesJsonFromJson(json);
}

@freezed
class WorkflowPreferenceSetting with _$WorkflowPreferenceSetting {
  factory WorkflowPreferenceSetting.workflow(bool workflow) =>
      WorkflowPreferenceSetting._(
        isWorkflow: true,
        workflow: workflow,
        channelPreferences: null,
      );

  factory WorkflowPreferenceSetting.channelTypePreferences(
          ChannelTypePreferences channelTypePreferences) =>
      WorkflowPreferenceSetting._(
        isWorkflow: false,
        workflow: null,
        channelPreferences: channelTypePreferences,
      );

  const factory WorkflowPreferenceSetting._({
    required bool isWorkflow,
    required bool? workflow,
    required ChannelTypePreferences? channelPreferences,
  }) = _WorkflowPreferenceSetting;
}

typedef WorkflowPreferences = Map<String, WorkflowPreferenceSetting>;

@freezed
class SetPreferencesProperties with _$SetPreferencesProperties {
  @JsonSerializable(explicitToJson: true)
  const factory SetPreferencesProperties({
    @JsonKey(name: 'channel_types')
    required ChannelTypePreferences? channelTypes,
    @JsonKey(
        toJson: _workflowPreferencesToJson,
        fromJson: _workflowPreferencesFromJson)
    required WorkflowPreferences? workflows,
    @JsonKey(
        toJson: _workflowPreferencesToJson,
        fromJson: _workflowPreferencesFromJson)
    required WorkflowPreferences? categories,
  }) = _SetPreferencesProperties;

  factory SetPreferencesProperties.fromJson(Map<String, dynamic> json) =>
      _$SetPreferencesPropertiesFromJson(json);
}

@freezed
class PreferenceSet with _$PreferenceSet {
  @JsonSerializable(explicitToJson: true)
  const factory PreferenceSet({
    required String id,
    @JsonKey(name: 'channel_types')
    required ChannelTypePreferences? channelTypes,
    @JsonKey(
        toJson: _workflowPreferencesToJson,
        fromJson: _workflowPreferencesFromJson)
    required WorkflowPreferences? workflows,
    @JsonKey(
        toJson: _workflowPreferencesToJson,
        fromJson: _workflowPreferencesFromJson)
    required WorkflowPreferences? categories,
  }) = _PreferenceSet;

  factory PreferenceSet.fromJson(Map<String, dynamic> json) =>
      _$PreferenceSetFromJson(json);
}

dynamic _workflowPreferencesToJson(WorkflowPreferences? value) {
  return value?.map((key, value) => MapEntry(
        key,
        _workflowPreferenceSettingToJson(value),
      ));
}

WorkflowPreferences? _workflowPreferencesFromJson(Map<String, dynamic>? json) {
  return json?.map((key, value) => MapEntry(
        key,
        _workflowPreferenceSettingFromJson(value),
      ));
}

dynamic _workflowPreferenceSettingToJson(WorkflowPreferenceSetting value) {
  if (value.isWorkflow) {
    return value.workflow!;
  } else {
    return _ChannelTypesJson(channelTypes: value.channelPreferences!).toJson();
  }
}

WorkflowPreferenceSetting _workflowPreferenceSettingFromJson(dynamic json) {
  if (json is bool) {
    return WorkflowPreferenceSetting.workflow(json);
  } else {
    final channelTypes = _ChannelTypesJson.fromJson(json);
    return WorkflowPreferenceSetting.channelTypePreferences(
        channelTypes.channelTypes);
  }
}

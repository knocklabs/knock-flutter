import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

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
@JsonSerializable()
class _ChannelTypesJson {
  @JsonKey(name: 'channel_types')
  final ChannelTypePreferences channelTypes;

  const _ChannelTypesJson({
    required this.channelTypes,
  });

  factory _ChannelTypesJson.fromJson(Map<String, dynamic> json) =>
      _$ChannelTypesJsonFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelTypesJsonToJson(this);
}

class WorkflowPreferenceSetting extends Equatable {
  final bool _isWorkflow;
  final bool? _workflow;
  final ChannelTypePreferences? _channelPreferences;

  factory WorkflowPreferenceSetting.workflow(bool workflow) =>
      WorkflowPreferenceSetting._(true, workflow, null);

  factory WorkflowPreferenceSetting.channelTypePreferences(
          ChannelTypePreferences channelTypePreferences) =>
      WorkflowPreferenceSetting._(false, null, channelTypePreferences);

  const WorkflowPreferenceSetting._(
      this._isWorkflow, this._workflow, this._channelPreferences);

  bool get isWorkflow => _isWorkflow;

  bool get workflow => _workflow!;

  ChannelTypePreferences get channelPreferences => _channelPreferences!;

  @override
  String toString() {
    return 'WorkflowPreferenceSetting{_isWorkflow=$_isWorkflow, _workflow=$_workflow, _channelPreferences=$_channelPreferences}';
  }

  @override
  List<Object?> get props => [_isWorkflow, _workflow, _channelPreferences];
}

typedef WorkflowPreferences = Map<String, WorkflowPreferenceSetting>;

@JsonSerializable()
class SetPreferencesProperties extends Equatable {
  @JsonKey(name: 'channel_types')
  final ChannelTypePreferences? channelTypes;

  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  final WorkflowPreferences? workflows;

  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  final WorkflowPreferences? categories;

  const SetPreferencesProperties({
    this.channelTypes,
    this.workflows,
    this.categories,
  });

  Map<String, dynamic> toJson() => _$SetPreferencesPropertiesToJson(this);

  @override
  List<Object?> get props => [channelTypes, workflows, categories];

  @override
  String toString() {
    return 'SetPreferencesProperties{channelTypes=$channelTypes, workflows=$workflows, categories=$categories}';
  }
}

@JsonSerializable(createToJson: false)
class PreferenceSet extends Equatable {
  final String id;

  @JsonKey(name: 'channel_types')
  final ChannelTypePreferences? channelTypes;

  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  final WorkflowPreferences? workflows;

  @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson)
  final WorkflowPreferences? categories;

  const PreferenceSet({
    required this.id,
    required this.channelTypes,
    required this.workflows,
    required this.categories,
  });

  factory PreferenceSet.fromJson(Map<String, dynamic> json) =>
      _$PreferenceSetFromJson(json);

  @override
  List<Object?> get props => [id, channelTypes, workflows, categories];

  @override
  String toString() {
    return 'PreferenceSet{id=$id, channelTypes=$channelTypes, workflows=$workflows, categories=$categories}';
  }
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
    return value.workflow;
  } else {
    return _ChannelTypesJson(channelTypes: value.channelPreferences).toJson();
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

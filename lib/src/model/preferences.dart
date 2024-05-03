import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences.freezed.dart';
part 'preferences.g.dart';

enum ChannelType {
  email('email'),
  inAppFeed('in_app_feed'),
  sms('sms'),
  push('push'),
  chat('chat'),
  http('http');

  const ChannelType(this.apiValue);

  static ChannelType _valueOf(String apiValue) =>
      ChannelType.values.firstWhere((element) => element.apiValue == apiValue);

  final String apiValue;
}

typedef WorkflowPreferences = Map<String, WorkflowPreferenceSetting>;
typedef ChannelTypePreferences = Map<ChannelType, ChannelTypePreference>;

@freezed
class ChannelTypePreference with _$ChannelTypePreference {
  /// Either set [value] or [conditions].
  factory ChannelTypePreference({
    /// If [value] is set then [conditions] should not be set.
    bool? value,

    /// If [conditions] is set then [value] should not be set.
    List<PreferenceCondition>? conditions,
  }) = _ChannelTypePreference;
}

@freezed
class WorkflowPreferenceSetting with _$WorkflowPreferenceSetting {
  /// Either set [value] or [channelTypePreferences], [conditions].
  factory WorkflowPreferenceSetting({
    /// If [value] is set then [channelTypePreferences] and [conditions] should
    /// not be set.
    bool? value,

    /// If [channelTypePreferences] is set then [value] should not be set.
    ChannelTypePreferences? channelTypePreferences,

    /// If [conditions] is set then [value] should not be set.
    List<PreferenceCondition>? conditions,
  }) = _WorkflowPreferenceSetting;
}

@freezed
class _ChannelTypesJson with _$ChannelTypesJson {
  @JsonSerializable(explicitToJson: true)
  const factory _ChannelTypesJson({
    @JsonKey(
      name: 'channel_types',
      toJson: _nonNullChannelTypePreferencesToJson,
      fromJson: _nonNullChannelTypePreferencesFromJson,
    )
    required dynamic channelTypes,
  }) = __ChannelTypesJson;

  factory _ChannelTypesJson.fromJson(Map<String, dynamic> json) =>
      _$ChannelTypesJsonFromJson(json);
}

@freezed
class _ConditionsJson with _$ConditionsJson {
  @JsonSerializable(explicitToJson: true)
  const factory _ConditionsJson({
    required List<PreferenceCondition>? conditions,
  }) = __ConditionsJson;

  factory _ConditionsJson.fromJson(Map<String, dynamic> json) =>
      _$ConditionsJsonFromJson(json);
}

@Freezed(toJson: true, fromJson: false)
class SetPreferencesProperties with _$SetPreferencesProperties {
  @JsonSerializable(explicitToJson: true)
  const factory SetPreferencesProperties({
    @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson,
    )
    required ChannelTypePreferences? channelTypes,
    @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson,
    )
    required WorkflowPreferences? workflows,
    @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson,
    )
    required WorkflowPreferences? categories,
  }) = _SetPreferencesProperties;
}

@freezed
class PreferenceSet with _$PreferenceSet {
  @JsonSerializable(explicitToJson: true)
  const factory PreferenceSet({
    required String id,
    @JsonKey(
      name: 'channel_types',
      toJson: _channelTypePreferencesToJson,
      fromJson: _channelTypePreferencesFromJson,
    )
    required ChannelTypePreferences? channelTypes,
    @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson,
    )
    required WorkflowPreferences? workflows,
    @JsonKey(
      toJson: _workflowPreferencesToJson,
      fromJson: _workflowPreferencesFromJson,
    )
    required WorkflowPreferences? categories,
  }) = _PreferenceSet;

  factory PreferenceSet.fromJson(Map<String, dynamic> json) =>
      _$PreferenceSetFromJson(json);
}

@freezed
class PreferenceCondition with _$PreferenceCondition {
  @JsonSerializable(explicitToJson: true)
  const factory PreferenceCondition({
    required String variable,
    required String operator,
    required String argument,
  }) = _PreferenceCondition;

  factory PreferenceCondition.fromJson(Map<String, dynamic> json) =>
      _$PreferenceConditionFromJson(json);
}

dynamic _workflowPreferencesToJson(WorkflowPreferences? value) {
  return value?.map((key, value) {
    final dynamic json;
    if (value.value != null) {
      json = value.value;
    } else {
      final channelTypes = value.channelTypePreferences;
      final conditions = value.conditions;

      if (channelTypes != null && conditions != null) {
        json = {
          ..._ChannelTypesJson(channelTypes: channelTypes).toJson(),
          ..._ConditionsJson(conditions: conditions).toJson(),
        };
      } else if (channelTypes != null) {
        json = _ChannelTypesJson(channelTypes: channelTypes).toJson();
      } else if (conditions != null) {
        json = _ConditionsJson(conditions: conditions).toJson();
      } else {
        json = null;
      }
    }

    return MapEntry(key, json);
  });
}

WorkflowPreferences? _workflowPreferencesFromJson(Map<String, dynamic>? json) {
  return json?.map((key, value) {
    final WorkflowPreferenceSetting setting;
    if (value is bool) {
      setting = WorkflowPreferenceSetting(value: value);
    } else {
      final channelTypes = _ChannelTypesJson.fromJson(value);
      final conditions = _ConditionsJson.fromJson(value);
      setting = WorkflowPreferenceSetting(
        channelTypePreferences: channelTypes.channelTypes,
        conditions: conditions.conditions,
      );
    }

    return MapEntry(key, setting);
  });
}

dynamic _nonNullChannelTypePreferencesToJson(ChannelTypePreferences value) {
  return value.map((key, value) {
    final dynamic json;
    if (value.value != null) {
      json = value.value;
    } else {
      final conditions = value.conditions ?? [];
      json = _ConditionsJson(conditions: conditions).toJson();
    }
    return MapEntry(key.apiValue, json);
  });
}

ChannelTypePreferences? _nonNullChannelTypePreferencesFromJson(
  Map<String, dynamic>? json,
) {
  if (json != null) {
    return json.map((key, value) {
      final ChannelTypePreference setting;
      if (value is bool) {
        setting = ChannelTypePreference(value: value);
      } else {
        final parsed = _ConditionsJson.fromJson(value);
        final conditions = parsed.conditions ?? [];
        setting = ChannelTypePreference(conditions: conditions);
      }

      return MapEntry(ChannelType._valueOf(key), setting);
    });
  } else {
    return null;
  }
}

dynamic _channelTypePreferencesToJson(ChannelTypePreferences? value) {
  return value == null ? null : _nonNullChannelTypePreferencesToJson(value);
}

ChannelTypePreferences? _channelTypePreferencesFromJson(
  Map<String, dynamic>? json,
) {
  return json == null ? null : _nonNullChannelTypePreferencesFromJson(json);
}

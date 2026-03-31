// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelTypesJson _$ChannelTypesJsonFromJson(Map<String, dynamic> json) =>
    _ChannelTypesJson(
      channelTypes: _nonNullChannelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$ChannelTypesJsonToJson(_ChannelTypesJson instance) =>
    <String, dynamic>{
      'channel_types':
          _nonNullChannelTypePreferencesToJson(instance.channelTypes),
    };

_ConditionsJson _$ConditionsJsonFromJson(Map<String, dynamic> json) =>
    _ConditionsJson(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => PreferenceCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConditionsJsonToJson(_ConditionsJson instance) =>
    <String, dynamic>{
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
    };

_SetPreferencesProperties _$SetPreferencesPropertiesFromJson(
        Map<String, dynamic> json) =>
    _SetPreferencesProperties(
      channelTypes: _channelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>?),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$SetPreferencesPropertiesToJson(
        _SetPreferencesProperties instance) =>
    <String, dynamic>{
      'channel_types': _channelTypePreferencesToJson(instance.channelTypes),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

_PreferenceSet _$PreferenceSetFromJson(Map<String, dynamic> json) =>
    _PreferenceSet(
      id: json['id'] as String,
      channelTypes: _channelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>?),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$PreferenceSetToJson(_PreferenceSet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_types': _channelTypePreferencesToJson(instance.channelTypes),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

_PreferenceCondition _$PreferenceConditionFromJson(Map<String, dynamic> json) =>
    _PreferenceCondition(
      variable: json['variable'] as String,
      operator: json['operator'] as String,
      argument: json['argument'] as String,
    );

Map<String, dynamic> _$PreferenceConditionToJson(
        _PreferenceCondition instance) =>
    <String, dynamic>{
      'variable': instance.variable,
      'operator': instance.operator,
      'argument': instance.argument,
    };

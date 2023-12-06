// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelTypesJsonImpl _$$_ChannelTypesJsonImplFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelTypesJsonImpl(
      channelTypes: _nonNullChannelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChannelTypesJsonImplToJson(
        _$_ChannelTypesJsonImpl instance) =>
    <String, dynamic>{
      'channel_types':
          _nonNullChannelTypePreferencesToJson(instance.channelTypes),
    };

_$_ConditionsJsonImpl _$$_ConditionsJsonImplFromJson(
        Map<String, dynamic> json) =>
    _$_ConditionsJsonImpl(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => PreferenceCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConditionsJsonImplToJson(
        _$_ConditionsJsonImpl instance) =>
    <String, dynamic>{
      'conditions': instance.conditions?.map((e) => e.toJson()).toList(),
    };

_$SetPreferencesPropertiesImpl _$$SetPreferencesPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPreferencesPropertiesImpl(
      channelTypes: _channelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>?),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$SetPreferencesPropertiesImplToJson(
        _$SetPreferencesPropertiesImpl instance) =>
    <String, dynamic>{
      'channel_types': _channelTypePreferencesToJson(instance.channelTypes),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

_$PreferenceSetImpl _$$PreferenceSetImplFromJson(Map<String, dynamic> json) =>
    _$PreferenceSetImpl(
      id: json['id'] as String,
      channelTypes: _channelTypePreferencesFromJson(
          json['channel_types'] as Map<String, dynamic>?),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$PreferenceSetImplToJson(_$PreferenceSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_types': _channelTypePreferencesToJson(instance.channelTypes),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

_$PreferenceConditionImpl _$$PreferenceConditionImplFromJson(
        Map<String, dynamic> json) =>
    _$PreferenceConditionImpl(
      variable: json['variable'] as String,
      operator: json['operator'] as String,
      argument: json['argument'] as String,
    );

Map<String, dynamic> _$$PreferenceConditionImplToJson(
        _$PreferenceConditionImpl instance) =>
    <String, dynamic>{
      'variable': instance.variable,
      'operator': instance.operator,
      'argument': instance.argument,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChannelTypesJson _$ChannelTypesJsonFromJson(Map<String, dynamic> json) =>
    _ChannelTypesJson(
      channelTypes: (json['channel_types'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$ChannelTypesJsonToJson(_ChannelTypesJson instance) =>
    <String, dynamic>{
      'channel_types': instance.channelTypes
          .map((k, e) => MapEntry(_$ChannelTypeEnumMap[k]!, e)),
    };

const _$ChannelTypeEnumMap = {
  ChannelType.email: 'email',
  ChannelType.inAppFeed: 'in_app_feed',
  ChannelType.sms: 'sms',
  ChannelType.push: 'push',
  ChannelType.chat: 'chat',
  ChannelType.http: 'http',
};

SetPreferencesProperties _$SetPreferencesPropertiesFromJson(
        Map<String, dynamic> json) =>
    SetPreferencesProperties(
      channelTypes: (json['channel_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$SetPreferencesPropertiesToJson(
        SetPreferencesProperties instance) =>
    <String, dynamic>{
      'channel_types': instance.channelTypes
          ?.map((k, e) => MapEntry(_$ChannelTypeEnumMap[k]!, e)),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

PreferenceSet _$PreferenceSetFromJson(Map<String, dynamic> json) =>
    PreferenceSet(
      id: json['id'] as String,
      channelTypes: (json['channel_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

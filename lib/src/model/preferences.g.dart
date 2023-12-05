// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'preferences.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChannelTypesJsonImpl _$$_ChannelTypesJsonImplFromJson(
        Map<String, dynamic> json) =>
    _$_ChannelTypesJsonImpl(
      channelTypes: (json['channel_types'] as Map<String, dynamic>).map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
    );

Map<String, dynamic> _$$_ChannelTypesJsonImplToJson(
        _$_ChannelTypesJsonImpl instance) =>
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

_$SetPreferencesPropertiesImpl _$$SetPreferencesPropertiesImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPreferencesPropertiesImpl(
      channelTypes: (json['channel_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$SetPreferencesPropertiesImplToJson(
        _$SetPreferencesPropertiesImpl instance) =>
    <String, dynamic>{
      'channel_types': instance.channelTypes
          ?.map((k, e) => MapEntry(_$ChannelTypeEnumMap[k]!, e)),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

_$PreferenceSetImpl _$$PreferenceSetImplFromJson(Map<String, dynamic> json) =>
    _$PreferenceSetImpl(
      id: json['id'] as String,
      channelTypes: (json['channel_types'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry($enumDecode(_$ChannelTypeEnumMap, k), e as bool),
      ),
      workflows: _workflowPreferencesFromJson(
          json['workflows'] as Map<String, dynamic>?),
      categories: _workflowPreferencesFromJson(
          json['categories'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$PreferenceSetImplToJson(_$PreferenceSetImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_types': instance.channelTypes
          ?.map((k, e) => MapEntry(_$ChannelTypeEnumMap[k]!, e)),
      'workflows': _workflowPreferencesToJson(instance.workflows),
      'categories': _workflowPreferencesToJson(instance.categories),
    };

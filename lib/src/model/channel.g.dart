// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelDataImpl _$$ChannelDataImplFromJson(Map<String, dynamic> json) =>
    _$ChannelDataImpl(
      data: ChannelProviderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ChannelDataImplToJson(_$ChannelDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

_$ChannelProviderDataImpl _$$ChannelProviderDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ChannelProviderDataImpl(
      tokens:
          (json['tokens'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$ChannelProviderDataImplToJson(
        _$ChannelProviderDataImpl instance) =>
    <String, dynamic>{
      'tokens': instance.tokens,
    };

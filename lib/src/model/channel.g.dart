// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
      token: json['token'] as String,
      locale: json['locale'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'locale': instance.locale,
      'timezone': instance.timezone,
    };

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
      devices: (json['devices'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ChannelProviderDataImplToJson(
        _$ChannelProviderDataImpl instance) =>
    <String, dynamic>{
      'devices': instance.devices.map((e) => e.toJson()).toList(),
    };

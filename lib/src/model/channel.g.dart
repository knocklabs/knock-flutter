// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Device _$DeviceFromJson(Map<String, dynamic> json) => _Device(
      token: json['token'] as String,
      locale: json['locale'] as String?,
      timezone: json['timezone'] as String?,
    );

Map<String, dynamic> _$DeviceToJson(_Device instance) => <String, dynamic>{
      'token': instance.token,
      'locale': instance.locale,
      'timezone': instance.timezone,
    };

_ChannelData _$ChannelDataFromJson(Map<String, dynamic> json) => _ChannelData(
      data: ChannelProviderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChannelDataToJson(_ChannelData instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

_ChannelProviderData _$ChannelProviderDataFromJson(Map<String, dynamic> json) =>
    _ChannelProviderData(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChannelProviderDataToJson(
        _ChannelProviderData instance) =>
    <String, dynamic>{
      'devices': instance.devices.map((e) => e.toJson()).toList(),
    };

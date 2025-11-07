import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Device with _$Device {
  @JsonSerializable(explicitToJson: true)
  const factory Device({
    required String token,
    String? locale,
    String? timezone,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) =>
      _$DeviceFromJson(json);
}

@freezed
class ChannelData with _$ChannelData {
  @JsonSerializable(explicitToJson: true)
  const factory ChannelData({
    required ChannelProviderData data,
  }) = _ChannelData;

  factory ChannelData.forTokens(List<String> tokens) {
    return ChannelData(
      data: ChannelProviderData(
        devices: tokens.map((token) => Device(token: token)).toList(),
      ),
    );
  }

  factory ChannelData.forDevices(List<Device> devices) {
    return ChannelData(
      data: ChannelProviderData(
        devices: devices,
      ),
    );
  }

  factory ChannelData.fromJson(Map<String, dynamic> json) =>
      _$ChannelDataFromJson(json);
}

@freezed
class ChannelProviderData with _$ChannelProviderData {
  @JsonSerializable(explicitToJson: true)
  const factory ChannelProviderData({
    required List<Device> devices,
  }) = _ChannelProviderData;

  factory ChannelProviderData.fromJson(Map<String, dynamic> json) =>
      _$ChannelProviderDataFromJson(json);
}

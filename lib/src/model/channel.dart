import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class ChannelData with _$ChannelData {
  @JsonSerializable(explicitToJson: true)
  const factory ChannelData({
    required ChannelProviderData data,
  }) = _ChannelData;

  factory ChannelData.forTokens(List<String> tokens) {
    return ChannelData(
      data: ChannelProviderData(
        tokens: tokens,
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
    required List<String> tokens,
  }) = _ChannelProviderData;

  factory ChannelProviderData.fromJson(Map<String, dynamic> json) =>
      _$ChannelProviderDataFromJson(json);
}

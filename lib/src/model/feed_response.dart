// This file is not intended for export in the public interface.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/knock_flutter.dart';

part 'feed_response.freezed.dart';
part 'feed_response.g.dart';

@freezed
class OnNewMessageResponse with _$OnNewMessageResponse {
  @JsonSerializable(explicitToJson: true)
  const factory OnNewMessageResponse({
    required FeedMetadata metadata,
  }) = _OnNewMessageResponse;

  factory OnNewMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$OnNewMessageResponseFromJson(json);
}

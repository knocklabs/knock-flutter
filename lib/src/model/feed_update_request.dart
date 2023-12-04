// This file is not intended for export in the public interface.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/knock_flutter.dart';

part 'feed_update_request.freezed.dart';
part 'feed_update_request.g.dart';

@Freezed(toJson: true)
class FeedStatusUpdateRequest with _$FeedStatusUpdateRequest {
  @JsonSerializable(explicitToJson: true)
  const factory FeedStatusUpdateRequest({
    @JsonKey(name: 'message_ids') required List<String> ids,
  }) = _FeedStatusUpdateRequest;
}

@Freezed(toJson: true)
class BulkFeedStatusUpdateRequest with _$BulkFeedStatusUpdateRequest {
  @JsonSerializable(explicitToJson: true)
  const factory BulkFeedStatusUpdateRequest({
    @JsonKey(name: 'user_ids') required List<String> userIds,
    @JsonKey(name: 'engagement_status') FeedOptionsStatus? engagementStatus,
    FeedOptionsArchivedScope? archived,
    @JsonKey(name: 'has_tenant') bool? hasTenant,
    List<String>? tenants,
  }) = _BulkFeedStatusUpdateRequest;
}

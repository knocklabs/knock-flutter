import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/src/model/recipient.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

enum NetworkStatus {
  loading,
  fetchMore,
  ready,
  error,
}

enum FeedEvent {
  itemsReceivedPage('items.received.page'),
  itemsReceivedRealtime('items.received.realtime'),
  itemsArchived('items.archived'),
  itemsUnarchived('items.unarchived'),
  itemsSeen('items.seen'),
  itemsUnseen('items.unseen'),
  itemsRead('items.read'),
  itemsUnread('items.unread'),
  itemsAllArchived('items.all_archived'),
  itemsAllRead('items.all_read'),
  itemsAllSeen('items.all_seen');

  final String value;

  const FeedEvent(this.value);
}

enum BindableFeedEvent {
  itemsWildcard('items.*'),
  itemsReceivedWildcard('items.received.*'),
  itemsReceivedPage('items.received.page'),
  itemsReceivedRealtime('items.received.realtime'),
  itemsArchived('items.archived'),
  itemsUnarchived('items.unarchived'),
  itemsSeen('items.seen'),
  itemsUnseen('items.unseen'),
  itemsRead('items.read'),
  itemsUnread('items.unread'),
  itemsAllArchived('items.all_archived'),
  itemsAllRead('items.all_read'),
  itemsAllSeen('items.all_seen');

  final String value;

  const BindableFeedEvent(this.value);
}

@freezed
class Feed with _$Feed {
  factory Feed.initialState() {
    return const Feed(
      items: [],
      metadata: FeedMetadata(
        totalCount: 0,
        unreadCount: 0,
        unseenCount: 0,
      ),
      pageInfo: PageInfo(before: null, after: null, pageSize: 50),
      networkStatus: NetworkStatus.ready,
    );
  }

  @JsonSerializable(explicitToJson: true)
  const factory Feed({
    @JsonKey(name: 'entries') required List<FeedItem> items,
    @JsonKey(name: 'page_info') required PageInfo pageInfo,
    @JsonKey(name: 'meta') required FeedMetadata metadata,
    @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
    required NetworkStatus networkStatus,
  }) = _Feed;

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
}

@freezed
class FeedItem with _$FeedItem {
  @JsonSerializable(explicitToJson: true)
  const factory FeedItem({
    required String id,
    required List<Activity> activities,
    required List<Recipient> actors,
    required List<ContentBlock> blocks,
    @JsonKey(name: 'inserted_at') required String insertedAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'seen_at') required String? seenAt,
    @JsonKey(name: 'read_at') required String? readAt,
    @JsonKey(name: 'archived_at') required String? archivedAt,
    @JsonKey(name: 'total_activities') required int totalActivities,
    @JsonKey(name: 'total_actors') required int totalActors,
    required Map<String, dynamic>? data,
    required NotificationSource source,
    required String? tenant,
  }) = _FeedItem;

  factory FeedItem.fromJson(Map<String, dynamic> json) =>
      _$FeedItemFromJson(json);
}

@freezed
class Activity with _$Activity {
  @JsonSerializable(explicitToJson: true)
  const factory Activity({
    required String id,
    @JsonKey(name: 'inserted_at') required String insertedAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required Recipient recipient,
    required Recipient? actor,
    required Map<String, dynamic>? data,
  }) = _Activity;

  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}

enum ContentBlockType {
  markdown,
  text,
}

@freezed
class ContentBlock with _$ContentBlock {
  @JsonSerializable(explicitToJson: true)
  const factory ContentBlock({
    required String content,
    required String rendered,
    required ContentBlockType type,
    required String name,
  }) = _ContentBlock;

  factory ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ContentBlockFromJson(json);
}

@freezed
class NotificationSource with _$NotificationSource {
  @JsonSerializable(explicitToJson: true)
  const factory NotificationSource({
    required String key,
    @JsonKey(name: 'version_id') required String versionId,
  }) = _NotificationSource;

  factory NotificationSource.fromJson(Map<String, dynamic> json) =>
      _$NotificationSourceFromJson(json);
}

@freezed
class PageInfo with _$PageInfo {
  @JsonSerializable(explicitToJson: true)
  const factory PageInfo({
    required String? after,
    required String? before,
    @JsonKey(name: 'page_size') required int pageSize,
  }) = _PageInfo;

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);
}

@freezed
class FeedMetadata with _$FeedMetadata {
  @JsonSerializable(explicitToJson: true)
  const factory FeedMetadata({
    @JsonKey(name: 'total_count') required int totalCount,
    @JsonKey(name: 'unread_count') required int unreadCount,
    @JsonKey(name: 'unseen_count') required int unseenCount,
  }) = _FeedMetadata;

  factory FeedMetadata.fromJson(Map<String, dynamic> json) =>
      _$FeedMetadataFromJson(json);
}

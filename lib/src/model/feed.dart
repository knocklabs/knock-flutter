import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/src/model/recipient.dart';
import 'package:knock_flutter/src/util/date_time.dart';

part 'feed.freezed.dart';
part 'feed.g.dart';

enum NetworkStatus {
  loading,
  fetchMore,
  ready,
  error,
}

@freezed
class Feed with _$Feed {
  @JsonSerializable(explicitToJson: true)
  const factory Feed({
    @JsonKey(name: 'entries') required List<FeedItem> items,
    @JsonKey(name: 'page_info') required PageInfo pageInfo,
    @JsonKey(name: 'meta') required FeedMetadata metadata,
    @JsonKey(includeFromJson: true, defaultValue: NetworkStatus.ready)
    required NetworkStatus networkStatus,
  }) = _Feed;

  const Feed._();

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

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);

  bool get requestInFlight {
    return networkStatus == NetworkStatus.loading ||
        networkStatus == NetworkStatus.fetchMore;
  }
}

@freezed
class FeedItem with _$FeedItem {
  @JsonSerializable(explicitToJson: true)
  const factory FeedItem({
    @JsonKey(name: '__cursor') required String knockInternalCursor,
    required String id,
    required List<Activity> activities,
    required List<Recipient> actors,
    required List<ContentBlock> blocks,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'inserted_at')
    required DateTime insertedAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'seen_at')
    required DateTime? seenAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'read_at')
    required DateTime? readAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'archived_at')
    required DateTime? archivedAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'interacted_at')
    required DateTime? interactedAt,
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
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'inserted_at')
    required DateTime insertedAt,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
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
  @JsonKey(name: 'button_set')
  buttonSet,
}

@freezed
class ContentBlock with _$ContentBlock {
  const ContentBlock._(); // Private constructor for the base class

  const factory ContentBlock.markdown({
    required String name,
    required String content,
    required String rendered,
  }) = MarkdownContentBlock;

  const factory ContentBlock.text({
    required String name,
    required String content,
  }) = TextContentBlock;

  const factory ContentBlock.buttonSet({
    required String name,
    required List<BlockActionButton> buttons,
  }) = ButtonSetContentBlock;

  factory ContentBlock.fromJson(Map<String, dynamic> json) =>
      _$ContentBlockFromJson(modifyJsonForContentBlock(json));
}

Map<String, dynamic> modifyJsonForContentBlock(Map<String, dynamic> json) {
  final type = json['type'] as String?;
  json['runtimeType'] = type == 'button_set' ? 'buttonSet' : type;

  // Now call the generated function
  return json;
}

@freezed
class BlockActionButton with _$BlockActionButton {
  @JsonSerializable(explicitToJson: true)
  const factory BlockActionButton({
    required String name,
    required String label,
    required String action,
  }) = _BlockActionButton;

  factory BlockActionButton.fromJson(Map<String, dynamic> json) =>
      _$BlockActionButtonFromJson(json);
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

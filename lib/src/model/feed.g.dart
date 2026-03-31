// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Feed _$FeedFromJson(Map<String, dynamic> json) => _Feed(
      items: (json['entries'] as List<dynamic>)
          .map((e) => FeedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['page_info'] as Map<String, dynamic>),
      metadata: FeedMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      networkStatus:
          $enumDecodeNullable(_$NetworkStatusEnumMap, json['networkStatus']) ??
              NetworkStatus.ready,
    );

Map<String, dynamic> _$FeedToJson(_Feed instance) => <String, dynamic>{
      'entries': instance.items.map((e) => e.toJson()).toList(),
      'page_info': instance.pageInfo.toJson(),
      'meta': instance.metadata.toJson(),
      'networkStatus': _$NetworkStatusEnumMap[instance.networkStatus]!,
    };

const _$NetworkStatusEnumMap = {
  NetworkStatus.loading: 'loading',
  NetworkStatus.fetchMore: 'fetchMore',
  NetworkStatus.ready: 'ready',
  NetworkStatus.error: 'error',
};

_FeedItem _$FeedItemFromJson(Map<String, dynamic> json) => _FeedItem(
      knockInternalCursor: json['__cursor'] as String,
      id: json['id'] as String,
      activities: (json['activities'] as List<dynamic>)
          .map((e) => Activity.fromJson(e as Map<String, dynamic>))
          .toList(),
      actors: (json['actors'] as List<dynamic>)
          .map((e) => Recipient.fromJson(e as Map<String, dynamic>))
          .toList(),
      blocks: (json['blocks'] as List<dynamic>)
          .map((e) => ContentBlock.fromJson(e as Map<String, dynamic>))
          .toList(),
      insertedAt: const ISO8601DateTimeConverter()
          .fromJson(json['inserted_at'] as String),
      updatedAt: const ISO8601DateTimeConverter()
          .fromJson(json['updated_at'] as String),
      seenAt: _$JsonConverterFromJson<String, DateTime>(
          json['seen_at'], const ISO8601DateTimeConverter().fromJson),
      readAt: _$JsonConverterFromJson<String, DateTime>(
          json['read_at'], const ISO8601DateTimeConverter().fromJson),
      archivedAt: _$JsonConverterFromJson<String, DateTime>(
          json['archived_at'], const ISO8601DateTimeConverter().fromJson),
      interactedAt: _$JsonConverterFromJson<String, DateTime>(
          json['interacted_at'], const ISO8601DateTimeConverter().fromJson),
      totalActivities: (json['total_activities'] as num).toInt(),
      totalActors: (json['total_actors'] as num).toInt(),
      data: json['data'] as Map<String, dynamic>?,
      source:
          NotificationSource.fromJson(json['source'] as Map<String, dynamic>),
      tenant: json['tenant'] as String?,
    );

Map<String, dynamic> _$FeedItemToJson(_FeedItem instance) => <String, dynamic>{
      '__cursor': instance.knockInternalCursor,
      'id': instance.id,
      'activities': instance.activities.map((e) => e.toJson()).toList(),
      'actors': instance.actors.map((e) => e.toJson()).toList(),
      'blocks': instance.blocks.map((e) => e.toJson()).toList(),
      'inserted_at':
          const ISO8601DateTimeConverter().toJson(instance.insertedAt),
      'updated_at': const ISO8601DateTimeConverter().toJson(instance.updatedAt),
      'seen_at': _$JsonConverterToJson<String, DateTime>(
          instance.seenAt, const ISO8601DateTimeConverter().toJson),
      'read_at': _$JsonConverterToJson<String, DateTime>(
          instance.readAt, const ISO8601DateTimeConverter().toJson),
      'archived_at': _$JsonConverterToJson<String, DateTime>(
          instance.archivedAt, const ISO8601DateTimeConverter().toJson),
      'interacted_at': _$JsonConverterToJson<String, DateTime>(
          instance.interactedAt, const ISO8601DateTimeConverter().toJson),
      'total_activities': instance.totalActivities,
      'total_actors': instance.totalActors,
      'data': instance.data,
      'source': instance.source.toJson(),
      'tenant': instance.tenant,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_Activity _$ActivityFromJson(Map<String, dynamic> json) => _Activity(
      id: json['id'] as String,
      insertedAt: const ISO8601DateTimeConverter()
          .fromJson(json['inserted_at'] as String),
      updatedAt: const ISO8601DateTimeConverter()
          .fromJson(json['updated_at'] as String),
      recipient: Recipient.fromJson(json['recipient'] as Map<String, dynamic>),
      actor: json['actor'] == null
          ? null
          : Recipient.fromJson(json['actor'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ActivityToJson(_Activity instance) => <String, dynamic>{
      'id': instance.id,
      'inserted_at':
          const ISO8601DateTimeConverter().toJson(instance.insertedAt),
      'updated_at': const ISO8601DateTimeConverter().toJson(instance.updatedAt),
      'recipient': instance.recipient.toJson(),
      'actor': instance.actor?.toJson(),
      'data': instance.data,
    };

MarkdownContentBlock _$MarkdownContentBlockFromJson(
        Map<String, dynamic> json) =>
    MarkdownContentBlock(
      name: json['name'] as String,
      content: json['content'] as String,
      rendered: json['rendered'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$MarkdownContentBlockToJson(
        MarkdownContentBlock instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'rendered': instance.rendered,
      'runtimeType': instance.$type,
    };

TextContentBlock _$TextContentBlockFromJson(Map<String, dynamic> json) =>
    TextContentBlock(
      name: json['name'] as String,
      content: json['content'] as String,
      rendered: json['rendered'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$TextContentBlockToJson(TextContentBlock instance) =>
    <String, dynamic>{
      'name': instance.name,
      'content': instance.content,
      'rendered': instance.rendered,
      'runtimeType': instance.$type,
    };

ButtonSetContentBlock _$ButtonSetContentBlockFromJson(
        Map<String, dynamic> json) =>
    ButtonSetContentBlock(
      name: json['name'] as String,
      buttons: (json['buttons'] as List<dynamic>)
          .map((e) => BlockActionButton.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ButtonSetContentBlockToJson(
        ButtonSetContentBlock instance) =>
    <String, dynamic>{
      'name': instance.name,
      'buttons': instance.buttons,
      'runtimeType': instance.$type,
    };

_BlockActionButton _$BlockActionButtonFromJson(Map<String, dynamic> json) =>
    _BlockActionButton(
      name: json['name'] as String,
      label: json['label'] as String,
      action: json['action'] as String,
    );

Map<String, dynamic> _$BlockActionButtonToJson(_BlockActionButton instance) =>
    <String, dynamic>{
      'name': instance.name,
      'label': instance.label,
      'action': instance.action,
    };

_NotificationSource _$NotificationSourceFromJson(Map<String, dynamic> json) =>
    _NotificationSource(
      key: json['key'] as String,
      versionId: json['version_id'] as String,
    );

Map<String, dynamic> _$NotificationSourceToJson(_NotificationSource instance) =>
    <String, dynamic>{
      'key': instance.key,
      'version_id': instance.versionId,
    };

_PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => _PageInfo(
      after: json['after'] as String?,
      before: json['before'] as String?,
      pageSize: (json['page_size'] as num).toInt(),
    );

Map<String, dynamic> _$PageInfoToJson(_PageInfo instance) => <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
      'page_size': instance.pageSize,
    };

_FeedMetadata _$FeedMetadataFromJson(Map<String, dynamic> json) =>
    _FeedMetadata(
      totalCount: (json['total_count'] as num).toInt(),
      unreadCount: (json['unread_count'] as num).toInt(),
      unseenCount: (json['unseen_count'] as num).toInt(),
    );

Map<String, dynamic> _$FeedMetadataToJson(_FeedMetadata instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'unread_count': instance.unreadCount,
      'unseen_count': instance.unseenCount,
    };

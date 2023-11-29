// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedImpl _$$FeedImplFromJson(Map<String, dynamic> json) => _$FeedImpl(
      items: (json['entries'] as List<dynamic>)
          .map((e) => FeedItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageInfo: PageInfo.fromJson(json['page_info'] as Map<String, dynamic>),
      metadata: FeedMetadata.fromJson(json['meta'] as Map<String, dynamic>),
      networkStatus:
          $enumDecodeNullable(_$NetworkStatusEnumMap, json['networkStatus']) ??
              NetworkStatus.ready,
    );

Map<String, dynamic> _$$FeedImplToJson(_$FeedImpl instance) =>
    <String, dynamic>{
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

_$FeedItemImpl _$$FeedItemImplFromJson(Map<String, dynamic> json) =>
    _$FeedItemImpl(
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
      insertedAt: json['inserted_at'] as String,
      updatedAt: json['updated_at'] as String,
      seenAt: json['seen_at'] as String?,
      readAt: json['read_at'] as String?,
      archivedAt: json['archived_at'] as String?,
      totalActivities: json['total_activities'] as int,
      totalActors: json['total_actors'] as int,
      data: json['data'] as Map<String, dynamic>?,
      source:
          NotificationSource.fromJson(json['source'] as Map<String, dynamic>),
      tenant: json['tenant'] as String?,
    );

Map<String, dynamic> _$$FeedItemImplToJson(_$FeedItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activities': instance.activities.map((e) => e.toJson()).toList(),
      'actors': instance.actors.map((e) => e.toJson()).toList(),
      'blocks': instance.blocks.map((e) => e.toJson()).toList(),
      'inserted_at': instance.insertedAt,
      'updated_at': instance.updatedAt,
      'seen_at': instance.seenAt,
      'read_at': instance.readAt,
      'archived_at': instance.archivedAt,
      'total_activities': instance.totalActivities,
      'total_actors': instance.totalActors,
      'data': instance.data,
      'source': instance.source.toJson(),
      'tenant': instance.tenant,
    };

_$ActivityImpl _$$ActivityImplFromJson(Map<String, dynamic> json) =>
    _$ActivityImpl(
      id: json['id'] as String,
      insertedAt: json['inserted_at'] as String,
      updatedAt: json['updated_at'] as String,
      recipient: Recipient.fromJson(json['recipient'] as Map<String, dynamic>),
      actor: json['actor'] == null
          ? null
          : Recipient.fromJson(json['actor'] as Map<String, dynamic>),
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ActivityImplToJson(_$ActivityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inserted_at': instance.insertedAt,
      'updated_at': instance.updatedAt,
      'recipient': instance.recipient.toJson(),
      'actor': instance.actor?.toJson(),
      'data': instance.data,
    };

_$ContentBlockImpl _$$ContentBlockImplFromJson(Map<String, dynamic> json) =>
    _$ContentBlockImpl(
      content: json['content'] as String,
      rendered: json['rendered'] as String,
      type: $enumDecode(_$ContentBlockTypeEnumMap, json['type']),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ContentBlockImplToJson(_$ContentBlockImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'rendered': instance.rendered,
      'type': _$ContentBlockTypeEnumMap[instance.type]!,
      'name': instance.name,
    };

const _$ContentBlockTypeEnumMap = {
  ContentBlockType.markdown: 'markdown',
  ContentBlockType.text: 'text',
};

_$NotificationSourceImpl _$$NotificationSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationSourceImpl(
      key: json['key'] as String,
      versionId: json['version_id'] as String,
    );

Map<String, dynamic> _$$NotificationSourceImplToJson(
        _$NotificationSourceImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'version_id': instance.versionId,
    };

_$PageInfoImpl _$$PageInfoImplFromJson(Map<String, dynamic> json) =>
    _$PageInfoImpl(
      after: json['after'] as String?,
      before: json['before'] as String?,
      pageSize: json['page_size'] as int,
    );

Map<String, dynamic> _$$PageInfoImplToJson(_$PageInfoImpl instance) =>
    <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
      'page_size': instance.pageSize,
    };

_$FeedMetadataImpl _$$FeedMetadataImplFromJson(Map<String, dynamic> json) =>
    _$FeedMetadataImpl(
      totalCount: json['total_count'] as int,
      unreadCount: json['unread_count'] as int,
      unseenCount: json['unseen_count'] as int,
    );

Map<String, dynamic> _$$FeedMetadataImplToJson(_$FeedMetadataImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'unread_count': instance.unreadCount,
      'unseen_count': instance.unseenCount,
    };

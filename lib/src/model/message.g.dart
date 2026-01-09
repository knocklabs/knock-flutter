// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KnockMessageImpl _$$KnockMessageImplFromJson(Map<String, dynamic> json) =>
    _$KnockMessageImpl(
      id: json['id'] as String,
      channelId: json['channel_id'] as String,
      recipient: Recipient.fromJson(json['recipient'] as Map<String, dynamic>),
      source:
          KnockMessageSource.fromJson(json['source'] as Map<String, dynamic>),
      status: $enumDecode(_$KnockMessageDeliveryStatusEnumMap, json['status']),
      insertedAt: const ISO8601DateTimeConverter()
          .fromJson(json['inserted_at'] as String),
      updatedAt: const ISO8601DateTimeConverter()
          .fromJson(json['updated_at'] as String),
      actors: (json['actors'] as List<dynamic>?)
              ?.map((e) => Recipient.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      tenant: json['tenant'] as String?,
      engagementStatuses: (json['engagement_statuses'] as List<dynamic>?)
              ?.map(
                  (e) => $enumDecode(_$KnockMessageEngagementStatusEnumMap, e))
              .toList() ??
          const [],
      seenAt: _$JsonConverterFromJson<String, DateTime>(
          json['seen_at'], const ISO8601DateTimeConverter().fromJson),
      readAt: _$JsonConverterFromJson<String, DateTime>(
          json['read_at'], const ISO8601DateTimeConverter().fromJson),
      archivedAt: _$JsonConverterFromJson<String, DateTime>(
          json['archived_at'], const ISO8601DateTimeConverter().fromJson),
      clickedAt: _$JsonConverterFromJson<String, DateTime>(
          json['clicked_at'], const ISO8601DateTimeConverter().fromJson),
      interactedAt: _$JsonConverterFromJson<String, DateTime>(
          json['interacted_at'], const ISO8601DateTimeConverter().fromJson),
      linkClickedAt: _$JsonConverterFromJson<String, DateTime>(
          json['link_clicked_at'], const ISO8601DateTimeConverter().fromJson),
      data: json['data'] as Map<String, dynamic>?,
      metadata: json['metadata'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$KnockMessageImplToJson(_$KnockMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_id': instance.channelId,
      'recipient': instance.recipient.toJson(),
      'source': instance.source.toJson(),
      'status': _$KnockMessageDeliveryStatusEnumMap[instance.status]!,
      'inserted_at':
          const ISO8601DateTimeConverter().toJson(instance.insertedAt),
      'updated_at': const ISO8601DateTimeConverter().toJson(instance.updatedAt),
      'actors': instance.actors.map((e) => e.toJson()).toList(),
      'tenant': instance.tenant,
      'engagement_statuses': instance.engagementStatuses
          .map((e) => _$KnockMessageEngagementStatusEnumMap[e]!)
          .toList(),
      'seen_at': _$JsonConverterToJson<String, DateTime>(
          instance.seenAt, const ISO8601DateTimeConverter().toJson),
      'read_at': _$JsonConverterToJson<String, DateTime>(
          instance.readAt, const ISO8601DateTimeConverter().toJson),
      'archived_at': _$JsonConverterToJson<String, DateTime>(
          instance.archivedAt, const ISO8601DateTimeConverter().toJson),
      'clicked_at': _$JsonConverterToJson<String, DateTime>(
          instance.clickedAt, const ISO8601DateTimeConverter().toJson),
      'interacted_at': _$JsonConverterToJson<String, DateTime>(
          instance.interactedAt, const ISO8601DateTimeConverter().toJson),
      'link_clicked_at': _$JsonConverterToJson<String, DateTime>(
          instance.linkClickedAt, const ISO8601DateTimeConverter().toJson),
      'data': instance.data,
      'metadata': instance.metadata,
    };

const _$KnockMessageDeliveryStatusEnumMap = {
  KnockMessageDeliveryStatus.queued: 'queued',
  KnockMessageDeliveryStatus.sent: 'sent',
  KnockMessageDeliveryStatus.delivered: 'delivered',
  KnockMessageDeliveryStatus.deliveryAttempted: 'delivery_attempted',
  KnockMessageDeliveryStatus.undelivered: 'undelivered',
  KnockMessageDeliveryStatus.notSent: 'not_sent',
};

const _$KnockMessageEngagementStatusEnumMap = {
  KnockMessageEngagementStatus.seen: 'seen',
  KnockMessageEngagementStatus.read: 'read',
  KnockMessageEngagementStatus.interacted: 'interacted',
  KnockMessageEngagementStatus.archived: 'archived',
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

_$KnockMessageSourceImpl _$$KnockMessageSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$KnockMessageSourceImpl(
      key: json['key'] as String,
      versionId: json['version_id'] as String,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      stepRef: json['step_ref'] as String?,
    );

Map<String, dynamic> _$$KnockMessageSourceImplToJson(
        _$KnockMessageSourceImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'version_id': instance.versionId,
      'categories': instance.categories,
      'step_ref': instance.stepRef,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedOptionsImpl _$$FeedOptionsImplFromJson(Map<String, dynamic> json) =>
    _$FeedOptionsImpl(
      before: json['before'] as String?,
      after: json['after'] as String?,
      pageSize: json['page_size'] as int?,
      status: $enumDecodeNullable(_$FeedOptionsStatusEnumMap, json['status']),
      source: json['source'] as String?,
      tenant: json['tenant'] as String?,
      hasTenant: json['has_tenant'] as bool?,
      archived: $enumDecodeNullable(
              _$FeedOptionsArchivedScopeEnumMap, json['archived']) ??
          FeedOptionsArchivedScope.exclude,
      triggerData: json['trigger_data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$FeedOptionsImplToJson(_$FeedOptionsImpl instance) =>
    <String, dynamic>{
      'before': instance.before,
      'after': instance.after,
      'page_size': instance.pageSize,
      'status': _$FeedOptionsStatusEnumMap[instance.status],
      'source': instance.source,
      'tenant': instance.tenant,
      'has_tenant': instance.hasTenant,
      'archived': _$FeedOptionsArchivedScopeEnumMap[instance.archived]!,
      'trigger_data': instance.triggerData,
    };

const _$FeedOptionsStatusEnumMap = {
  FeedOptionsStatus.unread: 'unread',
  FeedOptionsStatus.read: 'read',
  FeedOptionsStatus.unseen: 'unseen',
  FeedOptionsStatus.seen: 'seen',
  FeedOptionsStatus.all: 'all',
};

const _$FeedOptionsArchivedScopeEnumMap = {
  FeedOptionsArchivedScope.include: 'include',
  FeedOptionsArchivedScope.exclude: 'exclude',
  FeedOptionsArchivedScope.only: 'only',
};

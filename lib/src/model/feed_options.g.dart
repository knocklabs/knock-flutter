// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InsertedAtDateRangeImpl _$$InsertedAtDateRangeImplFromJson(
        Map<String, dynamic> json) =>
    _$InsertedAtDateRangeImpl(
      start: json['start'] as String?,
      end: json['end'] as String?,
      inclusive: json['inclusive'] as bool?,
    );

Map<String, dynamic> _$$InsertedAtDateRangeImplToJson(
        _$InsertedAtDateRangeImpl instance) =>
    <String, dynamic>{
      'start': instance.start,
      'end': instance.end,
      'inclusive': instance.inclusive,
    };

_$FeedOptionsImpl _$$FeedOptionsImplFromJson(Map<String, dynamic> json) =>
    _$FeedOptionsImpl(
      before: json['before'] as String?,
      after: json['after'] as String?,
      pageSize: (json['page_size'] as num?)?.toInt(),
      status: $enumDecodeNullable(_$FeedOptionsStatusEnumMap, json['status']),
      source: json['source'] as String?,
      tenant: json['tenant'] as String?,
      hasTenant: json['has_tenant'] as bool?,
      workflowCategories: (json['workflow_categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      archived: $enumDecodeNullable(
              _$FeedOptionsArchivedScopeEnumMap, json['archived']) ??
          FeedOptionsArchivedScope.exclude,
      triggerData: json['trigger_data'] as Map<String, dynamic>?,
      insertedAtDateRange: json['inserted_at_date_range'] == null
          ? null
          : InsertedAtDateRange.fromJson(
              json['inserted_at_date_range'] as Map<String, dynamic>),
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
      'workflow_categories': instance.workflowCategories,
      'archived': _$FeedOptionsArchivedScopeEnumMap[instance.archived]!,
      'trigger_data': instance.triggerData,
      'inserted_at_date_range': instance.insertedAtDateRange?.toJson(),
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

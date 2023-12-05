// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed_update_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedStatusUpdateRequestImpl _$$FeedStatusUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedStatusUpdateRequestImpl(
      ids: (json['message_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$FeedStatusUpdateRequestImplToJson(
        _$FeedStatusUpdateRequestImpl instance) =>
    <String, dynamic>{
      'message_ids': instance.ids,
    };

_$BulkFeedStatusUpdateRequestImpl _$$BulkFeedStatusUpdateRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$BulkFeedStatusUpdateRequestImpl(
      userIds:
          (json['user_ids'] as List<dynamic>).map((e) => e as String).toList(),
      engagementStatus: $enumDecodeNullable(
          _$FeedOptionsStatusEnumMap, json['engagement_status']),
      archived: $enumDecodeNullable(
          _$FeedOptionsArchivedScopeEnumMap, json['archived']),
      hasTenant: json['has_tenant'] as bool?,
      tenants:
          (json['tenants'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BulkFeedStatusUpdateRequestImplToJson(
        _$BulkFeedStatusUpdateRequestImpl instance) =>
    <String, dynamic>{
      'user_ids': instance.userIds,
      'engagement_status':
          _$FeedOptionsStatusEnumMap[instance.engagementStatus],
      'archived': _$FeedOptionsArchivedScopeEnumMap[instance.archived],
      'has_tenant': instance.hasTenant,
      'tenants': instance.tenants,
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

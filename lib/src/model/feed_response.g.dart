// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnNewMessageResponseImpl _$$OnNewMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$OnNewMessageResponseImpl(
      metadata: FeedMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OnNewMessageResponseImplToJson(
        _$OnNewMessageResponseImpl instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
    };

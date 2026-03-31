// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'feed_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OnNewMessageResponse _$OnNewMessageResponseFromJson(
        Map<String, dynamic> json) =>
    _OnNewMessageResponse(
      metadata: FeedMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OnNewMessageResponseToJson(
        _OnNewMessageResponse instance) =>
    <String, dynamic>{
      'metadata': instance.metadata.toJson(),
    };

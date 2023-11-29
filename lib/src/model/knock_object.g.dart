// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'knock_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KnockObjectImpl _$$KnockObjectImplFromJson(Map<String, dynamic> json) =>
    _$KnockObjectImpl(
      id: json['id'] as String,
      collection: json['collection'] as String,
      properties: json['properties'] as Map<String, dynamic>,
      updatedAt: json['updated_at'] as String,
      createdAt: json['created_at'] as String?,
    );

Map<String, dynamic> _$$KnockObjectImplToJson(_$KnockObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'collection': instance.collection,
      'properties': instance.properties,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };

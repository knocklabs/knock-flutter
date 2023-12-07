// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      updatedAt: const ISO8601DateTimeConverter()
          .fromJson(json['updated_at'] as String),
      email: json['email'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      avatar: json['avatar'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime>(
          json['created_at'], const ISO8601DateTimeConverter().fromJson),
    );

const _$$UserImplFieldMap = <String, String>{
  'id': 'id',
  'updatedAt': 'updated_at',
  'email': 'email',
  'name': 'name',
  'phoneNumber': 'phone_number',
  'avatar': 'avatar',
  'createdAt': 'created_at',
};

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updated_at': const ISO8601DateTimeConverter().toJson(instance.updatedAt),
      'email': instance.email,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'created_at': _$JsonConverterToJson<String, DateTime>(
          instance.createdAt, const ISO8601DateTimeConverter().toJson),
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

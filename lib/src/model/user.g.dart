// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String,
      email: json['email'] as String?,
      name: json['name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      avatar: json['avatar'] as String?,
      updatedAt: json['updated_at'] as String,
      createdAt: json['created_at'] as String?,
    );

const _$$UserImplFieldMap = <String, String>{
  'id': 'id',
  'email': 'email',
  'name': 'name',
  'phoneNumber': 'phone_number',
  'avatar': 'avatar',
  'updatedAt': 'updated_at',
  'createdAt': 'created_at',
};

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'avatar': instance.avatar,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
    };

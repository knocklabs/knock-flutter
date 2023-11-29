import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class User with _$User {
  User._();

  factory User({
    required String id,
    String? email,
    String? name,
    String? phoneNumber,
    String? avatar,
    required String updatedAt,
    String? createdAt,
    Map<String, dynamic>? properties,
    bool includeNulls = false,
  }) {
    final Map<String, dynamic> fields = Map.from(properties ?? {});
    fields['id'] = id;
    fields['email'] = email;
    fields['name'] = name;
    fields['phone_number'] = phoneNumber;
    fields['avatar'] = avatar;
    fields['updated_at'] = updatedAt;
    fields['created_at'] = createdAt;
    if (!includeNulls) {
      fields.removeWhere((key, value) => value == null);
    }

    return User._internal(fields: fields);
  }

  factory User._internal({required Map<String, dynamic> fields}) {
    final sorted = SplayTreeMap<String, dynamic>.from(fields);
    return  _User(fields: sorted);
  }

  String get id => get('id');

  String? get email => get('email');

  User setEmail(String? value) => set('email', value);

  String? get name => get('name');

  User setName(String? value) => set('name', value);

  String? get phoneNumber => get('phone_number');

  User setPhoneNumber(String? value) => set('phone_number', value);

  String? get avatar => get('avatar');

  User setAvatar(String? value) => set('avatar', value);

  String get updatedAt => get('updated_at');

  User setUpdatedAt(String? value) => set('updated_at', value);

  String? get createdAt => get('created_at');

  User setCreatedAt(String? value) => set('created_at', value);

  dynamic get(String name) => fields[name];

  User set(String name, dynamic value) {
    if (name == 'id') {
      throw ArgumentError('User id can not be changed once created');
    }

    final copy = Map<String, dynamic>.from(fields);
    copy[name] = value;
    return copyWith(fields: copy);
  }

  factory User.fromJson(Map<String, dynamic> json) =>
      User._internal(fields: json);

  Map<String, dynamic> toJson() => fields;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/src/util/date_time.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(createFieldMap: true)
  factory User({
    required String id,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'updated_at')
    required DateTime updatedAt,
    String? email,
    String? name,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? avatar,
    @ISO8601DateTimeConverter()
    @JsonKey(name: 'created_at')
    DateTime? createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Map<String, dynamic>? properties,
  }) = _User;

  User._();

  factory User.fromJson(Map<String, dynamic> json) {
    return const UserConverter().fromJson(json);
  }

  Map<String, dynamic> toJson() {
    return const UserConverter().toJson(this);
  }

  dynamic get(String name) => properties?[name];

  User set(String name, dynamic value) {
    if (name == 'id') {
      throw ArgumentError('User id can not be changed once created');
    }

    final copy = Map<String, dynamic>.from(properties ?? {});
    copy[name] = value;
    return copyWith(properties: copy);
  }
}

class UserConverter implements JsonConverter<User, Map<String, dynamic>> {
  const UserConverter();

  @override
  User fromJson(Map<String, dynamic> json) {
    final user = _$$UserImplFromJson(json);
    final keys = _$$UserImplFieldMap.values;
    json.removeWhere((key, value) => keys.contains(key));
    return user.copyWith(properties: json.isEmpty ? null : json);
  }

  @override
  Map<String, dynamic> toJson(User object) {
    if (object is _$UserImpl) {
      final json = _$$UserImplToJson(object)..addAll(object.properties ?? {});
      return json;
    } else {
      throw StateError(
        'Trying to convert an unexpected User object to json: $object',
      );
    }
  }
}

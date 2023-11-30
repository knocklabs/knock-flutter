import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  User._();

  @JsonSerializable(createFieldMap: true)
  factory User({
    required String id,
    String? email,
    String? name,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    String? avatar,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(includeToJson: false, includeFromJson: false)
    Map<String, dynamic>? properties,
  }) = _User;

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
      final json = _$$UserImplToJson(object);
      json.addAll(object.properties ?? {});
      return json;
    } else {
      throw StateError(
          'Trying to convert an unexpected User object to json: $object');
    }
  }
}

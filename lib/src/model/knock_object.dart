import 'package:freezed_annotation/freezed_annotation.dart';

part 'knock_object.freezed.dart';
part 'knock_object.g.dart';

@freezed
class KnockObject with _$KnockObject {
  @JsonSerializable(explicitToJson: true)
  const factory KnockObject({
    required String id,
    required String collection,
    required Map<String, dynamic> properties,
    @JsonKey(name: 'updated_at') required String updatedAt,
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _KnockObject;

  factory KnockObject.fromJson(Map<String, dynamic> json) =>
      _$KnockObjectFromJson(json);
}

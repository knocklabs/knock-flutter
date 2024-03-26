// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knock_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KnockObject _$KnockObjectFromJson(Map<String, dynamic> json) {
  return _KnockObject.fromJson(json);
}

/// @nodoc
mixin _$KnockObject {
  String get id => throw _privateConstructorUsedError;
  String get collection => throw _privateConstructorUsedError;
  Map<String, dynamic> get properties => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KnockObjectCopyWith<KnockObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnockObjectCopyWith<$Res> {
  factory $KnockObjectCopyWith(
          KnockObject value, $Res Function(KnockObject) then) =
      _$KnockObjectCopyWithImpl<$Res, KnockObject>;
  @useResult
  $Res call(
      {String id,
      String collection,
      Map<String, dynamic> properties,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$KnockObjectCopyWithImpl<$Res, $Val extends KnockObject>
    implements $KnockObjectCopyWith<$Res> {
  _$KnockObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collection = null,
    Object? properties = null,
    Object? updatedAt = null,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KnockObjectImplCopyWith<$Res>
    implements $KnockObjectCopyWith<$Res> {
  factory _$$KnockObjectImplCopyWith(
          _$KnockObjectImpl value, $Res Function(_$KnockObjectImpl) then) =
      __$$KnockObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String collection,
      Map<String, dynamic> properties,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class __$$KnockObjectImplCopyWithImpl<$Res>
    extends _$KnockObjectCopyWithImpl<$Res, _$KnockObjectImpl>
    implements _$$KnockObjectImplCopyWith<$Res> {
  __$$KnockObjectImplCopyWithImpl(
      _$KnockObjectImpl _value, $Res Function(_$KnockObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collection = null,
    Object? properties = null,
    Object? updatedAt = null,
    Object? createdAt = freezed,
  }) {
    return _then(_$KnockObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _value._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$KnockObjectImpl implements _KnockObject {
  const _$KnockObjectImpl(
      {required this.id,
      required this.collection,
      required final Map<String, dynamic> properties,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt})
      : _properties = properties;

  factory _$KnockObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$KnockObjectImplFromJson(json);

  @override
  final String id;
  @override
  final String collection;
  final Map<String, dynamic> _properties;
  @override
  Map<String, dynamic> get properties {
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_properties);
  }

  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'KnockObject(id: $id, collection: $collection, properties: $properties, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KnockObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, collection,
      const DeepCollectionEquality().hash(_properties), updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KnockObjectImplCopyWith<_$KnockObjectImpl> get copyWith =>
      __$$KnockObjectImplCopyWithImpl<_$KnockObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KnockObjectImplToJson(
      this,
    );
  }
}

abstract class _KnockObject implements KnockObject {
  const factory _KnockObject(
          {required final String id,
          required final String collection,
          required final Map<String, dynamic> properties,
          @JsonKey(name: 'updated_at') required final String updatedAt,
          @JsonKey(name: 'created_at') final String? createdAt}) =
      _$KnockObjectImpl;

  factory _KnockObject.fromJson(Map<String, dynamic> json) =
      _$KnockObjectImpl.fromJson;

  @override
  String get id;
  @override
  String get collection;
  @override
  Map<String, dynamic> get properties;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$KnockObjectImplCopyWith<_$KnockObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

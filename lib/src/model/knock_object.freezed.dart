// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'knock_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KnockObject {
  String get id;
  String get collection;
  Map<String, dynamic> get properties;
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @JsonKey(name: 'created_at')
  String? get createdAt;

  /// Create a copy of KnockObject
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnockObjectCopyWith<KnockObject> get copyWith =>
      _$KnockObjectCopyWithImpl<KnockObject>(this as KnockObject, _$identity);

  /// Serializes this KnockObject to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnockObject &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collection,
      const DeepCollectionEquality().hash(properties), updatedAt, createdAt);

  @override
  String toString() {
    return 'KnockObject(id: $id, collection: $collection, properties: $properties, updatedAt: $updatedAt, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $KnockObjectCopyWith<$Res> {
  factory $KnockObjectCopyWith(
          KnockObject value, $Res Function(KnockObject) _then) =
      _$KnockObjectCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String collection,
      Map<String, dynamic> properties,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'created_at') String? createdAt});
}

/// @nodoc
class _$KnockObjectCopyWithImpl<$Res> implements $KnockObjectCopyWith<$Res> {
  _$KnockObjectCopyWithImpl(this._self, this._then);

  final KnockObject _self;
  final $Res Function(KnockObject) _then;

  /// Create a copy of KnockObject
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? collection = null,
    Object? properties = null,
    Object? updatedAt = null,
    Object? createdAt = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _self.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [KnockObject].
extension KnockObjectPatterns on KnockObject {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_KnockObject value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockObject() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_KnockObject value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockObject():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_KnockObject value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockObject() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String id,
            String collection,
            Map<String, dynamic> properties,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _KnockObject() when $default != null:
        return $default(_that.id, _that.collection, _that.properties,
            _that.updatedAt, _that.createdAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String id,
            String collection,
            Map<String, dynamic> properties,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'created_at') String? createdAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockObject():
        return $default(_that.id, _that.collection, _that.properties,
            _that.updatedAt, _that.createdAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String id,
            String collection,
            Map<String, dynamic> properties,
            @JsonKey(name: 'updated_at') String updatedAt,
            @JsonKey(name: 'created_at') String? createdAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _KnockObject() when $default != null:
        return $default(_that.id, _that.collection, _that.properties,
            _that.updatedAt, _that.createdAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _KnockObject implements KnockObject {
  const _KnockObject(
      {required this.id,
      required this.collection,
      required final Map<String, dynamic> properties,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt})
      : _properties = properties;
  factory _KnockObject.fromJson(Map<String, dynamic> json) =>
      _$KnockObjectFromJson(json);

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

  /// Create a copy of KnockObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KnockObjectCopyWith<_KnockObject> get copyWith =>
      __$KnockObjectCopyWithImpl<_KnockObject>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnockObjectToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KnockObject &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, collection,
      const DeepCollectionEquality().hash(_properties), updatedAt, createdAt);

  @override
  String toString() {
    return 'KnockObject(id: $id, collection: $collection, properties: $properties, updatedAt: $updatedAt, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$KnockObjectCopyWith<$Res>
    implements $KnockObjectCopyWith<$Res> {
  factory _$KnockObjectCopyWith(
          _KnockObject value, $Res Function(_KnockObject) _then) =
      __$KnockObjectCopyWithImpl;
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
class __$KnockObjectCopyWithImpl<$Res> implements _$KnockObjectCopyWith<$Res> {
  __$KnockObjectCopyWithImpl(this._self, this._then);

  final _KnockObject _self;
  final $Res Function(_KnockObject) _then;

  /// Create a copy of KnockObject
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? collection = null,
    Object? properties = null,
    Object? updatedAt = null,
    Object? createdAt = freezed,
  }) {
    return _then(_KnockObject(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      collection: null == collection
          ? _self.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      properties: null == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

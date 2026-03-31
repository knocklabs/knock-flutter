// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$User {
  String get id;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  String? get email;
  String? get name;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  String? get avatar;
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @JsonKey(includeToJson: false, includeFromJson: false)
  Map<String, dynamic>? get properties;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserCopyWith<User> get copyWith =>
      _$UserCopyWithImpl<User>(this as User, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      email,
      name,
      phoneNumber,
      avatar,
      createdAt,
      const DeepCollectionEquality().hash(properties));

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, email: $email, name: $name, phoneNumber: $phoneNumber, avatar: $avatar, createdAt: $createdAt, properties: $properties)';
  }
}

/// @nodoc
abstract mixin class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) _then) =
      _$UserCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      String? email,
      String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? avatar,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Map<String, dynamic>? properties});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? properties = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      properties: freezed == properties
          ? _self.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
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
    TResult Function(_User value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
    TResult Function(_User value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
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
    TResult? Function(_User value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            String? email,
            String? name,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            String? avatar,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'created_at')
            DateTime? createdAt,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Map<String, dynamic>? properties)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.id, _that.updatedAt, _that.email, _that.name,
            _that.phoneNumber, _that.avatar, _that.createdAt, _that.properties);
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            String? email,
            String? name,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            String? avatar,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'created_at')
            DateTime? createdAt,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Map<String, dynamic>? properties)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User():
        return $default(_that.id, _that.updatedAt, _that.email, _that.name,
            _that.phoneNumber, _that.avatar, _that.createdAt, _that.properties);
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
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'updated_at')
            DateTime updatedAt,
            String? email,
            String? name,
            @JsonKey(name: 'phone_number') String? phoneNumber,
            String? avatar,
            @ISO8601DateTimeConverter()
            @JsonKey(name: 'created_at')
            DateTime? createdAt,
            @JsonKey(includeToJson: false, includeFromJson: false)
            Map<String, dynamic>? properties)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _User() when $default != null:
        return $default(_that.id, _that.updatedAt, _that.email, _that.name,
            _that.phoneNumber, _that.avatar, _that.createdAt, _that.properties);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(createFieldMap: true)
class _User extends User {
  _User(
      {required this.id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      required this.updatedAt,
      this.email,
      this.name,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.avatar,
      @ISO8601DateTimeConverter() @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final Map<String, dynamic>? properties})
      : _properties = properties,
        super._();

  @override
  final String id;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String? email;
  @override
  final String? name;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final String? avatar;
  @override
  @ISO8601DateTimeConverter()
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  final Map<String, dynamic>? _properties;
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  Map<String, dynamic>? get properties {
    final value = _properties;
    if (value == null) return null;
    if (_properties is EqualUnmodifiableMapView) return _properties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._properties, _properties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      updatedAt,
      email,
      name,
      phoneNumber,
      avatar,
      createdAt,
      const DeepCollectionEquality().hash(_properties));

  @override
  String toString() {
    return 'User(id: $id, updatedAt: $updatedAt, email: $email, name: $name, phoneNumber: $phoneNumber, avatar: $avatar, createdAt: $createdAt, properties: $properties)';
  }
}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) =
      __$UserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'updated_at')
      DateTime updatedAt,
      String? email,
      String? name,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      String? avatar,
      @ISO8601DateTimeConverter()
      @JsonKey(name: 'created_at')
      DateTime? createdAt,
      @JsonKey(includeToJson: false, includeFromJson: false)
      Map<String, dynamic>? properties});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? updatedAt = null,
    Object? email = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? avatar = freezed,
    Object? createdAt = freezed,
    Object? properties = freezed,
  }) {
    return _then(_User(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _self.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      properties: freezed == properties
          ? _self._properties
          : properties // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

// dart format on

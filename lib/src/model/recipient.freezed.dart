// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recipient {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Recipient);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Recipient()';
  }
}

/// @nodoc
class $RecipientCopyWith<$Res> {
  $RecipientCopyWith(Recipient _, $Res Function(Recipient) __);
}

/// Adds pattern-matching-related methods to [Recipient].
extension RecipientPatterns on Recipient {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipientUser value)? user,
    TResult Function(RecipientKnockObject value)? knockObject,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser() when user != null:
        return user(_that);
      case RecipientKnockObject() when knockObject != null:
        return knockObject(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(RecipientUser value) user,
    required TResult Function(RecipientKnockObject value) knockObject,
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser():
        return user(_that);
      case RecipientKnockObject():
        return knockObject(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipientUser value)? user,
    TResult? Function(RecipientKnockObject value)? knockObject,
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser() when user != null:
        return user(_that);
      case RecipientKnockObject() when knockObject != null:
        return knockObject(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(KnockObject object)? knockObject,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser() when user != null:
        return user(_that.user);
      case RecipientKnockObject() when knockObject != null:
        return knockObject(_that.object);
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
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(KnockObject object) knockObject,
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser():
        return user(_that.user);
      case RecipientKnockObject():
        return knockObject(_that.object);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(KnockObject object)? knockObject,
  }) {
    final _that = this;
    switch (_that) {
      case RecipientUser() when user != null:
        return user(_that.user);
      case RecipientKnockObject() when knockObject != null:
        return knockObject(_that.object);
      case _:
        return null;
    }
  }
}

/// @nodoc

class RecipientUser extends Recipient {
  RecipientUser(this.user) : super._();

  final User user;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecipientUserCopyWith<RecipientUser> get copyWith =>
      _$RecipientUserCopyWithImpl<RecipientUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipientUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'Recipient.user(user: $user)';
  }
}

/// @nodoc
abstract mixin class $RecipientUserCopyWith<$Res>
    implements $RecipientCopyWith<$Res> {
  factory $RecipientUserCopyWith(
          RecipientUser value, $Res Function(RecipientUser) _then) =
      _$RecipientUserCopyWithImpl;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RecipientUserCopyWithImpl<$Res>
    implements $RecipientUserCopyWith<$Res> {
  _$RecipientUserCopyWithImpl(this._self, this._then);

  final RecipientUser _self;
  final $Res Function(RecipientUser) _then;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = null,
  }) {
    return _then(RecipientUser(
      null == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_self.user, (value) {
      return _then(_self.copyWith(user: value));
    });
  }
}

/// @nodoc

class RecipientKnockObject extends Recipient {
  RecipientKnockObject(this.object) : super._();

  final KnockObject object;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecipientKnockObjectCopyWith<RecipientKnockObject> get copyWith =>
      _$RecipientKnockObjectCopyWithImpl<RecipientKnockObject>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipientKnockObject &&
            (identical(other.object, object) || other.object == object));
  }

  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  String toString() {
    return 'Recipient.knockObject(object: $object)';
  }
}

/// @nodoc
abstract mixin class $RecipientKnockObjectCopyWith<$Res>
    implements $RecipientCopyWith<$Res> {
  factory $RecipientKnockObjectCopyWith(RecipientKnockObject value,
          $Res Function(RecipientKnockObject) _then) =
      _$RecipientKnockObjectCopyWithImpl;
  @useResult
  $Res call({KnockObject object});

  $KnockObjectCopyWith<$Res> get object;
}

/// @nodoc
class _$RecipientKnockObjectCopyWithImpl<$Res>
    implements $RecipientKnockObjectCopyWith<$Res> {
  _$RecipientKnockObjectCopyWithImpl(this._self, this._then);

  final RecipientKnockObject _self;
  final $Res Function(RecipientKnockObject) _then;

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? object = null,
  }) {
    return _then(RecipientKnockObject(
      null == object
          ? _self.object
          : object // ignore: cast_nullable_to_non_nullable
              as KnockObject,
    ));
  }

  /// Create a copy of Recipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KnockObjectCopyWith<$Res> get object {
    return $KnockObjectCopyWith<$Res>(_self.object, (value) {
      return _then(_self.copyWith(object: value));
    });
  }
}

// dart format on

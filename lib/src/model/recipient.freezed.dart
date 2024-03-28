// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Recipient {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(KnockObject object) knockObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(KnockObject object)? knockObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(KnockObject object)? knockObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipientUser value) user,
    required TResult Function(RecipientKnockObject value) knockObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipientUser value)? user,
    TResult? Function(RecipientKnockObject value)? knockObject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipientUser value)? user,
    TResult Function(RecipientKnockObject value)? knockObject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res, Recipient>;
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res, $Val extends Recipient>
    implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipientUserImplCopyWith<$Res> {
  factory _$$RecipientUserImplCopyWith(
          _$RecipientUserImpl value, $Res Function(_$RecipientUserImpl) then) =
      __$$RecipientUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RecipientUserImplCopyWithImpl<$Res>
    extends _$RecipientCopyWithImpl<$Res, _$RecipientUserImpl>
    implements _$$RecipientUserImplCopyWith<$Res> {
  __$$RecipientUserImplCopyWithImpl(
      _$RecipientUserImpl _value, $Res Function(_$RecipientUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$RecipientUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$RecipientUserImpl extends RecipientUser {
  _$RecipientUserImpl(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'Recipient.user(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientUserImplCopyWith<_$RecipientUserImpl> get copyWith =>
      __$$RecipientUserImplCopyWithImpl<_$RecipientUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(KnockObject object) knockObject,
  }) {
    return user(this.user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(KnockObject object)? knockObject,
  }) {
    return user?.call(this.user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(KnockObject object)? knockObject,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this.user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipientUser value) user,
    required TResult Function(RecipientKnockObject value) knockObject,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipientUser value)? user,
    TResult? Function(RecipientKnockObject value)? knockObject,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipientUser value)? user,
    TResult Function(RecipientKnockObject value)? knockObject,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class RecipientUser extends Recipient {
  factory RecipientUser(final User user) = _$RecipientUserImpl;
  RecipientUser._() : super._();

  User get user;
  @JsonKey(ignore: true)
  _$$RecipientUserImplCopyWith<_$RecipientUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipientKnockObjectImplCopyWith<$Res> {
  factory _$$RecipientKnockObjectImplCopyWith(_$RecipientKnockObjectImpl value,
          $Res Function(_$RecipientKnockObjectImpl) then) =
      __$$RecipientKnockObjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KnockObject object});

  $KnockObjectCopyWith<$Res> get object;
}

/// @nodoc
class __$$RecipientKnockObjectImplCopyWithImpl<$Res>
    extends _$RecipientCopyWithImpl<$Res, _$RecipientKnockObjectImpl>
    implements _$$RecipientKnockObjectImplCopyWith<$Res> {
  __$$RecipientKnockObjectImplCopyWithImpl(_$RecipientKnockObjectImpl _value,
      $Res Function(_$RecipientKnockObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? object = null,
  }) {
    return _then(_$RecipientKnockObjectImpl(
      null == object
          ? _value.object
          : object // ignore: cast_nullable_to_non_nullable
              as KnockObject,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KnockObjectCopyWith<$Res> get object {
    return $KnockObjectCopyWith<$Res>(_value.object, (value) {
      return _then(_value.copyWith(object: value));
    });
  }
}

/// @nodoc

class _$RecipientKnockObjectImpl extends RecipientKnockObject {
  _$RecipientKnockObjectImpl(this.object) : super._();

  @override
  final KnockObject object;

  @override
  String toString() {
    return 'Recipient.knockObject(object: $object)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipientKnockObjectImpl &&
            (identical(other.object, object) || other.object == object));
  }

  @override
  int get hashCode => Object.hash(runtimeType, object);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipientKnockObjectImplCopyWith<_$RecipientKnockObjectImpl>
      get copyWith =>
          __$$RecipientKnockObjectImplCopyWithImpl<_$RecipientKnockObjectImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) user,
    required TResult Function(KnockObject object) knockObject,
  }) {
    return knockObject(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? user,
    TResult? Function(KnockObject object)? knockObject,
  }) {
    return knockObject?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? user,
    TResult Function(KnockObject object)? knockObject,
    required TResult orElse(),
  }) {
    if (knockObject != null) {
      return knockObject(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipientUser value) user,
    required TResult Function(RecipientKnockObject value) knockObject,
  }) {
    return knockObject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RecipientUser value)? user,
    TResult? Function(RecipientKnockObject value)? knockObject,
  }) {
    return knockObject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipientUser value)? user,
    TResult Function(RecipientKnockObject value)? knockObject,
    required TResult orElse(),
  }) {
    if (knockObject != null) {
      return knockObject(this);
    }
    return orElse();
  }
}

abstract class RecipientKnockObject extends Recipient {
  factory RecipientKnockObject(final KnockObject object) =
      _$RecipientKnockObjectImpl;
  RecipientKnockObject._() : super._();

  KnockObject get object;
  @JsonKey(ignore: true)
  _$$RecipientKnockObjectImplCopyWith<_$RecipientKnockObjectImpl>
      get copyWith => throw _privateConstructorUsedError;
}

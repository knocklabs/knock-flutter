// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedEvent {
  FeedEventType get eventType;
  List<FeedItem> get items;
  FeedMetadata get metadata;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedEventCopyWith<FeedEvent> get copyWith =>
      _$FeedEventCopyWithImpl<FeedEvent>(this as FeedEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedEvent &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(items), metadata);

  @override
  String toString() {
    return 'FeedEvent(eventType: $eventType, items: $items, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) _then) =
      _$FeedEventCopyWithImpl;
  @useResult
  $Res call(
      {FeedEventType eventType, List<FeedItem> items, FeedMetadata metadata});

  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res> implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._self, this._then);

  final FeedEvent _self;
  final $Res Function(FeedEvent) _then;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? items = null,
    Object? metadata = null,
  }) {
    return _then(_self.copyWith(
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as FeedEventType,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ));
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FeedEvent].
extension FeedEventPatterns on FeedEvent {
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
    TResult Function(_FeedEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedEvent() when $default != null:
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
    TResult Function(_FeedEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedEvent():
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
    TResult? Function(_FeedEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedEvent() when $default != null:
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
    TResult Function(FeedEventType eventType, List<FeedItem> items,
            FeedMetadata metadata)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FeedEvent() when $default != null:
        return $default(_that.eventType, _that.items, _that.metadata);
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
    TResult Function(FeedEventType eventType, List<FeedItem> items,
            FeedMetadata metadata)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedEvent():
        return $default(_that.eventType, _that.items, _that.metadata);
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
    TResult? Function(FeedEventType eventType, List<FeedItem> items,
            FeedMetadata metadata)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FeedEvent() when $default != null:
        return $default(_that.eventType, _that.items, _that.metadata);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FeedEvent implements FeedEvent {
  const _FeedEvent(
      {required this.eventType,
      required final List<FeedItem> items,
      required this.metadata})
      : _items = items;

  @override
  final FeedEventType eventType;
  final List<FeedItem> _items;
  @override
  List<FeedItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final FeedMetadata metadata;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedEventCopyWith<_FeedEvent> get copyWith =>
      __$FeedEventCopyWithImpl<_FeedEvent>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedEvent &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_items), metadata);

  @override
  String toString() {
    return 'FeedEvent(eventType: $eventType, items: $items, metadata: $metadata)';
  }
}

/// @nodoc
abstract mixin class _$FeedEventCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$FeedEventCopyWith(
          _FeedEvent value, $Res Function(_FeedEvent) _then) =
      __$FeedEventCopyWithImpl;
  @override
  @useResult
  $Res call(
      {FeedEventType eventType, List<FeedItem> items, FeedMetadata metadata});

  @override
  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$FeedEventCopyWithImpl<$Res> implements _$FeedEventCopyWith<$Res> {
  __$FeedEventCopyWithImpl(this._self, this._then);

  final _FeedEvent _self;
  final $Res Function(_FeedEvent) _then;

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? eventType = null,
    Object? items = null,
    Object? metadata = null,
  }) {
    return _then(_FeedEvent(
      eventType: null == eventType
          ? _self.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as FeedEventType,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      metadata: null == metadata
          ? _self.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ));
  }

  /// Create a copy of FeedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_self.metadata, (value) {
      return _then(_self.copyWith(metadata: value));
    });
  }
}

// dart format on

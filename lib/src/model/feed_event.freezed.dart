// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feed_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FeedEvent {
  FeedEventType get eventType => throw _privateConstructorUsedError;
  List<FeedItem> get items => throw _privateConstructorUsedError;
  FeedMetadata get metadata => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedEventCopyWith<FeedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedEventCopyWith<$Res> {
  factory $FeedEventCopyWith(FeedEvent value, $Res Function(FeedEvent) then) =
      _$FeedEventCopyWithImpl<$Res, FeedEvent>;
  @useResult
  $Res call(
      {FeedEventType eventType, List<FeedItem> items, FeedMetadata metadata});

  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$FeedEventCopyWithImpl<$Res, $Val extends FeedEvent>
    implements $FeedEventCopyWith<$Res> {
  _$FeedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? items = null,
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as FeedEventType,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeedMetadataCopyWith<$Res> get metadata {
    return $FeedMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeedEventImplCopyWith<$Res>
    implements $FeedEventCopyWith<$Res> {
  factory _$$FeedEventImplCopyWith(
          _$FeedEventImpl value, $Res Function(_$FeedEventImpl) then) =
      __$$FeedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FeedEventType eventType, List<FeedItem> items, FeedMetadata metadata});

  @override
  $FeedMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$FeedEventImplCopyWithImpl<$Res>
    extends _$FeedEventCopyWithImpl<$Res, _$FeedEventImpl>
    implements _$$FeedEventImplCopyWith<$Res> {
  __$$FeedEventImplCopyWithImpl(
      _$FeedEventImpl _value, $Res Function(_$FeedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? eventType = null,
    Object? items = null,
    Object? metadata = null,
  }) {
    return _then(_$FeedEventImpl(
      eventType: null == eventType
          ? _value.eventType
          : eventType // ignore: cast_nullable_to_non_nullable
              as FeedEventType,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<FeedItem>,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as FeedMetadata,
    ));
  }
}

/// @nodoc

class _$FeedEventImpl implements _FeedEvent {
  const _$FeedEventImpl(
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

  @override
  String toString() {
    return 'FeedEvent(eventType: $eventType, items: $items, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeedEventImpl &&
            (identical(other.eventType, eventType) ||
                other.eventType == eventType) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @override
  int get hashCode => Object.hash(runtimeType, eventType,
      const DeepCollectionEquality().hash(_items), metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeedEventImplCopyWith<_$FeedEventImpl> get copyWith =>
      __$$FeedEventImplCopyWithImpl<_$FeedEventImpl>(this, _$identity);
}

abstract class _FeedEvent implements FeedEvent {
  const factory _FeedEvent(
      {required final FeedEventType eventType,
      required final List<FeedItem> items,
      required final FeedMetadata metadata}) = _$FeedEventImpl;

  @override
  FeedEventType get eventType;
  @override
  List<FeedItem> get items;
  @override
  FeedMetadata get metadata;
  @override
  @JsonKey(ignore: true)
  _$$FeedEventImplCopyWith<_$FeedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

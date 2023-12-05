import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knock_flutter/knock_flutter.dart';

part 'feed_event.freezed.dart';

enum BindableFeedEvent {
  allItemsEvents('items.*'),
  allItemsReceivedEvents('items.received.*'),
  itemsReceivedPage('items.received.page'),
  itemsReceivedRealtime('items.received.realtime'),
  itemsArchived('items.archived'),
  itemsUnarchived('items.unarchived'),
  itemsSeen('items.seen'),
  itemsUnseen('items.unseen'),
  itemsRead('items.read'),
  itemsUnread('items.unread'),
  itemsAllArchived('items.all_archived'),
  itemsAllRead('items.all_read'),
  itemsAllSeen('items.all_seen');

  final String pattern;

  const BindableFeedEvent(this.pattern);
}

enum FeedEventType {
  itemsReceivedPage('items.received.page'),
  itemsReceivedRealtime('items.received.realtime'),
  itemsArchived('items.archived'),
  itemsUnarchived('items.unarchived'),
  itemsSeen('items.seen'),
  itemsUnseen('items.unseen'),
  itemsRead('items.read'),
  itemsUnread('items.unread'),
  itemsAllArchived('items.all_archived'),
  itemsAllRead('items.all_read'),
  itemsAllSeen('items.all_seen');

  final String value;

  const FeedEventType(this.value);
}

@freezed
class FeedEvent with _$FeedEvent {
  const factory FeedEvent({
    required FeedEventType eventType,
    required List<FeedItem> items,
    required FeedMetadata metadata,
  }) = _FeedEvent;
}

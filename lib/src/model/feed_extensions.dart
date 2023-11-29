// This file is not intended for export in the public interface.

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/util/date_time_extension.dart';

extension FeedItemsModifiers on Iterable<FeedItem> {
  void action(Function(List<String> ids) callback) {
    final ids = map((item) => item.id).toList();
    callback(ids);
  }

  List<FeedItem> _filteredMap(
    Iterable<String> ids,
    FeedItem Function(FeedItem) transform,
  ) {
    return map((item) {
      if (ids.contains(item.id)) {
        return transform(item);
      } else {
        return item;
      }
    }).toList();
  }
}

extension FeedModifiersExtension on Feed {
  Feed updateMetadata(FeedMetadata metadata) {
    return copyWith(metadata: metadata);
  }

  Feed markAsSeen(Iterable<String> ids, DateTime at) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          seenAt: at.apiFormatted(),
        );
      }),
    );
  }

  Feed markAsUnseen(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          seenAt: null,
        );
      }),
    );
  }

  Feed markAsRead(Iterable<String> ids, DateTime at) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          readAt: at.apiFormatted(),
        );
      }),
    );
  }

  Feed markAsUnread(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          readAt: null,
        );
      }),
    );
  }

  Feed markAsArchived(Iterable<String> ids, DateTime at) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          archivedAt: at.apiFormatted(),
        );
      }),
    );
  }

  Feed markAsUnarchived(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          archivedAt: null,
        );
      }),
    );
  }
}

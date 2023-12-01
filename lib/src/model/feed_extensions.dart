// This file is not intended for export in the public interface.

import 'package:knock_flutter/knock_flutter.dart';

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
        return item.copyWith(seenAt: at);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAsUnseen(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(seenAt: null);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAsRead(Iterable<String> ids, DateTime at) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(readAt: at);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAsUnread(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(readAt: null);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAsArchived(Iterable<String> ids, DateTime at) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(archivedAt: at);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAsUnarchived(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(archivedAt: null);
      }),
      // TODO KNO-4771 optimistic updates (metadata)
    );
  }

  Feed markAllAsSeen(DateTime timestamp) {
    // TODO KNO-4771 optimistic updates
    return this;
  }

  Feed markAllAsRead(DateTime timestamp) {
    // TODO KNO-4771 optimistic updates
    return this;
  }

  Feed markAllAsArchived(DateTime timestamp) {
    // TODO KNO-4771 optimistic updates
    return this;
  }

  Feed merge(
    Feed other, {
    bool shouldSetPage = true,
    bool shouldAppend = false,
  }) {
    final List<FeedItem> mergedItems;
    if (shouldAppend) {
      // Prioritize the incoming feed because it is most likely more up to date
      mergedItems = other.items + items;

      final Set<String> ids = {};
      mergedItems.retainWhere((item) => ids.add(item.id));
    } else {
      mergedItems = List.from(other.items);
    }

    mergedItems.sort((a, b) => -1 * a.insertedAt.compareTo(b.insertedAt));

    return Feed(
      items: mergedItems,
      pageInfo: shouldSetPage ? other.pageInfo : pageInfo,
      metadata: other.metadata,
      networkStatus: networkStatus,
    );
  }
}

// This file is not intended for export in the public interface.

// We are ok ignoring these checks because it will not be exported.
// ignore_for_file: avoid_positional_boolean_parameters

import 'dart:math';

import 'package:knock_flutter/knock_flutter.dart';

extension FeedItemsModifiers on Iterable<FeedItem> {
  T action<T>(T Function(List<String> ids) callback) {
    final ids = map((item) => item.id).toList();
    return callback(ids);
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

  int _count(
    Iterable<String> ids,
    bool Function(FeedItem) test,
  ) {
    return where((item) {
      if (ids.contains(item.id)) {
        return test(item);
      } else {
        return false;
      }
    }).length;
  }
}

extension FeedModifiersExtension on Feed {
  Feed updateMetadata(FeedMetadata metadata) {
    return copyWith(metadata: metadata);
  }

  Feed markAsSeen(Iterable<String> ids, DateTime at) {
    final unseenCount = items._count(ids, (item) => item.seenAt == null);
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(seenAt: at);
      }),
      metadata: metadata.copyWith(
        unseenCount: max(0, metadata.unseenCount - unseenCount),
      ),
    );
  }

  Feed markAsUnseen(Iterable<String> ids) {
    final seenCount = items._count(ids, (item) => item.seenAt != null);
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(seenAt: null);
      }),
      metadata: metadata.copyWith(
        unseenCount: max(0, metadata.unseenCount + seenCount),
      ),
    );
  }

  Feed markAsRead(Iterable<String> ids, DateTime at) {
    final unreadCount = items._count(ids, (item) => item.readAt == null);
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(readAt: at);
      }),
      metadata: metadata.copyWith(
        unreadCount: max(0, metadata.unreadCount - unreadCount),
      ),
    );
  }

  Feed markAsUnread(Iterable<String> ids) {
    final readCount = items._count(ids, (item) => item.readAt != null);
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(readAt: null);
      }),
      metadata: metadata.copyWith(
        unreadCount: max(0, metadata.unreadCount + readCount),
      ),
    );
  }

  Feed markAsInteracted(Iterable<String> ids, DateTime at) {
    final unreadCount = items._count(ids, (item) => item.readAt == null);
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(
          readAt: at,
          interactedAt: at,
        );
      }),
      metadata: metadata.copyWith(
        unreadCount: max(0, metadata.unreadCount - unreadCount),
      ),
    );
  }

  Feed markAsArchived(
    Iterable<String> ids,
    DateTime at,
    bool isFromUnarchivedOnly,
  ) {
    final itemCount = items._count(ids, (ids) => true);
    final unreadCount = items._count(ids, (item) => item.readAt == null);
    final unseenCount = items._count(ids, (item) => item.seenAt == null);

    if (isFromUnarchivedOnly) {
      return copyWith(
        items: items.where((item) => !ids.contains(item.id)).toList(),
        metadata: metadata.copyWith(
          totalCount: max(0, metadata.totalCount - itemCount),
          unreadCount: max(0, metadata.unreadCount - unreadCount),
          unseenCount: max(0, metadata.unseenCount - unseenCount),
        ),
      );
    } else {
      return copyWith(
        items: items._filteredMap(ids, (item) {
          return item.copyWith(archivedAt: at);
        }),
      );
    }
  }

  Feed markAsUnarchived(Iterable<String> ids) {
    return copyWith(
      items: items._filteredMap(ids, (item) {
        return item.copyWith(archivedAt: null);
      }),
    );
  }

  Feed markAllAsSeen(
    DateTime at,
    bool isFromUnseenOnly,
    Feed Function() initialStateBuilder,
  ) {
    if (isFromUnseenOnly) {
      return initialStateBuilder();
    } else {
      return copyWith(
        items: items.map((item) {
          return item.copyWith(seenAt: at);
        }).toList(),
        metadata: metadata.copyWith(
          unseenCount: 0,
        ),
      );
    }
  }

  Feed markAllAsRead(
    DateTime at,
    bool isFromUnreadOnly,
    Feed Function() initialStateBuilder,
  ) {
    if (isFromUnreadOnly) {
      return initialStateBuilder();
    } else {
      return copyWith(
        items: items.map((item) {
          return item.copyWith(readAt: at);
        }).toList(),
        metadata: metadata.copyWith(
          unreadCount: 0,
        ),
      );
    }
  }

  Feed markAllAsArchived(
    DateTime at,
    bool isFromUnarchivedOnly,
    Feed Function() initialStateBuilder,
  ) {
    if (isFromUnarchivedOnly) {
      return initialStateBuilder();
    } else {
      return copyWith(
        items: items.map((item) {
          return item.copyWith(archivedAt: at);
        }).toList(),
      );
    }
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

      final ids = <String>{};
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

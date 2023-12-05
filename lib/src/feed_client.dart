import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_extensions.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/model/feed_response.dart';
import 'package:knock_flutter/src/util/value_notifier_extension.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

enum _FeedItemApiStatus {
  seen('seen'),
  unseen('unseen'),
  read('read'),
  unread('unread'),
  archived('archived'),
  unarchived('unarchived'),
  interacted('interacted');

  final String apiValue;

  const _FeedItemApiStatus(this.apiValue);
}

enum _BulkFeedItemApiStatus {
  seen('seen'),
  read('read'),
  archive('archive');

  final String apiValue;

  const _BulkFeedItemApiStatus(this.apiValue);
}

class FeedClient {
  final Knock _knock;
  final ApiClient _api;
  final String feedChannelId;
  final FeedOptions options;

  final _feedNotifier = ValueNotifier<Feed>(Feed.initialState());
  StreamController<Feed>? _feedController;

  StreamSubscription? _socketOpenSubscription;
  StreamSubscription? _socketClosedSubscription;

  PhoenixChannel? _channel;
  final _eventNotifier = ValueNotifier<FeedEvent?>(null);
  StreamSubscription? _channelMessagesSubscription;

  FeedClient(
    this._knock,
    this._api,
    this.feedChannelId,
    FeedOptions? options,
  ) : options = FeedOptions.defaultOptions().merge(options);

  Feed get _currentFeed => _feedNotifier.value;

  set _currentFeed(Feed feed) => _feedNotifier.value = feed;

  Stream<Feed> get feed {
    final controller = _feedController ?? _buildFeedController();
    return controller.stream;
  }

  StreamController<Feed> _buildFeedController() {
    return _feedNotifier.asStreamController(
      onListen: () {
        final socket = _api.socket;
        _socketClosedSubscription = socket.closeStream.listen((event) {
          // TODO KNO-4703 error handling
        });

        _socketOpenSubscription = socket.openStream.listen((event) {
          final userFeedId = 'feeds:$feedChannelId:${_knock.userId}';
          _channel = socket.addChannel(
            topic: userFeedId,
            parameters: options.toJson(),
          );
          _channel?.join();

          _channelMessagesSubscription = _channel?.messages.listen((message) {
            if (message.event.value == 'new-message') {
              _onNewMessageReceived(message);
            }
          });

          _fetch();
        });
      },
      onCancel: () {
        _channel?.leave();
        _channelMessagesSubscription?.cancel();

        _socketClosedSubscription?.cancel();
        _socketOpenSubscription?.cancel();

        _feedController?.close();
        _feedController = null;
      },
    );
  }

  Stream<FeedEvent> on(BindableFeedEvent event) {
    return _eventNotifier
        .asStreamController()
        .stream
        .where((message) => message != null)
        .cast();
  }

  void _onNewMessageReceived(Message message) {
    final payload = message.payload;
    if (payload != null) {
      final response = OnNewMessageResponse.fromJson(payload);

      _currentFeed = _currentFeed.updateMetadata(response.metadata);

      final before = _currentFeed.items.firstOrNull?.knockInternalCursor;
      _fetch(fetchOptions: FeedOptions(before: before));
    }
  }

  void _fetch({
    FeedOptions? fetchOptions,
    NetworkStatus? networkStatus,
  }) async {
    // Do nothing if there is an active request
    final currentFeed = _currentFeed;
    if (currentFeed.requestInFlight) {
      return;
    }

    _currentFeed = currentFeed.copyWith(networkStatus: NetworkStatus.loading);

    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/feeds/$feedChannelId',
      queryParams: options.merge(fetchOptions).toJson(),
    );
    if (response.statusCode == StatusCode.error) {
      _currentFeed = currentFeed.copyWith(networkStatus: NetworkStatus.error);
    } else {
      final json = _decodeResponse(response);
      final updatedFeed = Feed.fromJson(json);

      Feed mergedFeed;
      if (fetchOptions?.before != null) {
        mergedFeed = _currentFeed.merge(
          updatedFeed,
          shouldSetPage: false,
          shouldAppend: true,
        );
      } else if (fetchOptions?.after != null) {
        mergedFeed = _currentFeed.merge(
          updatedFeed,
          shouldAppend: true,
        );
      } else {
        mergedFeed = _currentFeed.merge(updatedFeed);
      }

      _currentFeed = mergedFeed.copyWith(networkStatus: NetworkStatus.ready);
    }
  }

  void fetchNextPage() {
    // Do nothing if there is nothing else to fetch
    final after = _currentFeed.pageInfo.after;
    if (after == null) {
      return;
    }

    _fetch(
      fetchOptions: FeedOptions(after: after),
      networkStatus: NetworkStatus.fetchMore,
    );
  }

  void markAsSeen(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.seen, ids);
      _currentFeed = _currentFeed.markAsSeen(ids, DateTime.now());
    });
  }

  void markAsUnseen(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unseen, ids);
      _currentFeed = _currentFeed.markAsUnseen(ids);
    });
  }

  void markAsRead(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.read, ids);
      _currentFeed = _currentFeed.markAsRead(ids, DateTime.now());
    });
  }

  void markAsUnread(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unread, ids);
      _currentFeed = _currentFeed.markAsUnread(ids);
    });
  }

  void markAsArchived(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.archived, ids);
      _currentFeed = _currentFeed.markAsArchived(ids, DateTime.now());
    });
  }

  void markAsUnarchived(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unarchived, ids);
      _currentFeed = _currentFeed.markAsUnarchived(ids);
    });
  }

  void markAsInteracted(List<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.interacted, ids);
      _currentFeed = _currentFeed.markAsUnarchived(ids);
    });
  }

  void markAllAsSeen() {
    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.seen);
    _currentFeed = _currentFeed.markAllAsSeen(DateTime.now());
  }

  void markAllAsRead() {
    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.read);
    _currentFeed = _currentFeed.markAllAsRead(DateTime.now());
  }

  void markAllAsArchived() {
    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.archive);
    _currentFeed = _currentFeed.markAllAsArchived(DateTime.now());
  }

  void _makeStatusUpdates(_FeedItemApiStatus type, Iterable<String> ids) async {
    if (ids.isEmpty) {
      return;
    }

    // TODO KNO-4773 error handling
    final response = await _api.doPost(
      '/v1/messages/batch/${type.apiValue}',
      body: jsonEncode({
        'message_ids': ids,
      }),
    );
  }

  void _makeBulkStatusUpdate(_BulkFeedItemApiStatus type) async {
    final options = this.options;

    final engagementStatus =
        options.status != FeedOptionsStatus.all ? options.status : null;
    final tenants = options.tenant != null ? [options.tenant] : null;

    // TODO KNO-4773 error handling
    final response = await _api.doPost(
      '/v1/channels/$feedChannelId/messages/bulk/${type.apiValue}',
      body: jsonEncode({
        'user_ids': [_knock.userId],
        'engagement_status': engagementStatus,
        'archived': options.archived,
        'has_tenant': options.hasTenant,
        'tenants': tenants,
      }),
    );
  }

  dynamic _decodeResponse(ApiResponse response) {
    if (response.statusCode == StatusCode.error) {
      throw Exception(response);
    } else {
      final body = response.body!;
      return jsonDecode(body);
    }
  }
}

extension _FeedOptionsExtension on FeedOptions {
  FeedOptions merge(FeedOptions? other) {
    return FeedOptions(
      before: other?.before ?? before,
      after: other?.after ?? after,
      pageSize: other?.pageSize ?? pageSize,
      status: other?.status ?? status,
      tenant: other?.tenant ?? tenant,
      hasTenant: other?.hasTenant ?? hasTenant,
      archived: other?.archived ?? archived,
      triggerData: other?.triggerData ?? triggerData,
    );
  }
}

import 'dart:async';
import 'dart:convert';

import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_extensions.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/model/feed_response.dart';
import 'package:knock_flutter/src/model/feed_update_request.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

enum _FeedFetchSource {
  socket,
  http,
}

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
  final String feedChannelId;
  late final FeedOptions options;

  StreamSubscription? _apiStatusSubscription;

  late Feed _feedValue;
  StreamController<Feed>? _feedController;

  StreamSubscription? _socketOpenSubscription;
  StreamSubscription? _socketClosedSubscription;

  PhoenixChannel? _channel;
  StreamSubscription? _channelMessagesSubscription;

  final _eventController = StreamController<FeedEvent>.broadcast();

  bool _disposed = false;

  FeedClient(
    this._knock,
    this.feedChannelId,
    FeedOptions? options,
  ) {
    this.options = FeedOptions.defaultOptions().merge(options);
    _currentFeed = this.options.buildInitialFeed();

    _apiStatusSubscription = _knock.client().status.listen((event) {
      if (event == ApiClientStatus.disposed) {
        _disposed = true;

        // Add an empty state back to the controller
        _feedController?.add(this.options.buildInitialFeed());

        // Start closing out everything
        _feedController?.close();
        _feedController = null;

        _apiStatusSubscription?.cancel();
        _apiStatusSubscription = null;
      }
    });
  }

  ApiClient get _api => _knock.client();

  Feed get _currentFeed => _feedValue;

  set _currentFeed(Feed feed) {
    _feedValue = feed;
    _feedController?.add(feed);
  }

  Stream<Feed> get feed {
    final controller = _feedController ??= _buildFeedController();
    return controller.stream;
  }

  StreamController<Feed> _buildFeedController() {
    late StreamController<Feed> controller;
    controller = StreamController<Feed>.broadcast(
      onListen: () {
        controller.add(_currentFeed);

        final socket = _api.socket;

        // Note: closeStream will never terminate because it's backed by a
        // BehaviorSubject in phoenix_socket
        _socketClosedSubscription = socket.closeStream.listen((event) {
          // TODO KNO-4703 error handling
        });

        // Note: openStream will never terminate because it's backed by a
        // BehaviorSubject in phoenix_socket
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

          _fetch(
            fetchOptions: null,
            loadingType: NetworkStatus.loading,
            fetchSource: _FeedFetchSource.http,
          );
        });
      },
      onCancel: () {
        _channel?.leave();
        _channel = null;

        _channelMessagesSubscription?.cancel();
        _channelMessagesSubscription = null;

        _socketClosedSubscription?.cancel();
        _socketClosedSubscription = null;

        _socketOpenSubscription?.cancel();
        _socketOpenSubscription = null;

        _eventController.close();

        _feedController?.close();
        _feedController = null;
      },
    );
    return controller;
  }

  Stream<FeedEvent> on(BindableFeedEvent bindableFeedEvent) {
    _assertNotDisposed();

    return _eventController.stream
        .where((event) => bindableFeedEvent.includes(event.eventType));
  }

  void _onNewMessageReceived(Message message) {
    final payload = message.payload;
    if (payload != null) {
      final response = OnNewMessageResponse.fromJson(payload);

      _currentFeed = _currentFeed.updateMetadata(response.metadata);

      final before = _currentFeed.items.firstOrNull?.knockInternalCursor;
      _fetch(
        fetchOptions: FeedOptions(before: before),
        loadingType: NetworkStatus.loading,
        fetchSource: _FeedFetchSource.socket,
      );
    }
  }

  void _fetch({
    required FeedOptions? fetchOptions,
    required NetworkStatus loadingType,
    required _FeedFetchSource fetchSource,
  }) async {
    // Do nothing if there is an active request
    final currentFeed = _currentFeed;
    if (currentFeed.requestInFlight) {
      return;
    }

    _currentFeed = currentFeed.copyWith(networkStatus: loadingType);

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

      _currentFeed = mergedFeed.copyWith(
        networkStatus: NetworkStatus.ready,
      );

      _eventController.add(FeedEvent(
        eventType: fetchSource == _FeedFetchSource.socket
            ? FeedEventType.itemsReceivedRealtime
            : FeedEventType.itemsReceivedPage,
        items: updatedFeed.items,
        metadata: updatedFeed.metadata,
      ));
    }
  }

  void fetchNextPage() {
    _assertNotDisposed();

    // Do nothing if there is nothing else to fetch
    final after = _currentFeed.pageInfo.after;
    if (after == null) {
      return;
    }

    _fetch(
      fetchOptions: FeedOptions(after: after),
      loadingType: NetworkStatus.fetchMore,
      fetchSource: _FeedFetchSource.http,
    );
  }

  void markAsSeen(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.seen, ids);
      _currentFeed = _currentFeed.markAsSeen(ids, DateTime.now());
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsSeen,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsUnseen(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unseen, ids);
      _currentFeed = _currentFeed.markAsUnseen(ids);
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsUnseen,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsRead(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.read, ids);
      _currentFeed = _currentFeed.markAsRead(ids, DateTime.now());
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsRead,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsUnread(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unread, ids);
      _currentFeed = _currentFeed.markAsUnread(ids);
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsUnread,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsArchived(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.archived, ids);
      _currentFeed = _currentFeed.markAsArchived(
        ids,
        DateTime.now(),
        options.archived == FeedOptionsArchivedScope.exclude,
      );
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsArchived,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsUnarchived(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.unarchived, ids);
      _currentFeed = _currentFeed.markAsUnarchived(ids);
    });

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsUnarchived,
      items: items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAsInteracted(List<FeedItem> items) {
    _assertNotDisposed();

    items.action((ids) {
      _makeStatusUpdates(_FeedItemApiStatus.interacted, ids);
      _currentFeed = _currentFeed.markAsInteracted(ids, DateTime.now());
    });
  }

  void markAllAsSeen() {
    _assertNotDisposed();

    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.seen);
    _currentFeed = _currentFeed.markAllAsSeen(
      DateTime.now(),
      options.status == FeedOptionsStatus.unseen,
      () => options.buildInitialFeed(),
    );

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsAllSeen,
      items: _currentFeed.items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAllAsRead() {
    _assertNotDisposed();

    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.read);
    _currentFeed = _currentFeed.markAllAsRead(
      DateTime.now(),
      options.status == FeedOptionsStatus.unread,
      () => options.buildInitialFeed(),
    );

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsAllRead,
      items: _currentFeed.items,
      metadata: _currentFeed.metadata,
    ));
  }

  void markAllAsArchived() {
    _assertNotDisposed();

    _makeBulkStatusUpdate(_BulkFeedItemApiStatus.archive);
    _currentFeed = _currentFeed.markAllAsArchived(
      DateTime.now(),
      options.archived == FeedOptionsArchivedScope.exclude,
      () => options.buildInitialFeed(),
    );

    _eventController.add(FeedEvent(
      eventType: FeedEventType.itemsAllArchived,
      items: _currentFeed.items,
      metadata: _currentFeed.metadata,
    ));
  }

  void _makeStatusUpdates(_FeedItemApiStatus type, List<String> ids) async {
    if (ids.isEmpty) {
      return;
    }

    // TODO KNO-4773 error handling
    final response = await _api.doPost(
      '/v1/messages/batch/${type.apiValue}',
      body: jsonEncode(FeedStatusUpdateRequest(ids: ids).toJson()),
    );
  }

  void _makeBulkStatusUpdate(_BulkFeedItemApiStatus type) async {
    final options = this.options;

    final engagementStatus =
        options.status != FeedOptionsStatus.all ? options.status : null;
    final tenant = options.tenant;
    final tenants = tenant != null ? [tenant] : null;

    // TODO KNO-4773 error handling
    final response = await _api.doPost(
        '/v1/channels/$feedChannelId/messages/bulk/${type.apiValue}',
        body: jsonEncode(BulkFeedStatusUpdateRequest(
          userIds: [_knock.userId!],
          engagementStatus: engagementStatus,
          archived: options.archived,
          hasTenant: options.hasTenant,
          tenants: tenants,
        ).toJson()));
  }

  dynamic _decodeResponse(ApiResponse response) {
    if (response.statusCode == StatusCode.error) {
      throw Exception(response);
    } else {
      final body = response.body!;
      return jsonDecode(body);
    }
  }

  void _assertNotDisposed() {
    if (_disposed) {
      throw StateError("""
        [Knock] This FeedClient has been disposed. Please create a new client.
      """);
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

  Feed buildInitialFeed() {
    final feed = Feed.initialState();
    final pageInfo = feed.pageInfo;
    return feed.copyWith(
      pageInfo: pageInfo.copyWith(
        before: before ?? pageInfo.before,
        after: after ?? pageInfo.after,
        pageSize: pageSize ?? pageInfo.pageSize,
      ),
    );
  }
}

extension _BindableFeedEventExtension on BindableFeedEvent {
  bool includes(FeedEventType feedEventType) {
    final prefixPattern = pattern.replaceAll(RegExp(r'\*'), '');
    return feedEventType.value.startsWith(prefixPattern);
  }
}

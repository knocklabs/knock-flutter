import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:knock_flutter/knock_flutter.dart';
import 'package:knock_flutter/src/model/feed_extensions.dart';
import 'package:knock_flutter/src/model/api_response.dart';
import 'package:knock_flutter/src/model/feed_response.dart';
import 'package:knock_flutter/src/util/value_notifier_extension.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

enum Status {
  seen('seen'),
  unseen('unseen'),
  read('read'),
  unread('unread'),
  archived('archived'),
  unarchived('unarchived'),
  interacted('interacted');

  final String value;

  const Status(this.value);
}

class FeedOptions {
  const FeedOptions();
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
  final _channelMessageNotifier = ValueNotifier<Message?>(null);
  StreamSubscription? _channelMessagesSubscription;

  FeedClient(
    this._knock,
    this._api,
    this.feedChannelId,
    this.options,
  );

  Stream<Feed> get feed {
    final controller = _feedController ?? _buildFeedController();
    return controller.stream;
  }

  StreamController<Feed> _buildFeedController() {
    return _feedNotifier.asStreamController(
      onListen: () {
        final socket = _api.socket;
        _socketClosedSubscription = socket.closeStream.listen((event) {
          // TODO
        });

        _socketOpenSubscription = socket.openStream.listen((event) {
          final userFeedId = 'feeds:$feedChannelId:${_knock.userId}';
          _channel = socket.addChannel(topic: userFeedId);
          _channel?.join();
          _channelMessagesSubscription = _channel?.messages.listen((message) {
            _channelMessageNotifier.value = message;
          });

          _on('new-message').listen(_onNewMessageReceived);

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

  Stream<Message> on(BindableFeedEvent event) => _on(event.value);

  Stream<Message> _on(String eventName) {
    return _channelMessageNotifier.asStreamController().stream.where((message) {
      return message != null && message.event.value == eventName;
    }).cast();
  }

  void _onNewMessageReceived(Message message) {
    final payload = message.payload;
    if (payload != null) {
      final response = OnNewMessageResponse.fromJson(payload);

      final feed = _feedNotifier.value;
      _feedNotifier.value = feed.updateMetadata(response.metadata);

      _fetch();
    }
  }

  void _fetch() async {
    final response = await _api.doGet(
      '/v1/users/${_knock.userId}/feeds/$feedChannelId',
    );

    final json = _decodeResponse(response);
    final feed = Feed.fromJson(json);
    _feedNotifier.value = feed;
  }

  void fetchNextPage() {}

  void markAsSeen(FeedItem item) => markAllAsSeen([item]);

  void markAllAsSeen(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.seen, ids);
      
      _feedNotifier.value = _feedNotifier.value.markAsSeen(
        ids,
        DateTime.now(),
      );
    });
  }

  void markAsUnseen(FeedItem item) => markAllAsUnseen([item]);

  void markAllAsUnseen(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.unseen, ids);

      _feedNotifier.value = _feedNotifier.value.markAsUnseen(ids);
    });
  }

  void markAsRead(FeedItem item) => markAllAsRead([item]);

  void markAllAsRead(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.read, ids);

      _feedNotifier.value = _feedNotifier.value.markAsRead(
        ids,
        DateTime.now(),
      );
    });
  }

  void markAsUnread(FeedItem item) => markAllAsUnread([item]);

  void markAllAsUnread(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.unread, ids);

      _feedNotifier.value = _feedNotifier.value.markAsUnread(ids);
    });
  }

  void markAsArchived(FeedItem item) => markAllAsArchived([item]);

  void markAllAsArchived(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.archived, ids);

      _feedNotifier.value = _feedNotifier.value.markAsArchived(
        ids,
        DateTime.now(),
      );
    });
  }

  void markAsUnarchived(FeedItem item) => markAllAsUnarchived([item]);

  void markAllAsUnarchived(Iterable<FeedItem> items) {
    items.action((ids) {
      _makeStatusUpdates(Status.unarchived, ids);

      _feedNotifier.value = _feedNotifier.value.markAsUnarchived(ids);
    });
  }

  void _makeStatusUpdates(Status type, Iterable<String> ids) async {
    if (ids.isEmpty) {
      return;
    }

    final body = jsonEncode({
      'message_ids': ids,
    });
    final response = await _api.doPost(
      '/v1/messages/batch/${type.value}',
      body: body,
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

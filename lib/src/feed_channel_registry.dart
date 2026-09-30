import 'package:knock_flutter/src/feed_phoenix_detach.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

/// Reference-counts the feed [PhoenixChannel]s joined on a [PhoenixSocket].
///
/// Phoenix allows a single channel per topic on a socket, so every
/// `FeedClient` for the same feed channel and user has to share one channel.
/// The channel is joined by the first client and left when the last one
/// releases it. The first client's options are used as the join parameters.
class FeedChannelRegistry {
  factory FeedChannelRegistry.of(PhoenixSocket socket) =>
      _registries[socket] ??= FeedChannelRegistry._(socket);

  FeedChannelRegistry._(this._socket);

  static final _registries = Expando<FeedChannelRegistry>();

  final PhoenixSocket _socket;
  final _references = <PhoenixChannel, int>{};

  PhoenixChannel acquire(String topic, Map<String, dynamic> parameters) {
    final existing = _socket.channels[topic];
    if (existing != null) {
      final references = _references[existing];
      if (references != null && existing.state != PhoenixChannelState.closed) {
        _references[existing] = references + 1;
        return existing;
      }
      _references.remove(existing);
      detachFeedPhoenixChannel(_socket, existing);
    }

    final channel = _socket.addChannel(topic: topic, parameters: parameters);
    _references[channel] = 1;
    channel.join();
    return channel;
  }

  void release(PhoenixChannel channel) {
    final references = _references[channel];
    if (references == null) return;

    if (references > 1) {
      _references[channel] = references - 1;
      return;
    }

    _references.remove(channel);

    // Phoenix removes channels by topic, so never touch a channel that has
    // already been closed and replaced on the socket.
    if (!identical(_socket.channels[channel.topic], channel)) return;

    if (_socket.isConnected) {
      detachFeedPhoenixChannel(_socket, channel);
    } else {
      // Without a connection there is nothing to leave; close the channel so
      // it drops its socket subscriptions.
      channel.close();
    }
  }
}

import 'package:phoenix_socket/phoenix_socket.dart';

/// Leave [channel] on the server and synchronously evict it from [socket]'s
/// channel cache.
///
/// Used when unsubscribing from a feed so a quick resubscribe does not observe
/// a stale cached channel (Phoenix `!_joinedOnce` assertion). See changelog
/// 1.0.0.
void detachFeedPhoenixChannel(PhoenixSocket socket, PhoenixChannel channel) {
  channel.leave();
  socket.removeChannel(channel);
}

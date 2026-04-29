import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/src/feed_phoenix_detach.dart';
import 'package:mockito/mockito.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

import 'mock_phoenix.dart';

/// Tracks [leave]; Mockito cannot stub [PhoenixChannel.leave] safely inside
/// `when()` because invoking `leave` during stub setup must yield a non-null
/// [Push].
class _TrackingMockChannel extends MockPhoenixChannel {
  _TrackingMockChannel(this.leaveResult);

  final Push leaveResult;
  int leaveCallCount = 0;

  @override
  Push leave({Duration? timeout}) {
    leaveCallCount += 1;
    return leaveResult;
  }
}

void main() {
  group('FeedClient channel disconnect (resubscribe regression)', () {
    test(
      'calls leave on channel then removeChannel on socket — order matters',
      () {
        final socket = MockPhoenixSocket();
        final leavePush = MockPush();
        final channel = _TrackingMockChannel(leavePush);

        detachFeedPhoenixChannel(socket, channel);

        expect(channel.leaveCallCount, 1);
        verify(socket.removeChannel(channel)).called(1);
      },
    );
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:knock_flutter/src/feed_phoenix_detach.dart';
import 'package:mockito/mockito.dart';

import 'mock_phoenix.dart';

void main() {
  group('FeedClient channel disconnect (resubscribe regression)', () {
    test(
      'calls leave on channel then removeChannel on socket — order matters',
      () {
        final socket = MockPhoenixSocket();
        final channel = MockPhoenixChannel();

        final leavePush = MockPush();
        when(channel.leave()).thenReturn(leavePush);

        detachFeedPhoenixChannel(socket, channel);

        // Order is defined on [detachFeedPhoenixChannel] — both must occur.
        verify(channel.leave()).called(1);
        verify(socket.removeChannel(channel)).called(1);
      },
    );
  });
}

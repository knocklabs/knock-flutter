import 'package:mockito/mockito.dart';
import 'package:phoenix_socket/phoenix_socket.dart';

/// Hand-written Mockito classes (avoid running build_runner only for Phoenix).
class MockPhoenixSocket extends Mock implements PhoenixSocket {}

class MockPhoenixChannel extends Mock implements PhoenixChannel {}

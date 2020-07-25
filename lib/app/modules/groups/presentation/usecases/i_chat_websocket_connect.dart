import 'dart:async';

import 'package:web_socket_channel/io.dart';

abstract class IChatWebsocketConnect {
  IOWebSocketChannel connectWebSocket(String groupID);
}
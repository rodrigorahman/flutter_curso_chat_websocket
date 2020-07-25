import 'dart:async';

import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_chat_websocket_connect.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/io.dart';

@Injectable(as: IChatWebsocketConnect)
class ChatWebsocketConnect implements IChatWebsocketConnect {
  final IGroupRepository _repository;

  ChatWebsocketConnect(this._repository);

  @override
  IOWebSocketChannel connectWebSocket(String groupID) {
    return this._repository.connectGroup(groupID);  
  }
}
import 'dart:async';

import 'package:chat_websocket/app/modules/groups/infra/model/group_model.dart';
import 'package:web_socket_channel/io.dart';

abstract class IGroupDataSource {
  Future<List<GroupModel>> findAll();
  Future<void> createGroup(String name);
  Future<GroupModel> findById(String id);
  IOWebSocketChannel chatWebSocketConnection(String groupId);
}
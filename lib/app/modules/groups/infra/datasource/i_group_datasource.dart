import 'dart:async';

import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/infra/model/group_model.dart';
import 'package:web_socket_channel/io.dart';

abstract class IGroupDataSource {
  Future<List<Group>> findAll();
  Future<void> createGroup(String name);
  Future<Group> findById(String id);
  IOWebSocketChannel chatWebSocketConnection(String groupId);
}
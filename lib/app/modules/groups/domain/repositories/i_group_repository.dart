import 'dart:async';

import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:dartz/dartz.dart';
import 'package:web_socket_channel/io.dart';

abstract class IGroupRepository {
  Future<Either<GroupFailures, List<Group>>> findAll();
  Future<Either<GroupFailures, Unit>> createGroup(String name);
  Future<Either<GroupFailures, Group>> findById(String id);
  IOWebSocketChannel connectGroup(String group);
}
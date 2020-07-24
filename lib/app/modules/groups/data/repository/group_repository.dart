import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:chat_websocket/app/modules/groups/data/datasource/i_group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/ports/i_group_repository.dart';
import 'package:web_socket_channel/io.dart';

@LazySingleton(as: IGroupRepository)
class GroupRepository implements IGroupRepository {
  final IGroupDataSource _datasource;

  GroupRepository(
    this._datasource,
  );

  @override
  Future<Either<GroupFailures, List<Group>>> findAll() async {
    try {
      final groups = await _datasource.findAll();
      return right(groups);
    } on GroupFailures catch (e, s) {
      print(s);
      return left(e);
    } catch (e, s) {
      print(s);
      return left(GroupFailures.serverError(message: e.toString()));
    }
  }

  @override
  Future<Either<GroupFailures, Unit>> createGroup(String name) async {
    try {
      await _datasource.createGroup(name);
      return right(unit);
    } on GroupFailures catch (e, s) {
      print(s);
      return left(e);
    } catch (e, s) {
      print(s);
      return left(GroupFailures.serverError(message: e.toString()));
    }
  }

  @override
  Future<Either<GroupFailures, Group>> findById(String id) async {
    try {
      final group = await _datasource.findById(id);
      return right(group);
    } on GroupFailures catch (e, s) {
      print(s);
      return left(e);
    } catch (e, s) {
      print(s);
      return left(GroupFailures.serverError(message: e.toString()));
    }
  }

  @override
  IOWebSocketChannel connectGroup(String group) {
    return _datasource.chatWebSocketConnection(group);
  }
}

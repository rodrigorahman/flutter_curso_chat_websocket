import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:dartz/dartz.dart';

abstract class IFindGroupById {
  Future<Either<GroupFailures, Group>> execute(String id);
}
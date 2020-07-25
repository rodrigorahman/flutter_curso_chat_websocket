import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:dartz/dartz.dart';

abstract class IFindAllGroups {
  Future<Either<GroupFailures, List<Group>>> execute();
}
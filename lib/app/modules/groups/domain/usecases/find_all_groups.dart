
import 'package:chat_websocket/app/infrastructure/usecase/use_case.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/ports/i_group_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class FindAllGroups extends UseCaseWithoutParam<GroupFailures, List<Group>> {

  final IGroupRepository _repository;

  FindAllGroups(this._repository);

  @override
  Future<Either<GroupFailures, List<Group>>> execute() {
    return _repository.findAll();
  }
  
}

import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/ports/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/presentation/ports/i_create_group.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ICreateGroup)
class CreateGroup implements ICreateGroup{

  final IGroupRepository _repository;

  CreateGroup(this._repository);

  @override
  Future<Either<GroupFailures, Unit>> execute(String name) {
    return _repository.createGroup(name);
  }
  
}
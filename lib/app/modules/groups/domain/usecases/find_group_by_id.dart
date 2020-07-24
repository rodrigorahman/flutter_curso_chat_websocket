import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/ports/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/presentation/ports/i_find_group_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IFindGroupById)
class FindGroupById implements IFindGroupById {
  final IGroupRepository _repository;

  FindGroupById(this._repository);

  @override
  Future<Either<GroupFailures, Group>> execute(String id) async {
    return validate(id).fold(
      () => _repository.findById(id),
      (failure) => left(failure),
    );
  }

  Option<GroupFailures> validate(String id) {
    if (id == null || id.isEmpty) {
      return optionOf(GroupFailures.validationError(message: 'Id do grupo Obrigatório'));
    }

    return none();
  }
}

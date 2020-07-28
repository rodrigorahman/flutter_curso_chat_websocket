import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_all_groups.dart';
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_all_groups.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGroupRepository extends Mock implements IGroupRepository {}

void main() {
  IGroupRepository repository;

  setUp(() {
    repository = MockGroupRepository();
  });

  test('should find all with success', () async {
    when(repository.findAll()).thenAnswer((_) async => right([Group(id: '1')]));

    IFindAllGroups findAll = FindAllGroups(repository);
    final result = await findAll.execute();
    result.fold(
      (l) => fail('Não deveria dar erro'),
      (r) => expect(r, [Group(id: '1')]),
    );
  });

  test('should find all with error', () async {
    when(repository.findAll()).thenAnswer((_) async => left(GroupFailures.serverError()));

    IFindAllGroups findAll = FindAllGroups(repository);
    final result = await findAll.execute();
    result.fold(
      (l) => expect(l, isA<GroupFailures>()),
      (r) => fail('Não deveria dar erro'),
    );
  });
}

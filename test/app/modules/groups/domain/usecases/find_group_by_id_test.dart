import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/find_group_by_id.dart';
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_find_group_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGroupRepository extends Mock implements IGroupRepository {}

void main() {
  IGroupRepository repository;

  setUp(() {
    repository = MockGroupRepository();
  });

  test('should find by id success', () async {
    when(repository.findById(any)).thenAnswer((_) async => right(Group(id: '1')));
    IFindGroupById findGroupById = FindGroupById(repository);
    final result = await findGroupById.execute('id');

    result.fold(
      (l) => fail('não deveria dar erro'),
      (r) => expect(r, Group(id: '1')),
    );
  });

  test('should find by id validation failure', () async {
    IFindGroupById findGroupById = FindGroupById(repository);
    final result = await findGroupById.execute(null);

    result.fold(
      (l) => expect(l, isA<GroupFailuresValidate>()),
      (r) => fail('não deveria dar erro'),
    );
  });

  test('should find by id server failure', () async {
    when(repository.findById(any)).thenAnswer((_) async => left(GroupFailures.serverError()));
    IFindGroupById findGroupById = FindGroupById(repository);
    final result = await findGroupById.execute('1');

    result.fold(
      (l) => expect(l, isA<GroupFailuresServerError>()),
      (r) => fail('não deveria dar erro'),
    );
  });
}

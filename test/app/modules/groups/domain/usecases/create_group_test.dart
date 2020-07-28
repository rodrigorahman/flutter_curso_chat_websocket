import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/domain/usecases/create_group.dart';
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/presentation/usecases/i_create_group.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGroupRepository extends Mock implements IGroupRepository {}

void main() {
  IGroupRepository repository;

  setUp(() {
    repository = MockGroupRepository();
  });

  test('should create group with success', () async {
    when(repository.createGroup(any)).thenAnswer((_) async => right(unit));

    ICreateGroup createGroup = CreateGroup(repository);
    final result = await createGroup.execute('name');
    result.fold(
      (l) => fail(l.toString()),
      (r) => expect(r, unit),
    );
  });

  test('should create group with failure', () async {
    when(repository.createGroup(any)).thenAnswer((_) async => left(GroupFailures.serverError()));

    ICreateGroup createGroup = CreateGroup(repository);
    final result = await createGroup.execute('name');
    result.fold(
      (l) => expect(l, isA<GroupFailuresServerError>()),
      (r) => fail(r.toString()),
    );
  });
}

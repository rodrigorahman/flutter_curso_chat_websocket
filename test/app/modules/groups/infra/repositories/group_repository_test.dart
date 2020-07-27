import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:chat_websocket/app/modules/groups/domain/repositories/i_group_repository.dart';
import 'package:chat_websocket/app/modules/groups/infra/datasource/i_group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/infra/repositories/group_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGroupDataSource extends Mock implements IGroupDataSource {}

void main() {
  IGroupDataSource datasource;

  setUp(() {
    datasource = MockGroupDataSource();
  });

  group('find all', () {
    test('should find all groups', () async {
      when(datasource.findAll()).thenAnswer((_) async => [Group(id: "1")]);
      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findAll();

      result.fold(
        (l) => fail('não deveria ter dado erro'),
        (r) => expect(r, [Group(id: "1")]),
      );
    });

    test('should find all groups but throws server failure', () async {
      when(datasource.findAll()).thenThrow(GroupFailures.serverError());

      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findAll();

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('deveria ter dado erro'),
      );
    });

    test('should find all groups but throws generic', () async {
      when(datasource.findAll()).thenThrow(Exception());

      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findAll();

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('não deveria ter dado erro'),
      );
    });
  });

  group('create group', () {
    test('should create groups', () async {
      
      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.createGroup('name');

      result.fold(
        (l) => fail('não deveria ter dado erro'),
        (r) => expect(r, unit),
      );
    });

    test('should create groups failure', () async {
      
      when(datasource.createGroup(any)).thenThrow(GroupFailures.serverError());
      
      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.createGroup('name');

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('não deveria ter dado successo'),
      );
    });


    test('should create groups exception', () async {
      
      when(datasource.createGroup(any)).thenThrow(Exception());
      
      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.createGroup('name');

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('não deveria ter dado successo'),
      );
    });
  });


  group('find by id', () {
    test('should find group by id', () async {
      when(datasource.findById(any)).thenAnswer((_) async => Group(id: "1"));
      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findById("1");

      result.fold(
        (l) => fail('não deveria ter dado erro'),
        (r) => expect(r, Group(id: "1")),
      );
    });

    test('should find by id groups but throws server failure', () async {
      when(datasource.findById(any)).thenThrow(GroupFailures.serverError());

      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findById("1");

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('deveria ter dado erro'),
      );
    });

    test('should find by id  but throws generic', () async {
      when(datasource.findById(any)).thenThrow(Exception());

      IGroupRepository repository = GroupRepository(datasource);
      final result = await repository.findById("1");

      result.fold(
        (l) => expect(l, isA<GroupFailuresServerError>()),
        (r) => fail('deveria ter dado erro'),
      );
    });
  });
}

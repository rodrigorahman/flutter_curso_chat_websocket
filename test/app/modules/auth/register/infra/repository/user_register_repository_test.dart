import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/repositories/i_user_register_repository.dart';
import 'package:chat_websocket/app/modules/auth/register/infra/datasource/i_user_register_datasource.dart';
import 'package:chat_websocket/app/modules/auth/register/infra/repository/user_register_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockUserRegisterRepository extends Mock implements IUserRegisterDatasource {}

void main() {
  IUserRegisterDatasource datasource;
  setUp(() {
    datasource = MockUserRegisterRepository();
  });

  test('should save user', () async {
    IUserRegisterRepository repository = UserRegisterRepository(datasource);
    final userSaved = await repository.saveUser('name', 'login', 'password');
    userSaved.fold(
      (l) => fail('Não poderia ter dado erro'),
      (r) => expect(r, unit),
    );
  });

  test('should throw RegisterFailure on save user ', () async {
    when(datasource.saveUser(any, any, any)).thenThrow(RegisterFailure.server());
    IUserRegisterRepository repository = UserRegisterRepository(datasource);
    final userSaved = await repository.saveUser('name', 'login', 'password');
    userSaved.fold(
      (l) => expect(l, isA<RegisterFailureServer>()),
      (r) => fail('Deveria ter retornado um erro'),
    );
  });

  test('should throw generic exception on save user ', () async {
    when(datasource.saveUser(any, any, any)).thenThrow(Exception());
    IUserRegisterRepository repository = UserRegisterRepository(datasource);
    final userSaved = await repository.saveUser('name', 'login', 'password');
    userSaved.fold(
      (l) => expect(l, isA<RegisterFailureServer>()),
      (r) => fail('Deveria ter retornado um erro'),
    );
  });
}

import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/repositories/i_user_register_repository.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/usecases/register/register.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/usecases/i_register.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockIUserRegisterRepository extends Mock implements IUserRegisterRepository {}

void main() {
  IUserRegisterRepository repository;
  setUp(() {
    repository = MockIUserRegisterRepository();
  });

  test('should register user success', () async {
    when(repository.saveUser('name', 'login', 'password')).thenAnswer((_) async => right(unit));
    IRegister register = Register(repository);
    final result = await register.execute('name', 'login', 'password');
    result.fold(
      (l) => fail('não deveria dar erro'),
      (r) => expect(r, isA<Unit>()),
    );
  });

  test('should register user validate failure', () async {
    IRegister register = Register(repository);
    final result = await register.execute(null, null, null);

    result.fold(
      (l) {
        expect(l, isA<RegisterFailureValidation>());
        l.maybeWhen(
            validation: (validation) {
              expect(validation.length, 3);
            },
            orElse: () => fail('Deve retornar um validation error'));
      },
      (r) => fail('não deveria dar sucesso'),
    );
  });

  test('should register user server error', () async {
    when(repository.saveUser('name', 'login', 'password')).thenAnswer((_) async => left(RegisterFailure.server()));
    
    IRegister register = Register(repository);
    final result = await register.execute('name', 'login', 'password');
    
    result.fold(
      (l) => expect(l, isA<RegisterFailureServer>()),
      (r) => fail('não deveria dar erro'),
    );
  });
}

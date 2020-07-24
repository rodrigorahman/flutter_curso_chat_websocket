import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/datasource/i_login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/repositories/login_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginDatasourceMock extends Mock implements ILoginDatasource {}

void main() {
  ILoginDatasource loginDatasource;

  setUp(() {
    loginDatasource = LoginDatasourceMock();
  });

  test('should do login', () async {
    when(loginDatasource.login(any, any)).thenAnswer((_) async => User(id: "111"));
    ILoginRepository _repository = LoginRepository(loginDatasource);

    final result = await _repository.login('', '');

    expect(result.getOrElse(() => null), isA<User>());
    expect(result.getOrElse(() => null), equals(User(id: "111")));
  });

  test('should do login and returns loginNotFound', () async {
    when(loginDatasource.login(any, any)).thenThrow(LoginFailure.userNotFound());
    ILoginRepository _repository = LoginRepository(loginDatasource);

    final result = await _repository.login('', '');
    result.fold(
      (l) => expect(l, isA<LoginNotFoundFailure>()),
      (r) => fail('Success Login error'),
    );
  });


  test('should do login and returns server error', () async {
    when(loginDatasource.login(any, any)).thenThrow(LoginFailure.serverError());
    ILoginRepository _repository = LoginRepository(loginDatasource);

    final result = await _repository.login('', '');
    result.fold(
      (l) => expect(l, isA<LoginServerErrorFailure>()),
      (r) => fail('Success Login error'),
    );
  });

   test('should do login return any exception', () async {
    when(loginDatasource.login(any, any)).thenThrow(Exception());
    ILoginRepository _repository = LoginRepository(loginDatasource);

    final result = await _repository.login('', '');
    result.fold(
      (l) => expect(l, isA<LoginServerErrorFailure>()),
      (r) => fail('Success Login error'),
    );
  });
}

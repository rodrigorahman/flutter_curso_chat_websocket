import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_param_in.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockLoginRepository extends Mock implements ILoginRepository {}

void main() {
  ILoginRepository loginRepository;

  setUp(() {
    loginRepository = MockLoginRepository();
    SharedPreferences.setMockInitialValues({});
  });

  test('should login success', () async {
    when(loginRepository.login(any, any)).thenAnswer((_) async => right(User(id: '123', name: 'teste', login: 'teste')));
    final loginUser = LoginUser(loginRepository);

    final result = await loginUser.execute(LoginParamIn('rodrigo', '123'));
    result.fold(
      (l) => fail('não deveria cair no sucesso'),
      (r) => expect(r, isA<User>()),
    );
  });

  test('should login error validate', () async {
    final loginUser = LoginUser(loginRepository);

    final result = await loginUser.execute(LoginParamIn('', ''));
    result.fold(
      (l) => expect(l, isA<LoginValidationError>()),
      (r) => fail('não deveria cair no sucesso'),
    );
  });

  test('should login error validate', () async {
    final loginUser = LoginUser(loginRepository);
    when(loginRepository.login(any, any)).thenAnswer((_) async => left(LoginFailure.userNotFound()));
    final result = await loginUser.execute(LoginParamIn('123', '123'));
    result.fold(
      (l) => expect(l, isA<LoginNotFoundFailure>()),
      (r) => fail('não deveria cair no sucesso'),
    );
  });
}

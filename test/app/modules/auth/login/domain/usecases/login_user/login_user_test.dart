import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_param_in.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockLoginRepository extends Mock implements ILoginRepository {}

void main() {
  ILoginRepository loginRepository;

  setUp(() {
    loginRepository = MockLoginRepository();
  });

  test('should login success', () async {
    when(loginRepository.login(any, any)).thenAnswer((_) async => right(User()));
    final loginUser = LoginUser(loginRepository);

    final result = await loginUser.execute(LoginParamIn('', ''));
    result.fold(
      (l) => fail,
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
}

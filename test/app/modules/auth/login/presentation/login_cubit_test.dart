import 'package:bloc_test/bloc_test.dart';
import 'package:chat_websocket/app/infrastructure/dependency_injection/dependency_injection_config.dart';
import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/cubit/login_cubit.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/usecases/i_login_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class LoginUserMock extends Mock implements ILoginUser {}

Future<void> main() async {
  
  ILoginUser loginUser;

  setUp(() {
    loginUser = LoginUserMock();
  });

  blocTest<LoginCubit, LoginState>(
    'should login success',
    build: (){
      when(loginUser.execute(any)).thenAnswer((_) async => right(User()));
      return LoginCubit(loginUser);
    },
    act: (cubit) => cubit.login('', ''),
    expect: [
      LoginState(loading: true, authFailureOrSuccessOption: none()),
      LoginState(loading: false, authFailureOrSuccessOption: some(right(User()))),
    ],
  );

  blocTest<LoginCubit, LoginState>(
    'should login NotFoundException',
    build: (){
      when(loginUser.execute(any)).thenAnswer((_) async => left(LoginFailure.userNotFound()));
      return LoginCubit(loginUser);
    },
    act: (cubit) => cubit.login('', ''),
    expect: [
      LoginState(loading: true, authFailureOrSuccessOption: none()),
      LoginState(loading: false, authFailureOrSuccessOption: some(left(LoginFailure.userNotFound()))),
    ],
  );
}

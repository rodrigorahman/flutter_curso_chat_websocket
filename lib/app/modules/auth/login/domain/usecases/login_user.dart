import 'package:chat_websocket/app/infrastructure/usecase/use_case.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/ports/i_login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class LoginUser extends UseCase<LoginFailure, User, LoginParamIn> {
  final ILoginRepository _repository;

  LoginUser(this._repository);

  @override
  Future<Either<LoginFailure, User>> execute([LoginParamIn param]) async {
    return param.validate().fold(
          (l) => left(l),
          (r) => _repository.login(param.login, param.password),
        );
  }
}

class LoginParamIn {
  final String login;
  final String password;

  LoginParamIn(this.login, this.password);

  Either<LoginFailure, Unit> validate() {
    final errors = <String>[];
    if (login == null || login.isEmpty) {
      errors.add('Login Inválido');
    }

    if (password == null || password.isEmpty) {
      errors.add('Senha Inválida');
    }

    if (errors.isEmpty) {
      return right(unit);
    } else {
      return left(LoginFailure.validationError(errors));
    }
  }
}

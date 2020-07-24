
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:dartz/dartz.dart';

class LoginParamIn {
  
  final String login;
  final String password;

  LoginParamIn(this.login, this.password);

  Option<LoginFailure> validate() {
    final errors = <String>[];
    if (login == null || login.isEmpty) {
      errors.add('Login Inválido');
    }

    if (password == null || password.isEmpty) {
      errors.add('Senha Inválida');
    }

    if (errors.isEmpty) {
      return none();
    } else {
      return optionOf(LoginFailure.validationError(errors));
    }
  }
}
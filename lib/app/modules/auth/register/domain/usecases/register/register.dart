import 'package:dartz/dartz.dart';

import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/ports/i_user_register_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../presentation/ports/i_register.dart';

@Injectable(as: IRegister)
class Register implements IRegister {
  final IUserRegisterRepository _repository;
  Register(
    this._repository,
  );

  @override
  Future<Either<RegisterFailure, Unit>> execute(String name, String login, String password) async{
    return validate(name, login, password).fold(
      () => _repository.saveUser(name, login, password),
      (error) => left(error),
    );
  }

  Option<RegisterFailure> validate(String name, String login, String password) {
    final errors = <String>[];

    if (name == null || name.isEmpty) {
      errors.add('Nome Obrigatório');
    }

    if (login == null || login.isEmpty) {
      errors.add('Login Obrigatório');
    }

    if (password == null || password.isEmpty) {
      errors.add('Password Obrigatório');
    }

    if (errors.isEmpty) {
      return none();
    } else {
      return optionOf(RegisterFailure.validation(errors: errors));
    }
  }
}

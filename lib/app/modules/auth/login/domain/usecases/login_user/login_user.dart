import 'dart:convert';

import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/repositories/i_login_repository.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/usecases/i_login_user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_param_in.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Injectable(as: ILoginUser)
class LoginUser implements ILoginUser {
  final ILoginRepository _repository;

  LoginUser(this._repository);

  @override
  Future<Either<LoginFailure, User>> execute(LoginParamIn param) async {
    return param.validate().fold(
      () async {
        final result = await _repository.login(param.login, param.password);
        result.map((r) async {
          await SharedPreferences.getInstance().then(
            (sp) => sp.setString('userLogged', jsonEncode({
              'id': r.id,
              'name': r.name,
              'login': r.login
            })),
          );
        });
        return result;
      },
      (l) => left(l),
    );
  }
}

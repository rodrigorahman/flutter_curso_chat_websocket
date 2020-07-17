import 'package:chat_websocket/app/modules/auth/login/data/datasource/i_login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/ports/i_login_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepository)
class LoginRepository implements ILoginRepository {
  
  final ILoginDatasource _datasource;
  LoginRepository(this._datasource);
  
  @override
  Future<Either<LoginFailure, User>> login(String login, String password) async {
    try {
      final user = await _datasource.login(login, password);
      return right(user);
    } on LoginFailure catch (e) {
      return left(e);
    } catch(e) {
      print(e);
      return left(LoginFailure.serverError(message: e.toString()));
    }
  }

}
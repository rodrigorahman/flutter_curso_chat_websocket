import 'package:chat_websocket/app/modules/auth/register/data/datasource/i_user_register_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:injectable/injectable.dart';

import '../../domain/ports/i_user_register_repository.dart';

@Injectable(as: IUserRegisterRepository)
class UserRegisterRepository implements IUserRegisterRepository {
  final IUserRegisterDatasource _datasource;

  UserRegisterRepository(this._datasource);

  @override
  Future<Either<RegisterFailure, Unit>> saveUser(String name, String login, String password) async {
    try {
      await _datasource.saveUser(name, login, password);
      return right(unit);
    } on RegisterFailure catch (e) {
      return left(e);
    } catch (e) {
      return left(RegisterFailure.server(message: e.toString()));
    }
  }
}

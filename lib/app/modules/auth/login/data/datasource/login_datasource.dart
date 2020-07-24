import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/model/user_model.dart';

import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:injectable/injectable.dart';

import '../../infra/datasource/i_login_datasource.dart';

@LazySingleton(as: ILoginDatasource)
class LoginDatasource implements ILoginDatasource {
  
  final IRestClient _restClient;

  LoginDatasource(this._restClient);

  @override
  Future<User> login(String login, String password) async {
    try {
      
      final client = _restClient.instance();
      final result = await client.post('/usuario/login', data: {
        "login": login,
        "senha": password,
      });

      return UserModel.fromMap(result.data);

    } on RestClientException catch (e) {
      
      if(e?.response?.statusCode == 403) {
        throw LoginFailure.userNotFound();
      }

      throw LoginFailure.serverError(message: e.message);
    } catch (e) {
      throw LoginFailure.serverError(message: e.toString());
    }
  }
}

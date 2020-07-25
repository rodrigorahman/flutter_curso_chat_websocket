import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:injectable/injectable.dart';

import '../../infra/datasource/i_user_register_datasource.dart';

@Injectable(as: IUserRegisterDatasource)
class UserRegisterDatasource implements IUserRegisterDatasource {
  final IRestClient _restClient;

  UserRegisterDatasource(this._restClient);

  @override
  Future<void> saveUser(String name, String login, String password) async {
    try {
      final client = _restClient.instance();
      await client.post('/usuario/cadastrar', data: {"nome": name, "login": login, "senha": password});
    } on RestClientException catch (e) {
      throw RegisterFailure.server(message: e.message);
    } catch (e) {
      throw RegisterFailure.server(message: e.toString());
    }
  }
}

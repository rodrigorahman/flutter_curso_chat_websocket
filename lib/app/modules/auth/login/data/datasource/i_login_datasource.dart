
import 'package:chat_websocket/app/modules/auth/login/data/model/user_model.dart';

abstract class ILoginDatasource {
  Future<UserModel> login(String login, String password);
}
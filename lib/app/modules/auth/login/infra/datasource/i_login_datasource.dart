
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';

abstract class ILoginDatasource {
  Future<User> login(String login, String password);
}
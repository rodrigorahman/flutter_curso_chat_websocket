abstract class IUserRegisterDatasource {
  Future<void> saveUser(String name, String login, String password);
}
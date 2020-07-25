import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IUserRegisterRepository {
  Future<Either<RegisterFailure, Unit>> saveUser(String name, String login, String password);
}
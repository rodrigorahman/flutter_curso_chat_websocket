import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IRegister {
  Future<Either<RegisterFailure, Unit>> execute(String name, String login, String password);
}

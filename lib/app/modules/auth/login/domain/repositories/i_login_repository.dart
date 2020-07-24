import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepository {

  Future<Either<LoginFailure, User>> login(String login, String password);

}
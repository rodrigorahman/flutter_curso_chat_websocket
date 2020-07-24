import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:dartz/dartz.dart';

import '../../domain/usecases/login_user/login_param_in.dart';

abstract class ILoginUser {
  Future<Either<LoginFailure, User>> execute(LoginParamIn param);
}
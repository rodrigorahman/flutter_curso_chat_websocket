import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:chat_websocket/app/modules/auth/login/presentation/usecases/i_login_user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user/login_param_in.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

@Injectable()
class LoginCubit extends Cubit<LoginState> {
  final ILoginUser _loginUserUc;

  LoginCubit(
    this._loginUserUc,
  ) : super(LoginState.inital());

  Future<void> login(String login, String password) async {
    emit(state.copyWith(loading: true, authFailureOrSuccessOption: none()));
    final loginResult = await _loginUserUc.execute(LoginParamIn(login, password));
    emit(state.copyWith(loading: false, authFailureOrSuccessOption: optionOf(loginResult)));
  }
}

import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/usecases/login_user.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@Injectable()
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUser _useCase;

  LoginBloc(this._useCase) : super(LoginState.inital());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* event.when(login: _login);
  }
  

  Stream<LoginState> _login(String login, String password) async* {
    yield state.copyWith(loading: true, authFailureOrSuccessOption: none() );
    final user = await _useCase.execute(LoginParamIn(login, password));

    yield* user.fold(
      (l) async* {
        yield state.copyWith(loading: false, authFailureOrSuccessOption: optionOf(left(l)));
      },
      (r) async* {
        SharedPreferences sp = await SharedPreferences.getInstance();
        sp.setString('userLogged', jsonEncode(r));
        yield state.copyWith(loading: false, authFailureOrSuccessOption: optionOf(right(r)));
      },
    );
  }
}

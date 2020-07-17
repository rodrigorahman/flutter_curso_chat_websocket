import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@Injectable()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState.inital());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(checkIsLogged: (value) async* {
      print('checando');
      SharedPreferences sp = await SharedPreferences.getInstance();
      if (sp.containsKey('userLogged')) {
        yield AuthState.authenticate();
      }else {
        yield AuthState.unauthenticate();
      }
    });
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@Injectable()
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState.inital());

  Future<void> checkIsLogged() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    if (sp.containsKey('userLogged')) {
      emit(AuthState.authenticate());
    } else {
      emit(AuthState.unauthenticate());
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:chat_websocket/app/modules/auth/register/presentation/ports/i_register.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

@Injectable()
class RegisterCubit extends Cubit<RegisterState> {
  final IRegister _registerUc;

  RegisterCubit(
    this._registerUc,
  ) : super(RegisterState.initial());

  Future<void> registerUser(String name, String login, String password) async {
    emit(state.copyWith(failureOrSuccess: none(), loading: true));
    final result = await _registerUc.execute(name, login, password);
    emit(state.copyWith(loading: false, failureOrSuccess: optionOf(result)));
  }
}

part of 'login_cubit.dart';

@freezed
abstract class LoginState with _$LoginState {
  factory LoginState({
    @required bool loading,
    @required Option<Either<LoginFailure, User>> authFailureOrSuccessOption,
  }) = _LoginState;

  factory LoginState.inital() => LoginState(
        authFailureOrSuccessOption: none(),
        loading: false,
      );

    
}

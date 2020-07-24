part of 'register_cubit.dart';

@freezed
abstract class RegisterState with _$RegisterState {
  factory RegisterState({
    bool loading,
    Option<Either<RegisterFailure, Unit>> failureOrSuccess, 
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(loading: false);
}

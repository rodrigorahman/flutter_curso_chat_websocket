part of 'auth_bloc.dart';


@freezed
abstract class AuthState with _$AuthState {
   factory AuthState.inital() = _AuthStateInitial;
   factory AuthState.authenticate() = _AuthStateAuthenticate;
   factory AuthState.unauthenticate() = _AuthStateUnAuthenticate;
}
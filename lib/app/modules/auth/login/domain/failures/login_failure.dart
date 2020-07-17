import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
abstract class LoginFailure with _$LoginFailure {
   factory LoginFailure.validationError(List<String> errors) = LoginValidationError;
   factory LoginFailure.userNotFound() = LoginNotFoundFailure;
   factory LoginFailure.serverError({String message}) = LoginServerErrorFailure;
}
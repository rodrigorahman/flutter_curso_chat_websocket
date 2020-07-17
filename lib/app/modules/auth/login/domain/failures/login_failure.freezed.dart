// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'login_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginFailureTearOff {
  const _$LoginFailureTearOff();

  LoginValidationError validationError(List<String> errors) {
    return LoginValidationError(
      errors,
    );
  }

  LoginNotFoundFailure userNotFound() {
    return LoginNotFoundFailure();
  }

  LoginServerErrorFailure serverError({String message}) {
    return LoginServerErrorFailure(
      message: message,
    );
  }
}

// ignore: unused_element
const $LoginFailure = _$LoginFailureTearOff();

mixin _$LoginFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validationError(List<String> errors),
    @required Result userNotFound(),
    @required Result serverError(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validationError(List<String> errors),
    Result userNotFound(),
    Result serverError(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validationError(LoginValidationError value),
    @required Result userNotFound(LoginNotFoundFailure value),
    @required Result serverError(LoginServerErrorFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validationError(LoginValidationError value),
    Result userNotFound(LoginNotFoundFailure value),
    Result serverError(LoginServerErrorFailure value),
    @required Result orElse(),
  });
}

abstract class $LoginFailureCopyWith<$Res> {
  factory $LoginFailureCopyWith(
          LoginFailure value, $Res Function(LoginFailure) then) =
      _$LoginFailureCopyWithImpl<$Res>;
}

class _$LoginFailureCopyWithImpl<$Res> implements $LoginFailureCopyWith<$Res> {
  _$LoginFailureCopyWithImpl(this._value, this._then);

  final LoginFailure _value;
  // ignore: unused_field
  final $Res Function(LoginFailure) _then;
}

abstract class $LoginValidationErrorCopyWith<$Res> {
  factory $LoginValidationErrorCopyWith(LoginValidationError value,
          $Res Function(LoginValidationError) then) =
      _$LoginValidationErrorCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

class _$LoginValidationErrorCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
    implements $LoginValidationErrorCopyWith<$Res> {
  _$LoginValidationErrorCopyWithImpl(
      LoginValidationError _value, $Res Function(LoginValidationError) _then)
      : super(_value, (v) => _then(v as LoginValidationError));

  @override
  LoginValidationError get _value => super._value as LoginValidationError;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(LoginValidationError(
      errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

class _$LoginValidationError implements LoginValidationError {
  _$LoginValidationError(this.errors) : assert(errors != null);

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'LoginFailure.validationError(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginValidationError &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  $LoginValidationErrorCopyWith<LoginValidationError> get copyWith =>
      _$LoginValidationErrorCopyWithImpl<LoginValidationError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validationError(List<String> errors),
    @required Result userNotFound(),
    @required Result serverError(String message),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return validationError(errors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validationError(List<String> errors),
    Result userNotFound(),
    Result serverError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validationError(LoginValidationError value),
    @required Result userNotFound(LoginNotFoundFailure value),
    @required Result serverError(LoginServerErrorFailure value),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validationError(LoginValidationError value),
    Result userNotFound(LoginNotFoundFailure value),
    Result serverError(LoginServerErrorFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class LoginValidationError implements LoginFailure {
  factory LoginValidationError(List<String> errors) = _$LoginValidationError;

  List<String> get errors;
  $LoginValidationErrorCopyWith<LoginValidationError> get copyWith;
}

abstract class $LoginNotFoundFailureCopyWith<$Res> {
  factory $LoginNotFoundFailureCopyWith(LoginNotFoundFailure value,
          $Res Function(LoginNotFoundFailure) then) =
      _$LoginNotFoundFailureCopyWithImpl<$Res>;
}

class _$LoginNotFoundFailureCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
    implements $LoginNotFoundFailureCopyWith<$Res> {
  _$LoginNotFoundFailureCopyWithImpl(
      LoginNotFoundFailure _value, $Res Function(LoginNotFoundFailure) _then)
      : super(_value, (v) => _then(v as LoginNotFoundFailure));

  @override
  LoginNotFoundFailure get _value => super._value as LoginNotFoundFailure;
}

class _$LoginNotFoundFailure implements LoginNotFoundFailure {
  _$LoginNotFoundFailure();

  @override
  String toString() {
    return 'LoginFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoginNotFoundFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validationError(List<String> errors),
    @required Result userNotFound(),
    @required Result serverError(String message),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validationError(List<String> errors),
    Result userNotFound(),
    Result serverError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validationError(LoginValidationError value),
    @required Result userNotFound(LoginNotFoundFailure value),
    @required Result serverError(LoginServerErrorFailure value),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validationError(LoginValidationError value),
    Result userNotFound(LoginNotFoundFailure value),
    Result serverError(LoginServerErrorFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class LoginNotFoundFailure implements LoginFailure {
  factory LoginNotFoundFailure() = _$LoginNotFoundFailure;
}

abstract class $LoginServerErrorFailureCopyWith<$Res> {
  factory $LoginServerErrorFailureCopyWith(LoginServerErrorFailure value,
          $Res Function(LoginServerErrorFailure) then) =
      _$LoginServerErrorFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$LoginServerErrorFailureCopyWithImpl<$Res>
    extends _$LoginFailureCopyWithImpl<$Res>
    implements $LoginServerErrorFailureCopyWith<$Res> {
  _$LoginServerErrorFailureCopyWithImpl(LoginServerErrorFailure _value,
      $Res Function(LoginServerErrorFailure) _then)
      : super(_value, (v) => _then(v as LoginServerErrorFailure));

  @override
  LoginServerErrorFailure get _value => super._value as LoginServerErrorFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LoginServerErrorFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$LoginServerErrorFailure implements LoginServerErrorFailure {
  _$LoginServerErrorFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'LoginFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginServerErrorFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LoginServerErrorFailureCopyWith<LoginServerErrorFailure> get copyWith =>
      _$LoginServerErrorFailureCopyWithImpl<LoginServerErrorFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result validationError(List<String> errors),
    @required Result userNotFound(),
    @required Result serverError(String message),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result validationError(List<String> errors),
    Result userNotFound(),
    Result serverError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result validationError(LoginValidationError value),
    @required Result userNotFound(LoginNotFoundFailure value),
    @required Result serverError(LoginServerErrorFailure value),
  }) {
    assert(validationError != null);
    assert(userNotFound != null);
    assert(serverError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result validationError(LoginValidationError value),
    Result userNotFound(LoginNotFoundFailure value),
    Result serverError(LoginServerErrorFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class LoginServerErrorFailure implements LoginFailure {
  factory LoginServerErrorFailure({String message}) = _$LoginServerErrorFailure;

  String get message;
  $LoginServerErrorFailureCopyWith<LoginServerErrorFailure> get copyWith;
}

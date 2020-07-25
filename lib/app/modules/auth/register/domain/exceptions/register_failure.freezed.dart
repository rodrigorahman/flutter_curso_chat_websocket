// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterFailureTearOff {
  const _$RegisterFailureTearOff();

  RegisterFailureServer server({String message}) {
    return RegisterFailureServer(
      message: message,
    );
  }

  RegisterFailureValidation validation({List<String> errors}) {
    return RegisterFailureValidation(
      errors: errors,
    );
  }
}

// ignore: unused_element
const $RegisterFailure = _$RegisterFailureTearOff();

mixin _$RegisterFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(String message),
    @required Result validation(List<String> errors),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(String message),
    Result validation(List<String> errors),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(RegisterFailureServer value),
    @required Result validation(RegisterFailureValidation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(RegisterFailureServer value),
    Result validation(RegisterFailureValidation value),
    @required Result orElse(),
  });
}

abstract class $RegisterFailureCopyWith<$Res> {
  factory $RegisterFailureCopyWith(
          RegisterFailure value, $Res Function(RegisterFailure) then) =
      _$RegisterFailureCopyWithImpl<$Res>;
}

class _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureCopyWith<$Res> {
  _$RegisterFailureCopyWithImpl(this._value, this._then);

  final RegisterFailure _value;
  // ignore: unused_field
  final $Res Function(RegisterFailure) _then;
}

abstract class $RegisterFailureServerCopyWith<$Res> {
  factory $RegisterFailureServerCopyWith(RegisterFailureServer value,
          $Res Function(RegisterFailureServer) then) =
      _$RegisterFailureServerCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$RegisterFailureServerCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureServerCopyWith<$Res> {
  _$RegisterFailureServerCopyWithImpl(
      RegisterFailureServer _value, $Res Function(RegisterFailureServer) _then)
      : super(_value, (v) => _then(v as RegisterFailureServer));

  @override
  RegisterFailureServer get _value => super._value as RegisterFailureServer;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(RegisterFailureServer(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$RegisterFailureServer implements RegisterFailureServer {
  _$RegisterFailureServer({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterFailureServer &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $RegisterFailureServerCopyWith<RegisterFailureServer> get copyWith =>
      _$RegisterFailureServerCopyWithImpl<RegisterFailureServer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(String message),
    @required Result validation(List<String> errors),
  }) {
    assert(server != null);
    assert(validation != null);
    return server(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(String message),
    Result validation(List<String> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(RegisterFailureServer value),
    @required Result validation(RegisterFailureValidation value),
  }) {
    assert(server != null);
    assert(validation != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(RegisterFailureServer value),
    Result validation(RegisterFailureValidation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class RegisterFailureServer implements RegisterFailure {
  factory RegisterFailureServer({String message}) = _$RegisterFailureServer;

  String get message;
  $RegisterFailureServerCopyWith<RegisterFailureServer> get copyWith;
}

abstract class $RegisterFailureValidationCopyWith<$Res> {
  factory $RegisterFailureValidationCopyWith(RegisterFailureValidation value,
          $Res Function(RegisterFailureValidation) then) =
      _$RegisterFailureValidationCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

class _$RegisterFailureValidationCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements $RegisterFailureValidationCopyWith<$Res> {
  _$RegisterFailureValidationCopyWithImpl(RegisterFailureValidation _value,
      $Res Function(RegisterFailureValidation) _then)
      : super(_value, (v) => _then(v as RegisterFailureValidation));

  @override
  RegisterFailureValidation get _value =>
      super._value as RegisterFailureValidation;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(RegisterFailureValidation(
      errors: errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

class _$RegisterFailureValidation implements RegisterFailureValidation {
  _$RegisterFailureValidation({this.errors});

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'RegisterFailure.validation(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterFailureValidation &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  $RegisterFailureValidationCopyWith<RegisterFailureValidation> get copyWith =>
      _$RegisterFailureValidationCopyWithImpl<RegisterFailureValidation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result server(String message),
    @required Result validation(List<String> errors),
  }) {
    assert(server != null);
    assert(validation != null);
    return validation(errors);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result server(String message),
    Result validation(List<String> errors),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validation != null) {
      return validation(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result server(RegisterFailureServer value),
    @required Result validation(RegisterFailureValidation value),
  }) {
    assert(server != null);
    assert(validation != null);
    return validation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(RegisterFailureServer value),
    Result validation(RegisterFailureValidation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class RegisterFailureValidation implements RegisterFailure {
  factory RegisterFailureValidation({List<String> errors}) =
      _$RegisterFailureValidation;

  List<String> get errors;
  $RegisterFailureValidationCopyWith<RegisterFailureValidation> get copyWith;
}

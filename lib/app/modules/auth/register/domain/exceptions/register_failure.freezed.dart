// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterFailureTearOff {
  const _$RegisterFailureTearOff();

  _RegisterFailure server({String message}) {
    return _RegisterFailure(
      message: message,
    );
  }

  _RegisterFailureValidation validation({List<String> errors}) {
    return _RegisterFailureValidation(
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
    @required Result server(_RegisterFailure value),
    @required Result validation(_RegisterFailureValidation value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_RegisterFailure value),
    Result validation(_RegisterFailureValidation value),
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

abstract class _$RegisterFailureCopyWith<$Res> {
  factory _$RegisterFailureCopyWith(
          _RegisterFailure value, $Res Function(_RegisterFailure) then) =
      __$RegisterFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

class __$RegisterFailureCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements _$RegisterFailureCopyWith<$Res> {
  __$RegisterFailureCopyWithImpl(
      _RegisterFailure _value, $Res Function(_RegisterFailure) _then)
      : super(_value, (v) => _then(v as _RegisterFailure));

  @override
  _RegisterFailure get _value => super._value as _RegisterFailure;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_RegisterFailure(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_RegisterFailure implements _RegisterFailure {
  _$_RegisterFailure({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RegisterFailure.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFailure &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith =>
      __$RegisterFailureCopyWithImpl<_RegisterFailure>(this, _$identity);

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
    @required Result server(_RegisterFailure value),
    @required Result validation(_RegisterFailureValidation value),
  }) {
    assert(server != null);
    assert(validation != null);
    return server(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_RegisterFailure value),
    Result validation(_RegisterFailureValidation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailure implements RegisterFailure {
  factory _RegisterFailure({String message}) = _$_RegisterFailure;

  String get message;
  _$RegisterFailureCopyWith<_RegisterFailure> get copyWith;
}

abstract class _$RegisterFailureValidationCopyWith<$Res> {
  factory _$RegisterFailureValidationCopyWith(_RegisterFailureValidation value,
          $Res Function(_RegisterFailureValidation) then) =
      __$RegisterFailureValidationCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

class __$RegisterFailureValidationCopyWithImpl<$Res>
    extends _$RegisterFailureCopyWithImpl<$Res>
    implements _$RegisterFailureValidationCopyWith<$Res> {
  __$RegisterFailureValidationCopyWithImpl(_RegisterFailureValidation _value,
      $Res Function(_RegisterFailureValidation) _then)
      : super(_value, (v) => _then(v as _RegisterFailureValidation));

  @override
  _RegisterFailureValidation get _value =>
      super._value as _RegisterFailureValidation;

  @override
  $Res call({
    Object errors = freezed,
  }) {
    return _then(_RegisterFailureValidation(
      errors: errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

class _$_RegisterFailureValidation implements _RegisterFailureValidation {
  _$_RegisterFailureValidation({this.errors});

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'RegisterFailure.validation(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFailureValidation &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @override
  _$RegisterFailureValidationCopyWith<_RegisterFailureValidation>
      get copyWith =>
          __$RegisterFailureValidationCopyWithImpl<_RegisterFailureValidation>(
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
    @required Result server(_RegisterFailure value),
    @required Result validation(_RegisterFailureValidation value),
  }) {
    assert(server != null);
    assert(validation != null);
    return validation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result server(_RegisterFailure value),
    Result validation(_RegisterFailureValidation value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validation != null) {
      return validation(this);
    }
    return orElse();
  }
}

abstract class _RegisterFailureValidation implements RegisterFailure {
  factory _RegisterFailureValidation({List<String> errors}) =
      _$_RegisterFailureValidation;

  List<String> get errors;
  _$RegisterFailureValidationCopyWith<_RegisterFailureValidation> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  _AuthEventCheckIsLogged checkIsLogged() {
    return _AuthEventCheckIsLogged();
  }
}

// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkIsLogged(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkIsLogged(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkIsLogged(_AuthEventCheckIsLogged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkIsLogged(_AuthEventCheckIsLogged value),
    @required Result orElse(),
  });
}

abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

abstract class _$AuthEventCheckIsLoggedCopyWith<$Res> {
  factory _$AuthEventCheckIsLoggedCopyWith(_AuthEventCheckIsLogged value,
          $Res Function(_AuthEventCheckIsLogged) then) =
      __$AuthEventCheckIsLoggedCopyWithImpl<$Res>;
}

class __$AuthEventCheckIsLoggedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$AuthEventCheckIsLoggedCopyWith<$Res> {
  __$AuthEventCheckIsLoggedCopyWithImpl(_AuthEventCheckIsLogged _value,
      $Res Function(_AuthEventCheckIsLogged) _then)
      : super(_value, (v) => _then(v as _AuthEventCheckIsLogged));

  @override
  _AuthEventCheckIsLogged get _value => super._value as _AuthEventCheckIsLogged;
}

class _$_AuthEventCheckIsLogged implements _AuthEventCheckIsLogged {
  _$_AuthEventCheckIsLogged();

  @override
  String toString() {
    return 'AuthEvent.checkIsLogged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthEventCheckIsLogged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result checkIsLogged(),
  }) {
    assert(checkIsLogged != null);
    return checkIsLogged();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result checkIsLogged(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLogged != null) {
      return checkIsLogged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result checkIsLogged(_AuthEventCheckIsLogged value),
  }) {
    assert(checkIsLogged != null);
    return checkIsLogged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result checkIsLogged(_AuthEventCheckIsLogged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (checkIsLogged != null) {
      return checkIsLogged(this);
    }
    return orElse();
  }
}

abstract class _AuthEventCheckIsLogged implements AuthEvent {
  factory _AuthEventCheckIsLogged() = _$_AuthEventCheckIsLogged;
}

class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthStateInitial inital() {
    return _AuthStateInitial();
  }

  _AuthStateAuthenticate authenticate() {
    return _AuthStateAuthenticate();
  }

  _AuthStateUnAuthenticate unauthenticate() {
    return _AuthStateUnAuthenticate();
  }
}

// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result authenticate(),
    @required Result unauthenticate(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result authenticate(),
    Result unauthenticate(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_AuthStateInitial value),
    @required Result authenticate(_AuthStateAuthenticate value),
    @required Result unauthenticate(_AuthStateUnAuthenticate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_AuthStateInitial value),
    Result authenticate(_AuthStateAuthenticate value),
    Result unauthenticate(_AuthStateUnAuthenticate value),
    @required Result orElse(),
  });
}

abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

abstract class _$AuthStateInitialCopyWith<$Res> {
  factory _$AuthStateInitialCopyWith(
          _AuthStateInitial value, $Res Function(_AuthStateInitial) then) =
      __$AuthStateInitialCopyWithImpl<$Res>;
}

class __$AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateInitialCopyWith<$Res> {
  __$AuthStateInitialCopyWithImpl(
      _AuthStateInitial _value, $Res Function(_AuthStateInitial) _then)
      : super(_value, (v) => _then(v as _AuthStateInitial));

  @override
  _AuthStateInitial get _value => super._value as _AuthStateInitial;
}

class _$_AuthStateInitial implements _AuthStateInitial {
  _$_AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result authenticate(),
    @required Result unauthenticate(),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result authenticate(),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_AuthStateInitial value),
    @required Result authenticate(_AuthStateAuthenticate value),
    @required Result unauthenticate(_AuthStateUnAuthenticate value),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_AuthStateInitial value),
    Result authenticate(_AuthStateAuthenticate value),
    Result unauthenticate(_AuthStateUnAuthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _AuthStateInitial implements AuthState {
  factory _AuthStateInitial() = _$_AuthStateInitial;
}

abstract class _$AuthStateAuthenticateCopyWith<$Res> {
  factory _$AuthStateAuthenticateCopyWith(_AuthStateAuthenticate value,
          $Res Function(_AuthStateAuthenticate) then) =
      __$AuthStateAuthenticateCopyWithImpl<$Res>;
}

class __$AuthStateAuthenticateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateAuthenticateCopyWith<$Res> {
  __$AuthStateAuthenticateCopyWithImpl(_AuthStateAuthenticate _value,
      $Res Function(_AuthStateAuthenticate) _then)
      : super(_value, (v) => _then(v as _AuthStateAuthenticate));

  @override
  _AuthStateAuthenticate get _value => super._value as _AuthStateAuthenticate;
}

class _$_AuthStateAuthenticate implements _AuthStateAuthenticate {
  _$_AuthStateAuthenticate();

  @override
  String toString() {
    return 'AuthState.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthStateAuthenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result authenticate(),
    @required Result unauthenticate(),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return authenticate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result authenticate(),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_AuthStateInitial value),
    @required Result authenticate(_AuthStateAuthenticate value),
    @required Result unauthenticate(_AuthStateUnAuthenticate value),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_AuthStateInitial value),
    Result authenticate(_AuthStateAuthenticate value),
    Result unauthenticate(_AuthStateUnAuthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _AuthStateAuthenticate implements AuthState {
  factory _AuthStateAuthenticate() = _$_AuthStateAuthenticate;
}

abstract class _$AuthStateUnAuthenticateCopyWith<$Res> {
  factory _$AuthStateUnAuthenticateCopyWith(_AuthStateUnAuthenticate value,
          $Res Function(_AuthStateUnAuthenticate) then) =
      __$AuthStateUnAuthenticateCopyWithImpl<$Res>;
}

class __$AuthStateUnAuthenticateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateUnAuthenticateCopyWith<$Res> {
  __$AuthStateUnAuthenticateCopyWithImpl(_AuthStateUnAuthenticate _value,
      $Res Function(_AuthStateUnAuthenticate) _then)
      : super(_value, (v) => _then(v as _AuthStateUnAuthenticate));

  @override
  _AuthStateUnAuthenticate get _value =>
      super._value as _AuthStateUnAuthenticate;
}

class _$_AuthStateUnAuthenticate implements _AuthStateUnAuthenticate {
  _$_AuthStateUnAuthenticate();

  @override
  String toString() {
    return 'AuthState.unauthenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AuthStateUnAuthenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result authenticate(),
    @required Result unauthenticate(),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return unauthenticate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result authenticate(),
    Result unauthenticate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticate != null) {
      return unauthenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_AuthStateInitial value),
    @required Result authenticate(_AuthStateAuthenticate value),
    @required Result unauthenticate(_AuthStateUnAuthenticate value),
  }) {
    assert(inital != null);
    assert(authenticate != null);
    assert(unauthenticate != null);
    return unauthenticate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_AuthStateInitial value),
    Result authenticate(_AuthStateAuthenticate value),
    Result unauthenticate(_AuthStateUnAuthenticate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticate != null) {
      return unauthenticate(this);
    }
    return orElse();
  }
}

abstract class _AuthStateUnAuthenticate implements AuthState {
  factory _AuthStateUnAuthenticate() = _$_AuthStateUnAuthenticate;
}

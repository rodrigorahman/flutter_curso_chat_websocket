// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {bool loading, Option<Either<RegisterFailure, Unit>> failureOrSuccess}) {
    return _RegisterState(
      loading: loading,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

// ignore: unused_element
const $RegisterState = _$RegisterStateTearOff();

mixin _$RegisterState {
  bool get loading;
  Option<Either<RegisterFailure, Unit>> get failureOrSuccess;

  $RegisterStateCopyWith<RegisterState> get copyWith;
}

abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading, Option<Either<RegisterFailure, Unit>> failureOrSuccess});
}

class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<RegisterFailure, Unit>>,
    ));
  }
}

abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading, Option<Either<RegisterFailure, Unit>> failureOrSuccess});
}

class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object loading = freezed,
    Object failureOrSuccess = freezed,
  }) {
    return _then(_RegisterState(
      loading: loading == freezed ? _value.loading : loading as bool,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<RegisterFailure, Unit>>,
    ));
  }
}

class _$_RegisterState implements _RegisterState {
  _$_RegisterState({this.loading, this.failureOrSuccess});

  @override
  final bool loading;
  @override
  final Option<Either<RegisterFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'RegisterState(loading: $loading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(failureOrSuccess);

  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  factory _RegisterState(
          {bool loading,
          Option<Either<RegisterFailure, Unit>> failureOrSuccess}) =
      _$_RegisterState;

  @override
  bool get loading;
  @override
  Option<Either<RegisterFailure, Unit>> get failureOrSuccess;
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith;
}

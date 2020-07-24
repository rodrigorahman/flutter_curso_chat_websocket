// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'group_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GroupFailuresTearOff {
  const _$GroupFailuresTearOff();

  _GroupFailures serverError({String message}) {
    return _GroupFailures(
      message: message,
    );
  }

  GroupFailuresValidate validationError({String message}) {
    return GroupFailuresValidate(
      message: message,
    );
  }
}

// ignore: unused_element
const $GroupFailures = _$GroupFailuresTearOff();

mixin _$GroupFailures {
  String get message;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result validationError(String message),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result validationError(String message),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(_GroupFailures value),
    @required Result validationError(GroupFailuresValidate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_GroupFailures value),
    Result validationError(GroupFailuresValidate value),
    @required Result orElse(),
  });

  $GroupFailuresCopyWith<GroupFailures> get copyWith;
}

abstract class $GroupFailuresCopyWith<$Res> {
  factory $GroupFailuresCopyWith(
          GroupFailures value, $Res Function(GroupFailures) then) =
      _$GroupFailuresCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$GroupFailuresCopyWithImpl<$Res>
    implements $GroupFailuresCopyWith<$Res> {
  _$GroupFailuresCopyWithImpl(this._value, this._then);

  final GroupFailures _value;
  // ignore: unused_field
  final $Res Function(GroupFailures) _then;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

abstract class _$GroupFailuresCopyWith<$Res>
    implements $GroupFailuresCopyWith<$Res> {
  factory _$GroupFailuresCopyWith(
          _GroupFailures value, $Res Function(_GroupFailures) then) =
      __$GroupFailuresCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class __$GroupFailuresCopyWithImpl<$Res>
    extends _$GroupFailuresCopyWithImpl<$Res>
    implements _$GroupFailuresCopyWith<$Res> {
  __$GroupFailuresCopyWithImpl(
      _GroupFailures _value, $Res Function(_GroupFailures) _then)
      : super(_value, (v) => _then(v as _GroupFailures));

  @override
  _GroupFailures get _value => super._value as _GroupFailures;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(_GroupFailures(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$_GroupFailures implements _GroupFailures {
  _$_GroupFailures({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GroupFailures.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupFailures &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  _$GroupFailuresCopyWith<_GroupFailures> get copyWith =>
      __$GroupFailuresCopyWithImpl<_GroupFailures>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result validationError(String message),
  }) {
    assert(serverError != null);
    assert(validationError != null);
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result validationError(String message),
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
    @required Result serverError(_GroupFailures value),
    @required Result validationError(GroupFailuresValidate value),
  }) {
    assert(serverError != null);
    assert(validationError != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_GroupFailures value),
    Result validationError(GroupFailuresValidate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _GroupFailures implements GroupFailures {
  factory _GroupFailures({String message}) = _$_GroupFailures;

  @override
  String get message;
  @override
  _$GroupFailuresCopyWith<_GroupFailures> get copyWith;
}

abstract class $GroupFailuresValidateCopyWith<$Res>
    implements $GroupFailuresCopyWith<$Res> {
  factory $GroupFailuresValidateCopyWith(GroupFailuresValidate value,
          $Res Function(GroupFailuresValidate) then) =
      _$GroupFailuresValidateCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

class _$GroupFailuresValidateCopyWithImpl<$Res>
    extends _$GroupFailuresCopyWithImpl<$Res>
    implements $GroupFailuresValidateCopyWith<$Res> {
  _$GroupFailuresValidateCopyWithImpl(
      GroupFailuresValidate _value, $Res Function(GroupFailuresValidate) _then)
      : super(_value, (v) => _then(v as GroupFailuresValidate));

  @override
  GroupFailuresValidate get _value => super._value as GroupFailuresValidate;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(GroupFailuresValidate(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$GroupFailuresValidate implements GroupFailuresValidate {
  _$GroupFailuresValidate({this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'GroupFailures.validationError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GroupFailuresValidate &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $GroupFailuresValidateCopyWith<GroupFailuresValidate> get copyWith =>
      _$GroupFailuresValidateCopyWithImpl<GroupFailuresValidate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result serverError(String message),
    @required Result validationError(String message),
  }) {
    assert(serverError != null);
    assert(validationError != null);
    return validationError(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result serverError(String message),
    Result validationError(String message),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result serverError(_GroupFailures value),
    @required Result validationError(GroupFailuresValidate value),
  }) {
    assert(serverError != null);
    assert(validationError != null);
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result serverError(_GroupFailures value),
    Result validationError(GroupFailuresValidate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class GroupFailuresValidate implements GroupFailures {
  factory GroupFailuresValidate({String message}) = _$GroupFailuresValidate;

  @override
  String get message;
  @override
  $GroupFailuresValidateCopyWith<GroupFailuresValidate> get copyWith;
}

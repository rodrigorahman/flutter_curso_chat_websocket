// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'chat_group_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ChatGroupStateTearOff {
  const _$ChatGroupStateTearOff();

  _ChatGroupState call(
      {@required bool loading,
      @required Option<Either<GroupFailures, Group>> groupOrFailure,
      User user,
      IOWebSocketChannel socket}) {
    return _ChatGroupState(
      loading: loading,
      groupOrFailure: groupOrFailure,
      user: user,
      socket: socket,
    );
  }
}

// ignore: unused_element
const $ChatGroupState = _$ChatGroupStateTearOff();

mixin _$ChatGroupState {
  bool get loading;
  Option<Either<GroupFailures, Group>> get groupOrFailure;
  User get user;
  IOWebSocketChannel get socket;

  $ChatGroupStateCopyWith<ChatGroupState> get copyWith;
}

abstract class $ChatGroupStateCopyWith<$Res> {
  factory $ChatGroupStateCopyWith(
          ChatGroupState value, $Res Function(ChatGroupState) then) =
      _$ChatGroupStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<Either<GroupFailures, Group>> groupOrFailure,
      User user,
      IOWebSocketChannel socket});
}

class _$ChatGroupStateCopyWithImpl<$Res>
    implements $ChatGroupStateCopyWith<$Res> {
  _$ChatGroupStateCopyWithImpl(this._value, this._then);

  final ChatGroupState _value;
  // ignore: unused_field
  final $Res Function(ChatGroupState) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object groupOrFailure = freezed,
    Object user = freezed,
    Object socket = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      groupOrFailure: groupOrFailure == freezed
          ? _value.groupOrFailure
          : groupOrFailure as Option<Either<GroupFailures, Group>>,
      user: user == freezed ? _value.user : user as User,
      socket: socket == freezed ? _value.socket : socket as IOWebSocketChannel,
    ));
  }
}

abstract class _$ChatGroupStateCopyWith<$Res>
    implements $ChatGroupStateCopyWith<$Res> {
  factory _$ChatGroupStateCopyWith(
          _ChatGroupState value, $Res Function(_ChatGroupState) then) =
      __$ChatGroupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<Either<GroupFailures, Group>> groupOrFailure,
      User user,
      IOWebSocketChannel socket});
}

class __$ChatGroupStateCopyWithImpl<$Res>
    extends _$ChatGroupStateCopyWithImpl<$Res>
    implements _$ChatGroupStateCopyWith<$Res> {
  __$ChatGroupStateCopyWithImpl(
      _ChatGroupState _value, $Res Function(_ChatGroupState) _then)
      : super(_value, (v) => _then(v as _ChatGroupState));

  @override
  _ChatGroupState get _value => super._value as _ChatGroupState;

  @override
  $Res call({
    Object loading = freezed,
    Object groupOrFailure = freezed,
    Object user = freezed,
    Object socket = freezed,
  }) {
    return _then(_ChatGroupState(
      loading: loading == freezed ? _value.loading : loading as bool,
      groupOrFailure: groupOrFailure == freezed
          ? _value.groupOrFailure
          : groupOrFailure as Option<Either<GroupFailures, Group>>,
      user: user == freezed ? _value.user : user as User,
      socket: socket == freezed ? _value.socket : socket as IOWebSocketChannel,
    ));
  }
}

class _$_ChatGroupState implements _ChatGroupState {
  _$_ChatGroupState(
      {@required this.loading,
      @required this.groupOrFailure,
      this.user,
      this.socket})
      : assert(loading != null),
        assert(groupOrFailure != null);

  @override
  final bool loading;
  @override
  final Option<Either<GroupFailures, Group>> groupOrFailure;
  @override
  final User user;
  @override
  final IOWebSocketChannel socket;

  @override
  String toString() {
    return 'ChatGroupState(loading: $loading, groupOrFailure: $groupOrFailure, user: $user, socket: $socket)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatGroupState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.groupOrFailure, groupOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.groupOrFailure, groupOrFailure)) &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.socket, socket) ||
                const DeepCollectionEquality().equals(other.socket, socket)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(groupOrFailure) ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(socket);

  @override
  _$ChatGroupStateCopyWith<_ChatGroupState> get copyWith =>
      __$ChatGroupStateCopyWithImpl<_ChatGroupState>(this, _$identity);
}

abstract class _ChatGroupState implements ChatGroupState {
  factory _ChatGroupState(
      {@required bool loading,
      @required Option<Either<GroupFailures, Group>> groupOrFailure,
      User user,
      IOWebSocketChannel socket}) = _$_ChatGroupState;

  @override
  bool get loading;
  @override
  Option<Either<GroupFailures, Group>> get groupOrFailure;
  @override
  User get user;
  @override
  IOWebSocketChannel get socket;
  @override
  _$ChatGroupStateCopyWith<_ChatGroupState> get copyWith;
}

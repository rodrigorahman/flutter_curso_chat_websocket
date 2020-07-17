// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'group_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GroupListEventTearOff {
  const _$GroupListEventTearOff();

  _GroupListEventFindAll findAll() {
    return _GroupListEventFindAll();
  }

  _GroupListEventCreateGroup create(String name) {
    return _GroupListEventCreateGroup(
      name,
    );
  }
}

// ignore: unused_element
const $GroupListEvent = _$GroupListEventTearOff();

mixin _$GroupListEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result findAll(),
    @required Result create(String name),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result findAll(),
    Result create(String name),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result findAll(_GroupListEventFindAll value),
    @required Result create(_GroupListEventCreateGroup value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result findAll(_GroupListEventFindAll value),
    Result create(_GroupListEventCreateGroup value),
    @required Result orElse(),
  });
}

abstract class $GroupListEventCopyWith<$Res> {
  factory $GroupListEventCopyWith(
          GroupListEvent value, $Res Function(GroupListEvent) then) =
      _$GroupListEventCopyWithImpl<$Res>;
}

class _$GroupListEventCopyWithImpl<$Res>
    implements $GroupListEventCopyWith<$Res> {
  _$GroupListEventCopyWithImpl(this._value, this._then);

  final GroupListEvent _value;
  // ignore: unused_field
  final $Res Function(GroupListEvent) _then;
}

abstract class _$GroupListEventFindAllCopyWith<$Res> {
  factory _$GroupListEventFindAllCopyWith(_GroupListEventFindAll value,
          $Res Function(_GroupListEventFindAll) then) =
      __$GroupListEventFindAllCopyWithImpl<$Res>;
}

class __$GroupListEventFindAllCopyWithImpl<$Res>
    extends _$GroupListEventCopyWithImpl<$Res>
    implements _$GroupListEventFindAllCopyWith<$Res> {
  __$GroupListEventFindAllCopyWithImpl(_GroupListEventFindAll _value,
      $Res Function(_GroupListEventFindAll) _then)
      : super(_value, (v) => _then(v as _GroupListEventFindAll));

  @override
  _GroupListEventFindAll get _value => super._value as _GroupListEventFindAll;
}

class _$_GroupListEventFindAll implements _GroupListEventFindAll {
  _$_GroupListEventFindAll();

  @override
  String toString() {
    return 'GroupListEvent.findAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GroupListEventFindAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result findAll(),
    @required Result create(String name),
  }) {
    assert(findAll != null);
    assert(create != null);
    return findAll();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result findAll(),
    Result create(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result findAll(_GroupListEventFindAll value),
    @required Result create(_GroupListEventCreateGroup value),
  }) {
    assert(findAll != null);
    assert(create != null);
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result findAll(_GroupListEventFindAll value),
    Result create(_GroupListEventCreateGroup value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _GroupListEventFindAll implements GroupListEvent {
  factory _GroupListEventFindAll() = _$_GroupListEventFindAll;
}

abstract class _$GroupListEventCreateGroupCopyWith<$Res> {
  factory _$GroupListEventCreateGroupCopyWith(_GroupListEventCreateGroup value,
          $Res Function(_GroupListEventCreateGroup) then) =
      __$GroupListEventCreateGroupCopyWithImpl<$Res>;
  $Res call({String name});
}

class __$GroupListEventCreateGroupCopyWithImpl<$Res>
    extends _$GroupListEventCopyWithImpl<$Res>
    implements _$GroupListEventCreateGroupCopyWith<$Res> {
  __$GroupListEventCreateGroupCopyWithImpl(_GroupListEventCreateGroup _value,
      $Res Function(_GroupListEventCreateGroup) _then)
      : super(_value, (v) => _then(v as _GroupListEventCreateGroup));

  @override
  _GroupListEventCreateGroup get _value =>
      super._value as _GroupListEventCreateGroup;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_GroupListEventCreateGroup(
      name == freezed ? _value.name : name as String,
    ));
  }
}

class _$_GroupListEventCreateGroup implements _GroupListEventCreateGroup {
  _$_GroupListEventCreateGroup(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'GroupListEvent.create(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupListEventCreateGroup &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$GroupListEventCreateGroupCopyWith<_GroupListEventCreateGroup>
      get copyWith =>
          __$GroupListEventCreateGroupCopyWithImpl<_GroupListEventCreateGroup>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result findAll(),
    @required Result create(String name),
  }) {
    assert(findAll != null);
    assert(create != null);
    return create(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result findAll(),
    Result create(String name),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result findAll(_GroupListEventFindAll value),
    @required Result create(_GroupListEventCreateGroup value),
  }) {
    assert(findAll != null);
    assert(create != null);
    return create(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result findAll(_GroupListEventFindAll value),
    Result create(_GroupListEventCreateGroup value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _GroupListEventCreateGroup implements GroupListEvent {
  factory _GroupListEventCreateGroup(String name) =
      _$_GroupListEventCreateGroup;

  String get name;
  _$GroupListEventCreateGroupCopyWith<_GroupListEventCreateGroup> get copyWith;
}

class _$GroupListStateTearOff {
  const _$GroupListStateTearOff();

  _GroupListState call(
      {@required bool loading,
      @required Option<Either<GroupFailures, List<Group>>> groupsOrFailure,
      @required Option<Either<GroupFailures, Unit>> createGroupOrFailure}) {
    return _GroupListState(
      loading: loading,
      groupsOrFailure: groupsOrFailure,
      createGroupOrFailure: createGroupOrFailure,
    );
  }
}

// ignore: unused_element
const $GroupListState = _$GroupListStateTearOff();

mixin _$GroupListState {
  bool get loading;
  Option<Either<GroupFailures, List<Group>>> get groupsOrFailure;
  Option<Either<GroupFailures, Unit>> get createGroupOrFailure;

  $GroupListStateCopyWith<GroupListState> get copyWith;
}

abstract class $GroupListStateCopyWith<$Res> {
  factory $GroupListStateCopyWith(
          GroupListState value, $Res Function(GroupListState) then) =
      _$GroupListStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<Either<GroupFailures, List<Group>>> groupsOrFailure,
      Option<Either<GroupFailures, Unit>> createGroupOrFailure});
}

class _$GroupListStateCopyWithImpl<$Res>
    implements $GroupListStateCopyWith<$Res> {
  _$GroupListStateCopyWithImpl(this._value, this._then);

  final GroupListState _value;
  // ignore: unused_field
  final $Res Function(GroupListState) _then;

  @override
  $Res call({
    Object loading = freezed,
    Object groupsOrFailure = freezed,
    Object createGroupOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed ? _value.loading : loading as bool,
      groupsOrFailure: groupsOrFailure == freezed
          ? _value.groupsOrFailure
          : groupsOrFailure as Option<Either<GroupFailures, List<Group>>>,
      createGroupOrFailure: createGroupOrFailure == freezed
          ? _value.createGroupOrFailure
          : createGroupOrFailure as Option<Either<GroupFailures, Unit>>,
    ));
  }
}

abstract class _$GroupListStateCopyWith<$Res>
    implements $GroupListStateCopyWith<$Res> {
  factory _$GroupListStateCopyWith(
          _GroupListState value, $Res Function(_GroupListState) then) =
      __$GroupListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<Either<GroupFailures, List<Group>>> groupsOrFailure,
      Option<Either<GroupFailures, Unit>> createGroupOrFailure});
}

class __$GroupListStateCopyWithImpl<$Res>
    extends _$GroupListStateCopyWithImpl<$Res>
    implements _$GroupListStateCopyWith<$Res> {
  __$GroupListStateCopyWithImpl(
      _GroupListState _value, $Res Function(_GroupListState) _then)
      : super(_value, (v) => _then(v as _GroupListState));

  @override
  _GroupListState get _value => super._value as _GroupListState;

  @override
  $Res call({
    Object loading = freezed,
    Object groupsOrFailure = freezed,
    Object createGroupOrFailure = freezed,
  }) {
    return _then(_GroupListState(
      loading: loading == freezed ? _value.loading : loading as bool,
      groupsOrFailure: groupsOrFailure == freezed
          ? _value.groupsOrFailure
          : groupsOrFailure as Option<Either<GroupFailures, List<Group>>>,
      createGroupOrFailure: createGroupOrFailure == freezed
          ? _value.createGroupOrFailure
          : createGroupOrFailure as Option<Either<GroupFailures, Unit>>,
    ));
  }
}

class _$_GroupListState implements _GroupListState {
  _$_GroupListState(
      {@required this.loading,
      @required this.groupsOrFailure,
      @required this.createGroupOrFailure})
      : assert(loading != null),
        assert(groupsOrFailure != null),
        assert(createGroupOrFailure != null);

  @override
  final bool loading;
  @override
  final Option<Either<GroupFailures, List<Group>>> groupsOrFailure;
  @override
  final Option<Either<GroupFailures, Unit>> createGroupOrFailure;

  @override
  String toString() {
    return 'GroupListState(loading: $loading, groupsOrFailure: $groupsOrFailure, createGroupOrFailure: $createGroupOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupListState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.groupsOrFailure, groupsOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.groupsOrFailure, groupsOrFailure)) &&
            (identical(other.createGroupOrFailure, createGroupOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.createGroupOrFailure, createGroupOrFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(groupsOrFailure) ^
      const DeepCollectionEquality().hash(createGroupOrFailure);

  @override
  _$GroupListStateCopyWith<_GroupListState> get copyWith =>
      __$GroupListStateCopyWithImpl<_GroupListState>(this, _$identity);
}

abstract class _GroupListState implements GroupListState {
  factory _GroupListState(
          {@required bool loading,
          @required Option<Either<GroupFailures, List<Group>>> groupsOrFailure,
          @required Option<Either<GroupFailures, Unit>> createGroupOrFailure}) =
      _$_GroupListState;

  @override
  bool get loading;
  @override
  Option<Either<GroupFailures, List<Group>>> get groupsOrFailure;
  @override
  Option<Either<GroupFailures, Unit>> get createGroupOrFailure;
  @override
  _$GroupListStateCopyWith<_GroupListState> get copyWith;
}

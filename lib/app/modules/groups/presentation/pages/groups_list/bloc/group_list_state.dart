part of 'group_list_bloc.dart';

@freezed
abstract class GroupListState with _$GroupListState {
  factory GroupListState({
    @required bool loading,
    @required Option<Either<GroupFailures, List<Group>>> groupsOrFailure,
    @required Option<Either<GroupFailures, Unit>> createGroupOrFailure,
  }) = _GroupListState;

  factory GroupListState.initial() => GroupListState(
    groupsOrFailure: none(),
    createGroupOrFailure: none(),
    loading: false
  );
  
}

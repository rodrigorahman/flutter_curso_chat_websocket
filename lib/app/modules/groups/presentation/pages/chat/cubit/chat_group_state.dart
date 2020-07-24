
part of 'chat_group_cubit.dart';

@freezed
abstract class ChatGroupState with _$ChatGroupState {
  factory ChatGroupState({
    @required bool loading,
    @required Option<Either<GroupFailures, Group>> groupOrFailure,
    User user,
    IOWebSocketChannel socket
  }) = _ChatGroupState;

  factory ChatGroupState.initial() => ChatGroupState(loading: false, groupOrFailure: none());

}
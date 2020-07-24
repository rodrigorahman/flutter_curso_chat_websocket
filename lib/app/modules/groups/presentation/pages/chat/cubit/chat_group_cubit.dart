import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group_message.dart';
import 'package:chat_websocket/app/modules/groups/presentation/ports/i_chat_websocket_connect.dart';
import 'package:chat_websocket/app/modules/groups/presentation/ports/i_find_group_by_id.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_socket_channel/io.dart';

part 'chat_group_cubit.freezed.dart';
part 'chat_group_state.dart';

@Injectable()
class ChatGroupCubit extends Cubit<ChatGroupState> {
  final IFindGroupById _findGroupById;
  final IChatWebsocketConnect _socket;

  ChatGroupCubit(
    this._findGroupById,
    this._socket
  ) : super(ChatGroupState.initial());

  Future<void> loadChat(Group group) async {
    emit(state.copyWith(loading: true, groupOrFailure: none()));
    final sp = await SharedPreferences.getInstance();
    final userStr = sp.getString('userLogged');
    final userMap = jsonDecode(userStr);


    var groupResponse = await _findGroupById.execute(group.id);
    var stream = _socket.connectWebSocket(group.id);
    emit(state.copyWith(loading: false, socket: stream, groupOrFailure: optionOf(groupResponse), user: User(
      id: userMap['id'],
      name: userMap['name'],
      login: userMap['login'],
    )));
  }

  void sendMessage(String message, Group group){
    
    var msg = jsonEncode({
      'grupo': group.id,
      'mensagem': message,
      'data': DateTime.now().toIso8601String(),
      'usuario': state.user.name
    });
    print(msg);
    state.socket.sink.add(msg);
  }

  @override
  Future<void> close() {
    return super.close();
  }

}

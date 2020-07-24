import 'dart:async';

import 'package:chat_websocket/app/infrastructure/dependency_injection/instance_factory.dart';
import 'package:chat_websocket/app/modules/groups/data/model/group_message_model.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group_message.dart';
import 'package:chat_websocket/app/modules/groups/presentation/pages/chat/cubit/chat_group_cubit.dart';
import 'package:flutter/material.dart';

import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:chat_websocket/app/shared/loader.dart';
import 'package:web_socket_channel/io.dart';

class ChatGroupPage extends StatelessWidget {
  final Group group;
  final Color color;
  

  const ChatGroupPage({
    Key key,
    this.group,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${group.name}'),
      ),
      body: BlocProvider(
        create: (context) => InstanceFactory.get<ChatGroupCubit>()..loadChat(group),
        child: ChatGroupContent(
          group: group,
          color: color,
        ),
      ),
    );
  }
}

class ChatGroupContent extends StatefulWidget {
  final Color color;
  final Group group;

  const ChatGroupContent({Key key, this.color, this.group}) : super(key: key);

  @override
  _ChatGroupContentState createState() => _ChatGroupContentState();
}

class _ChatGroupContentState extends State<ChatGroupContent> {
  IOWebSocketChannel chatSocket;
  ScrollController _scrollController = ScrollController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatGroupCubit, ChatGroupState>(
      listener: (context, state) {
        context.showHideLoader(state.loading);
      },
      child: SafeArea(
        bottom: true,
        child: Column(
          children: <Widget>[
            Expanded(
              child: BlocBuilder<ChatGroupCubit, ChatGroupState>(
                builder: (context, state) {
                  return state.groupOrFailure.fold(
                    () => Container(),
                    (result) => result.fold(
                      (l) => Center(child: Text('Erro ao Buscar Mensagens')),
                      (group) {
                        chatSocket = state.socket;
                        List<GroupMessage> messages;
                        return StreamBuilder<Object>(
                            stream: state.socket.stream,
                            builder: (context, snapshot) {
                              messages ??= group.messages;

                              if (snapshot.hasData) {
                                messages.add(GroupMessageModel.fromJson(snapshot.data));
                              }
                              Future.delayed(Duration.zero, () {
                                _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
                              });

                              return ListView.builder(
                                shrinkWrap: true,
                                controller: _scrollController,
                                itemCount: messages.length,
                                itemBuilder: (context, index) {
                                  final message = messages[index];
                                  final left = message.user == state.user.name;
                                  return ListTile(
                                      title: Text(message.message, textAlign: !left ? TextAlign.end : null),
                                      subtitle: Text(
                                        message.user,
                                        textAlign: !left ? TextAlign.end : null,
                                      ));
                                },
                              );
                            });
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: TextFormField(
                        controller: messageController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Theme.of(context).primaryColor,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.bloc<ChatGroupCubit>().sendMessage(messageController.text, widget.group);
                    },
                                      child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: CircleAvatar(
                        child: Icon(Icons.send),
                        radius: 28,
                        backgroundColor: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            )
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 200,
            //   child: Row(
            //     children: <Widget>[TextFormField()],
            //   ),
            // )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    chatSocket.sink.close();
    super.dispose();
  }
}

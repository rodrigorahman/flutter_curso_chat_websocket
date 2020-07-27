
import 'package:chat_websocket/app/modules/groups/domain/entities/group_message.dart';
import 'package:equatable/equatable.dart';

class Group extends Equatable {
  
  final String id;
  final String name;
  final List<GroupMessage> messages;
  
  Group({
    this.id,
    this.name,
    this.messages,
  });

  @override
  List<Object> get props => [id, name, messages];

}

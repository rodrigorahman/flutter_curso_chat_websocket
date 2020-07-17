
import 'package:chat_websocket/app/modules/groups/domain/entities/group_message.dart';

class Group {
  
  String id;
  String name;
  List<GroupMessage> messages;
  
  Group({
    this.id,
    this.name,
    this.messages,
  });

}


import 'dart:convert';

import 'package:chat_websocket/app/modules/groups/domain/entities/group_message.dart';

class GroupMessageModel extends GroupMessage {

  String id;
  String message;
  DateTime date;
  String user;

  GroupMessageModel({
    this.id,
    this.message,
    this.date,
    this.user,
  }) : super(id: id, message: message, dateTime: date, user: user);
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'date': date,
      'user': user,
    };
  }

  static GroupMessageModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    // DateFormat dateFormat = DateFormat.();

    return GroupMessageModel(
      id: map['id'] ?? '',
      message: map['mensagem'] ?? '',
      date: DateTime.parse(map['data']),
      user: map['usuario'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  static GroupMessageModel fromJson(String source) => fromMap(json.decode(source));
}


import 'dart:convert';

import 'package:chat_websocket/app/modules/groups/infra/model/group_message_model.dart';
import 'package:chat_websocket/app/modules/groups/domain/entities/group.dart';
import 'package:equatable/equatable.dart';

class GroupModel extends Group with EquatableMixin {
  
  String id;
  String nome;
  List<GroupMessageModel> mensagens;
  
  GroupModel({
    this.id,
    this.nome,
    this.mensagens,
  }): super(id: id, name: nome, messages: mensagens);


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'mensagens': mensagens?.map((x) => x?.toMap())?.toList(),
    };
  }

  static GroupModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return GroupModel(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      mensagens: List<GroupMessageModel>.from(map['mensagens']?.map((x) => GroupMessageModel.fromMap(x) ?? GroupMessageModel()) ?? const []),
    );
  }

  String toJson() => json.encode(toMap());

  static GroupModel fromJson(String source) => fromMap(json.decode(source));

  @override
  List<Object> get props => [id, nome, mensagens];
}

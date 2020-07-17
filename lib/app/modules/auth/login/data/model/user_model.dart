import 'dart:convert';

import 'package:chat_websocket/app/modules/auth/login/domain/entities/user.dart';

class UserModel extends User {
  String id;
  String nome;
  String login;
  UserModel({
    this.id,
    this.nome,
    this.login,
  }) : super(id: id, name: nome, login: login);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'login': login,
    };
  }

  static UserModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserModel(
      id: map['id'] ?? '',
      nome: map['nome'] ?? '',
      login: map['login'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  static UserModel fromJson(String source) => fromMap(json.decode(source));
}

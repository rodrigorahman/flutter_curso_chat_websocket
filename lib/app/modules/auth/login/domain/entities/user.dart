import 'dart:convert';

import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String name;
  final String login;

  User({
    this.id,
    this.name,
    this.login,
  });

  @override
  List<Object> get props => [id, name, login];
}

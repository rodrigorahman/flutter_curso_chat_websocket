
import 'package:equatable/equatable.dart';

class GroupMessage extends Equatable {
  
  final String id;
  final String message;
  final DateTime dateTime;
  final String user;
  
  GroupMessage({
    this.id,
    this.message,
    this.dateTime,
    this.user,
  });

  @override
  List<Object> get props => [id, message, dateTime, user];

}

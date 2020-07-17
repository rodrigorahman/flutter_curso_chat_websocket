part of 'group_list_bloc.dart';

@freezed
abstract class GroupListEvent with _$GroupListEvent {
   factory GroupListEvent.findAll() = _GroupListEventFindAll;
   factory GroupListEvent.create(String name) = _GroupListEventCreateGroup;
}
import 'package:chat_websocket/app/modules/groups/data/model/group_model.dart';

abstract class IGroupDataSource {
  Future<List<GroupModel>> findAll();
  Future<void> createGroup(String name);
}
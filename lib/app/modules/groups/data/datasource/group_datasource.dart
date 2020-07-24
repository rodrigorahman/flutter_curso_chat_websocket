import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/data/model/group_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:web_socket_channel/io.dart';

import 'i_group_datasource.dart';

@LazySingleton(as: IGroupDataSource)
class GroupDatasource implements IGroupDataSource {
  final IRestClient _restClient;

  GroupDatasource(this._restClient);

  @override
  Future<List<GroupModel>> findAll() async {
    try {
      final resp = await _restClient.instance().get('/grupos');
      return resp.data?.map<GroupModel>((g) => GroupModel.fromMap(g))?.toList();
    } on RestClientException catch (e, s) {
      print(s);
      throw GroupFailures.serverError(message: e.toString());
    }
  }

  @override
  Future<void> createGroup(String name) async {
    try {
      await _restClient.instance().post('/grupo', data: {'nomeGrupo': name});
    } on RestClientException catch (e, s) {
      print(s);
      throw GroupFailures.serverError(message: e.toString());
    }
  }

  @override
  Future<GroupModel> findById(String id) async {
    try {
      return await _restClient.instance().get('/grupo/$id').then(
            (resp) => GroupModel.fromMap(resp.data),
          );
    } on RestClientException catch (e, s) {
      print(s);
      throw GroupFailures.serverError(message: e.toString());
    } catch(e) {
      throw GroupFailures.serverError(message: e.toString());
    }
  }

  @override
  IOWebSocketChannel chatWebSocketConnection(String groupId) {
    var url = DotEnv().env['ws_url'];
    var socket = IOWebSocketChannel.connect('$url/grupo/$groupId/connect');
    return socket;
  }
}

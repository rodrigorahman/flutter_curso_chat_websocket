import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/groups/data/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/data/model/group_model.dart';
import 'package:injectable/injectable.dart';

import 'i_group_datasource.dart';

@LazySingleton(as: IGroupDataSource)
class GroupDatasource implements IGroupDataSource {

  final IRestClient _restClient;

  GroupDatasource(this._restClient);

  @override
  Future<List<GroupModel>> findAll() async {
    try{
      final resp = await _restClient.instance().get('/grupos');
      return resp.data?.map<GroupModel>((g) => GroupModel.fromMap(g))?.toList();
    }on RestClientException catch(e, s) {
      print(s);
      throw GroupFailures.serverError(message: e.toString());
    }
  }

  @override
  Future<void> createGroup(String name) async {
     try{
      await _restClient.instance().post('/grupo', data: {
        'nomeGrupo': name
      });
    }on RestClientException catch(e, s) {
      print(s);
      throw GroupFailures.serverError(message: e.toString());
    }
  }
}
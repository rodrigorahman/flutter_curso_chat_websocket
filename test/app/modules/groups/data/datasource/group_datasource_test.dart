import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/groups/data/datasource/group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/infra/datasource/i_group_datasource.dart';
import 'package:chat_websocket/app/modules/groups/infra/failures/group_failures.dart';
import 'package:chat_websocket/app/modules/groups/infra/model/group_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class RestClientMock extends Mock implements IRestClient {}

class DioMock extends Mock implements Dio {}

class DioResponseMock extends Mock implements Response {}

class RestClientExceptionMock extends Mock implements RestClientException {}

void main() {
  IRestClient restClient;
  DioMock dio;
  Response response;
  RestClientExceptionMock restClientExceptionMock;

  setUp(() {
    restClient = RestClientMock();
    dio = DioMock();
    response = DioResponseMock();
    restClientExceptionMock = RestClientExceptionMock();
  });

  test('should findAll groups', () async {

    final modelResult = {
      'id': '1',
      'nome': 'nome',
      'mensagens': []
    };

    when(restClient.instance()).thenAnswer((_) => dio);
    when(response.data).thenReturn([modelResult]);
    when(dio.get(any)).thenAnswer((_) async => response);

    IGroupDataSource groupSource = GroupDatasource(restClient);
    final groups = await groupSource.findAll();

    expect(groups, [GroupModel.fromMap(modelResult)]);
  });


  test('should findAll groups return none', () async {

    when(restClient.instance()).thenAnswer((_) => dio);
    when(response.data).thenReturn([]);
    when(dio.get(any)).thenAnswer((_) async => response);

    IGroupDataSource groupSource = GroupDatasource(restClient);
    final groups = await groupSource.findAll();

    expect(groups, []);
  });

   test('should findAll groups return failure', () async {

    when(restClient.instance()).thenThrow(restClientExceptionMock);

    IGroupDataSource groupSource = GroupDatasource(restClient);
    expect(groupSource.findAll(), throwsA(isA<GroupFailuresServerError>()));
    
  });

   test('should findAll groups return generic exception', () async {

    when(restClient.instance()).thenThrow(Exception());

    IGroupDataSource groupSource = GroupDatasource(restClient);
    expect(groupSource.findAll(), throwsA(isA<GroupFailuresServerError>()));
    
  });

  test('should create group success', () async {

    when(restClient.instance()).thenAnswer((_) => dio);
    when(dio.post(any, data: anyNamed('data'))).thenAnswer((_) async => response);

    IGroupDataSource groupSource = GroupDatasource(restClient);

    try{
      groupSource.createGroup('nome grupo');
    } catch(e) {
      fail('retornu um exception');
    }
    
  });

  test('should create Rest Error', () async {

    when(restClient.instance()).thenAnswer((_) => dio);
    when(dio.post(any, data: anyNamed('data'))).thenThrow(restClientExceptionMock);

    IGroupDataSource groupSource = GroupDatasource(restClient);

    expect(groupSource.createGroup('nome grupo'), throwsA(isA<GroupFailuresServerError>()));
    
  });


  test('should find group by id', () async {

    final modelResult = {
      'id': '1',
      'nome': 'nome',
      'mensagens': []
    };

    when(restClient.instance()).thenAnswer((_) => dio);
    when(response.data).thenReturn(modelResult);
    when(dio.get(any)).thenAnswer((_) async => response);

    IGroupDataSource groupSource = GroupDatasource(restClient);
    final groups = await groupSource.findById('1');

    expect(groups, GroupModel.fromMap(modelResult));
  });

  test('should find group by id with rest error', () async {

    when(restClient.instance()).thenAnswer((_) => dio);
    when(dio.get(any)).thenThrow((_) => restClientExceptionMock);

    IGroupDataSource groupSource = GroupDatasource(restClient);

    expect(groupSource.findById('1'), throwsA(isA<GroupFailuresServerError>()));
  });

   test('should find group by id with generic error', () async {

    when(restClient.instance()).thenAnswer((_) => dio);
    when(dio.get(any)).thenThrow((_) => Exception());

    IGroupDataSource groupSource = GroupDatasource(restClient);

    expect(groupSource.findById('1'), throwsA(isA<GroupFailuresServerError>()));
  });
}

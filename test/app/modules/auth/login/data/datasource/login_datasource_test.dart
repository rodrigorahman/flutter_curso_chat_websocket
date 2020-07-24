import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/auth/login/data/datasource/login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/domain/failures/login_failure.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/datasource/i_login_datasource.dart';
import 'package:chat_websocket/app/modules/auth/login/infra/model/user_model.dart';
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
  Map<String, dynamic> userResponse;
  RestClientExceptionMock restClientExceptionMock;
  setUp((){
    restClient = RestClientMock();
    dio = DioMock();
    response = DioResponseMock();
    userResponse = {
      'id': 'id',
      'nome': 'nome',
      'login': 'login',
    };
    restClientExceptionMock = RestClientExceptionMock();
  });

  test('should login and return user', () async {
    when(response.data).thenReturn(userResponse);
    when(dio.post(any, data: anyNamed('data'))).thenAnswer((_) async => response);
    when(restClient.instance()).thenReturn(dio);
    ILoginDatasource datasource = LoginDatasource(restClient);
    final user = await datasource.login('login', 'password');

    expect(user, isNotNull);
    expect(user , UserModel.fromMap(userResponse));

  });

  test('should login and returns LoginFailure.userNotFound', () async {
    
    when(response.statusCode).thenReturn(403);
    when(restClientExceptionMock.response).thenReturn(response);
    when(dio.post(any, data: anyNamed('data'))).thenThrow(restClientExceptionMock);
    when(restClient.instance()).thenReturn(dio);

    ILoginDatasource datasource = LoginDatasource(restClient);
    final call = datasource.login;

    expect(call('login', 'password'), throwsA(isA<LoginNotFoundFailure>()));

  });

  test('should login and returns LoginFailure.serverError', () async {
    
    when(response.statusCode).thenReturn(500);
    when(restClientExceptionMock.response).thenReturn(response);
    when(dio.post(any, data: anyNamed('data'))).thenThrow(restClientExceptionMock);
    when(restClient.instance()).thenReturn(dio);

    ILoginDatasource datasource = LoginDatasource(restClient);
    final call = datasource.login;

    expect(call('login', 'password'), throwsA(isA<LoginServerErrorFailure>()));

  });

    test('should try login and returns LoginFailure.serverError with any Exception ', () async {
    
    when(restClient.instance()).thenThrow(Exception());

    ILoginDatasource datasource = LoginDatasource(restClient);
    final call = datasource.login;

    expect(call('login', 'password'), throwsA(isA<LoginServerErrorFailure>()));

  });

}
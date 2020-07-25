import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:chat_websocket/app/modules/auth/register/infra/datasource/i_user_register_datasource.dart';
import 'package:chat_websocket/app/modules/auth/register/data/datasource/user_register_datasource.dart';
import 'package:chat_websocket/app/modules/auth/register/domain/exceptions/register_failure.dart';
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

  test('should save user with success', () async {
    when(dio.post(any)).thenAnswer((_) async => response);
    when(restClient.instance()).thenReturn(dio);
    IUserRegisterDatasource datasource = new UserRegisterDatasource(restClient);
    try {
      await datasource.saveUser('name', 'login', 'password');
    } catch (e) {
      fail('Exception return');
    }
  });
  
  test('should save user with rest error', () async {
    when(dio.post(any, data: anyNamed('data'))).thenThrow(restClientExceptionMock);
    when(restClient.instance()).thenReturn(dio);
    IUserRegisterDatasource datasource = new UserRegisterDatasource(restClient);
    expect(datasource.saveUser('name', 'login', 'password'), throwsA(isA<RegisterFailureServer>()));
  });

   test('should save user with generic error', () async {
    when(restClient.instance()).thenThrow(Exception());
    IUserRegisterDatasource datasource = new UserRegisterDatasource(restClient);
    expect(datasource.saveUser('name', 'login', 'password'), throwsA(isA<RegisterFailureServer>()));
  });
}

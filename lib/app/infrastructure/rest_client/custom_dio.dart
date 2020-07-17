import 'package:chat_websocket/app/infrastructure/rest_client/i_rest_client.dart';
import 'package:chat_websocket/app/infrastructure/rest_client/rest_client_exception.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IRestClient)
class CustomDio implements IRestClient {

  Dio _dio;
  
  BaseOptions options = BaseOptions(
    baseUrl: DotEnv().env['base_url'],
    connectTimeout: int.parse(DotEnv().env['dio_connectTimeout']),
    receiveTimeout: int.parse(DotEnv().env['dio_receiveTimeout']),
  );

  @override
  Dio instance() => _dio;

  CustomDio() {
    _dio = Dio(options);
    _dio.interceptors.add(ErrorInterceptor());
  }
}


class ErrorInterceptor extends InterceptorsWrapper {

  @override
  Future onError(DioError err) {
    throw RestClientException(err);
  }

}
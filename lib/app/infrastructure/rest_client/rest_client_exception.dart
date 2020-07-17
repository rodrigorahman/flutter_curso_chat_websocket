import 'package:dio/dio.dart';

class RestClientException extends DioError {
  RestClientException(DioError e) : super(request: e.request, response: e.response, error: e.error);
}

import 'package:dio/dio.dart';
import 'package:flutter_folder_structure/config/api_settings.dart';

class HttpService {
  final Dio _dio;

  HttpService(this._dio) {
    _dio.options.baseUrl = ApiSettings.baseUrl;
  }

  Future<Response> doGet(String uri) async {
    Response response;
     try {
       response = await _dio.get(uri);
     } catch (e) {
       print(e);
     }

     return response;
  }
}

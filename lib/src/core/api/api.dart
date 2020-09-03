
import 'package:dio/dio.dart';

import 'app_interceptors.dart';

class ApiProvider {
  final String _baseApiUrl = "https://api.themoviedb.org/3/";

  String get urlApi => _baseApiUrl;

  Dio dio;

  ApiProvider() {
    dio = Dio(BaseOptions(baseUrl: _baseApiUrl));
    dio.interceptors.add(AppInterceptors());
  }

}


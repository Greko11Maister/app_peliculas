import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {

  @override
  Future<dynamic> onRequest(RequestOptions options) async {

    if (options.headers.containsKey("requirestoken")) {

      options.headers.remove("requirestoken");

      options.headers.addAll({"Authorization": "Bearer <Token>"});

      return options;
    }

  }

  @override
  Future onError(DioError dioError) {

    switch (dioError.type) {
      case DioErrorType.RESPONSE:
        if(dioError.response.statusCode == 401) {

        }
        break;
      default:
        break;
    }

    return super.onError(dioError);
  }

  @override
  Future<dynamic> onResponse(Response response) async {

  }
}
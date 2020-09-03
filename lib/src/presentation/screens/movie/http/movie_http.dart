import 'package:dio/dio.dart';
import 'package:movieapp/src/core/api/api.dart';
import 'package:movieapp/src/presentation/screens/movie/models/search_multi_model.dart';

class MovieHttp extends ApiProvider{
  Future<SearchMultiModel> searchMulti(String query) async{
    try{
      Response response =  await dio.get("search/multi?api_key=68f5c2c960dd4fca9be406440e5aa4e6&query=$query");
      print(response.data);
     return SearchMultiModel.fromJson(response.data);
    }catch (error){
      print("Http Error $error");
      return Future.error(error);
    }
  }
}
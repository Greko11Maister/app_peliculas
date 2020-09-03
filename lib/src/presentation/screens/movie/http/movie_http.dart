import 'package:dio/dio.dart';
import 'package:movieapp/src/core/api/api.dart';
import 'package:movieapp/src/presentation/screens/movie/models/detail_movie_model.dart';
import 'package:movieapp/src/presentation/screens/movie/models/search_multi_model.dart';

class MovieHttp extends ApiProvider{
  Future<SearchMultiModel> searchMovie(String query) async{
    try{
      Response response =  await dio.get("search/movie?api_key=68f5c2c960dd4fca9be406440e5aa4e6&query=$query");

     return SearchMultiModel.fromJson(response.data);
    }catch (error){
      return Future.error(error);
    }
  }

  Future<SearchMultiModel> discover() async{
    try{
      Response response =  await dio.get("discover/movie?api_key=68f5c2c960dd4fca9be406440e5aa4e6&query");

     return SearchMultiModel.fromJson(response.data);
    }catch (error){
      return Future.error(error);
    }
  }

  Future<DetailMovieModel> detailMovie(id) async{
    try{
      Response response =  await dio.get("movie/$id?api_key=68f5c2c960dd4fca9be406440e5aa4e6");

     return DetailMovieModel.fromJson(response.data);
    }catch (error){
      return Future.error(error);
    }
  }
}
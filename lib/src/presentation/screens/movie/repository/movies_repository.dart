import 'package:movieapp/src/presentation/screens/movie/http/movie_http.dart';
import 'package:movieapp/src/presentation/screens/movie/models/detail_movie_model.dart';
import 'package:movieapp/src/presentation/screens/movie/models/search_multi_model.dart';

class MoviesRepository {
  MovieHttp movieHttp = MovieHttp();

  Future<SearchMultiModel> searchMovie(String query) async{
    try{
      return movieHttp.searchMovie(query);
    }catch (error){
      return Future.error(error);
    }
  }

  Future<SearchMultiModel> discover() async{
    try{
      return movieHttp.discover();
    }catch (error){
      return Future.error(error);
    }
  }

  Future<DetailMovieModel> detailMovie(id) async{
    try{
      return movieHttp.detailMovie(id);
    }catch (error){
      return Future.error(error);
    }
  }
}
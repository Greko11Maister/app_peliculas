import 'package:movieapp/src/presentation/screens/movie/http/movie_http.dart';
import 'package:movieapp/src/presentation/screens/movie/models/search_multi_model.dart';

class MoviesRepository {
  MovieHttp movieHttp = MovieHttp();

  Future<SearchMultiModel> searchMulti(String query) async{
    try{
      return movieHttp.searchMulti(query);
    }catch (error){
      return Future.error(error);
    }
  }
}
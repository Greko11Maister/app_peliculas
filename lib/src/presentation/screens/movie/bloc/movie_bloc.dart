import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:movieapp/src/presentation/screens/movie/models/search_multi_model.dart';
import 'package:movieapp/src/presentation/screens/movie/repository/movies_repository.dart';

part 'movie_event.dart';

part 'movie_state.dart';

class MovieBloc extends Bloc<MovieEvent, MovieState> {
  MoviesRepository _moviesRepository;

  MovieBloc({MoviesRepository moviesRepository})
      : assert(moviesRepository != null),
        _moviesRepository = moviesRepository,
        super(InitialMovieState());

  @override
  Stream<MovieState> mapEventToState(MovieEvent event) async* {
    switch (event.runtimeType) {
      case SearchMultiEvent:
        yield* _mapSearchMultiToState(event);
        break;
      case GetDiscoverEvent:
        yield* _mapDiscoverToState(event);
        break;
    }
  }

  Stream<MovieState> _mapSearchMultiToState(SearchMultiEvent event) async* {
    try {
      var res = await _moviesRepository.searchMulti(event.query);
      print(res);
      yield ResultMoviesState(data: res);
    } catch (error) {
      print(error);
    }
  }

  Stream<MovieState> _mapDiscoverToState(GetDiscoverEvent event) async* {
    try {
      var res = await _moviesRepository.discover();
      print(res);
      yield ResultMoviesState(data: res,
      recommended: res.results,
      top: res.results.where((element) => element.voteAverage >= 6).toList()
      );
    } catch (error) {
      print(error);
    }
  }
}

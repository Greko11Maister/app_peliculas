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
    }
  }

  Stream<MovieState> _mapSearchMultiToState(SearchMultiEvent event) async* {
    try {
      print("_moviesRepository: $_moviesRepository");
      var res = await _moviesRepository.searchMulti(event.query);
      print(res);
      yield SearchMultiState(data: res);
    } catch (error) {
      print(error);
    }
  }
}

part of 'movie_bloc.dart';
abstract class MovieState extends Equatable{
  const MovieState();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class InitialMovieState extends MovieState{}

class SearchMultiState extends MovieState{
  final SearchMultiModel data;
  SearchMultiState({this.data});

  @override
  List<Object> get props => [
    data
  ];

  @override
  bool get stringify => true;
}
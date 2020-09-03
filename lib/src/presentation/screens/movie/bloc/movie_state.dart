part of 'movie_bloc.dart';
abstract class MovieState extends Equatable{
  const MovieState();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class InitialMovieState extends MovieState{}

class ResultMoviesState extends MovieState{
  final SearchMultiModel data;
  final List<Results> top;
  final List<Results> recommended;
  ResultMoviesState({this.top, this.recommended, this.data});

  @override
  List<Object> get props => [
    data,
    top,
    recommended
  ];

  @override
  bool get stringify => true;
}

class DetailMovieState extends MovieState{
  final DetailMovieModel data;

  DetailMovieState({this.data});

  @override
  List<Object> get props => [
    data
  ];

  @override
  bool get stringify => true;
}
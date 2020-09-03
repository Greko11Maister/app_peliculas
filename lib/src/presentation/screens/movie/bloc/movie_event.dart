part of 'movie_bloc.dart';



abstract class MovieEvent extends Equatable{
  const MovieEvent();
  @override
  List<Object> get props => [];

  @override
  bool get stringify => true;
}

class SearchMultiEvent extends MovieEvent{
  final String query;
  SearchMultiEvent({this.query});
}

class GetDiscoverEvent extends MovieEvent{}

class GetDetailMovieIdEvent extends MovieEvent{
  final id;
  GetDetailMovieIdEvent({this.id});
}
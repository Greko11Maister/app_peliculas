import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:movieapp/src/presentation/screens/components/actor/actor_component.dart';

import 'bloc/movie_bloc.dart';
import 'bloc/movie_bloc.dart';
import 'models/search_multi_model.dart';
import 'repository/movies_repository.dart';

class DetailMoviePage extends StatelessWidget {
  final idMovie;

  DetailMoviePage({Key key, @required this.idMovie}) : super(key: key);

  MovieBloc movieBloc;

  @override
  Widget build(BuildContext context) {
    movieBloc = MovieBloc(moviesRepository: MoviesRepository());
    movieBloc.add(GetDetailMovieIdEvent(id: idMovie));

    return Scaffold(
      backgroundColor: Color(0xFF2C3848),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<MovieBloc, MovieState>(
            cubit: movieBloc,
            builder: (context, state){
              if(state is DetailMovieState){
                return Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(bottom: 27),
                      height: 320,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500${state.data.posterPath}"),
                              fit: BoxFit.fill)),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  }),
                              IconButton(
                                  icon: Icon(
                                    MdiIcons.heartOutline,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Flexible(
                            child: Text(
                              state.data.title,
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox()
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.3),
                                  borderRadius: BorderRadius.all(Radius.circular(50))),
                              child: Text(
                                "WATCH NOW",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )),
                          Wrap(
                            spacing: 5,
                            children: [
                              Icon(Icons.star, color: state.data.voteAverage > 1 ? Colors.yellowAccent :Colors.grey, size: 14,),
                              Icon(Icons.star, color: state.data.voteAverage > 2 ? Colors.yellowAccent :Colors.grey, size: 14),
                              Icon(Icons.star, color: state.data.voteAverage > 3 ? Colors.yellowAccent :Colors.grey, size: 14),
                              Icon(Icons.star, color: state.data.voteAverage > 4 ? Colors.yellowAccent :Colors.grey, size: 14),
                              Icon(Icons.star, color: state.data.voteAverage > 5 ? Colors.yellowAccent :Colors.grey, size: 14),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(
                        state.data.overview,
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7), fontSize: 13),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    // Actor
                    Container(
                      height: 110,
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.data.productionCompanies.length,
                          itemBuilder: (context, i) {
                            var value = state.data.productionCompanies[i];
                            return ActorComponent(
                              avatarUrl: "https://image.tmdb.org/t/p/w500${value.logoPath}",
                              name: value.name,
                            );
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, top: 10, bottom: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Studio",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left:24),
                              child: Wrap(
                                spacing: 5,
                                children: state.data.productionCompanies.map((e) => Text(
                                "${e.name},",
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white.withOpacity(0.7)),
                              )).toList(),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Genre",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(left:24),
                              child: Wrap(
                                spacing: 5,
                                children: state.data.genres.map((e) => Text(
                                  "${e.name},",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white.withOpacity(0.7)),
                                )).toList(),),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, bottom: 8),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Release",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Text(
                              DateTime.parse(state.data.releaseDate).year.toString(),
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white.withOpacity(0.7)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                );
              }
              return Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                  child: Center(child: CircularProgressIndicator()));
            },
          ),
        ),
      ),
    );
  }
}

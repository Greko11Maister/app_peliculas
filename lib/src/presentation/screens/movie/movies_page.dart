import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:movieapp/src/core/bloc/theme/theme_bloc.dart';
import 'package:movieapp/src/core/models/app_themes.dart';
import 'package:movieapp/src/presentation/screens/components/search/search_component.dart';
import 'package:movieapp/src/presentation/screens/components/slider_movies/slider_movies_componet.dart';
import 'package:movieapp/src/presentation/screens/movie/bloc/movie_bloc.dart';
import 'package:movieapp/src/presentation/screens/movie/repository/movies_repository.dart';

import 'bloc/movie_bloc.dart';
import 'bloc/movie_bloc.dart';
class MoviesPage extends StatefulWidget {
  static const routeName = "movies.page";
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  MovieBloc movieBloc;
  @override
  void initState() {
    movieBloc = MovieBloc(moviesRepository: MoviesRepository());
    movieBloc.add(GetDiscoverEvent());
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: Color(0xFF5CA0D3),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state){
                return Row(children: [
                  IconButton(icon: Icon(MdiIcons.moonFirstQuarter), onPressed: (){
                    if(state.appTheme == AppTheme.BlueDark){
                      BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(
                          theme: AppTheme.BlueLight
                      ));
                    }else{
                      BlocProvider.of<ThemeBloc>(context).add(ThemeChanged(
                        theme: AppTheme.BlueDark
                      ));
                    }
                  })
                ],);
              }),
              Column(children: <Widget>[
                Container(
                margin: EdgeInsets.only(top: 58, left: 56, right: 105, bottom: 31),
                child: Text("Hello, what do you want to watch?", style: Theme.of(context).textTheme.headline1,)),
                Container(
              margin: EdgeInsets.only(left: 56, right: 30),
              child: SearchComponent(
                onChanged: (val) => movieBloc.add(SearchMultiEvent(query: val)),
              ),
                ),
              ],),

              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/1.5,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,//Color(0xFF2C3848),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                ),
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    BlocBuilder<MovieBloc, MovieState>(
                        cubit: movieBloc,
                        builder: (context, state){
                          if(state is ResultMoviesState){
                            return SliderMoviesComponent(
                              title: "RECOMMENDED FOR YOU",
                              movies: state.recommended,
                            );
                          }
                       return SizedBox();
                    }),
                    BlocBuilder<MovieBloc, MovieState>(
                        cubit: movieBloc,
                        builder: (context, state){
                          if(state is ResultMoviesState){
                            return SliderMoviesComponent(
                              title: "TOP RATED",
                              movies: state.top,
                            );
                          }
                          return SizedBox();
                        }),
                    SizedBox(height: 100,)
                  ],),
                ),
              )

            ],),
          ),
        ),
      ),
    );
  }
}

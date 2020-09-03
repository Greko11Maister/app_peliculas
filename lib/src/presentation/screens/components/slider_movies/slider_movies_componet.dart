import 'package:flutter/material.dart';
import 'package:movieapp/src/presentation/screens/components/movie_card/movie_card_component.dart';
import 'package:movieapp/src/presentation/screens/movie/detail_movie_page.dart';

import '../../movie/models/search_multi_model.dart';
class SliderMoviesComponent extends StatelessWidget {
  final String title;
  final List<Results> movies;

  const SliderMoviesComponent({Key key, this.title, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text(title.toUpperCase(),
            style: Theme.of(context).textTheme.headline1.copyWith(
                fontSize: 13,
                fontWeight: FontWeight.w600),),
          FlatButton(onPressed: (){}, child: Text("See all",
            style: Theme.of(context).textTheme.headline1.copyWith(
            fontSize: 13,
            color: Theme.of(context).textTheme.headline1.color,
            fontWeight: FontWeight.w400),)),
        ],),
      ),
      Container(
        height: 230,
        child: ListView.builder(
            itemCount: movies.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i){
              return MovieCardComponent(
                title: movies[i].title,
                urlImage: "https://image.tmdb.org/t/p/w500${movies[i].posterPath}",
                voteAverage: movies[i].voteAverage,
                onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailMoviePage(idMovie: movies[i].id,)));
                },
              );
            }),
      )
    ],),);
  }
}

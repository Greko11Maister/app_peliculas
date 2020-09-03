import 'package:flutter/material.dart';
import 'package:movieapp/src/presentation/screens/components/movie_card/movie_card_component.dart';
class SliderMoviesComponent extends StatelessWidget {
  final String title;

  const SliderMoviesComponent({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Column(children: <Widget>[
      Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Text(title.toUpperCase(), style: TextStyle(color: Colors.white,fontSize: 13, fontWeight: FontWeight.w600),),
          FlatButton(onPressed: (){}, child: Text("See all", style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 13, fontWeight: FontWeight.w400),)),
        ],),
      ),
      Container(
        height: 230,
        child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, i){
              return MovieCardComponent(
                title: "Avengers: Endgame",
                urlImage: "https://m.media-amazon.com/images/M/MV5BMTY4OTcyMDUyNF5BMl5BanBnXkFtZTcwNzkyMjgxMQ@@._V1_.jpg",
              );
            }),
      )
    ],),);
  }
}

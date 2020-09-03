import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/presentation/screens/components/search/search_component.dart';
import 'package:movieapp/src/presentation/screens/components/slider_movies/slider_movies_componet.dart';
class MoviesPage extends StatefulWidget {
  static const routeName = "movies.page";
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Color(0xFF5CA0D3),
          child: Column(children: <Widget>[
            Expanded(
                flex: 1,
                child: Column(children: <Widget>[
              Container(
                  margin: EdgeInsets.only(top: 58, left: 56, right: 105, bottom: 31),
                  child: Text("Hello, what do you want to watch?", style: TextStyle(color: Colors.white, fontSize: 26),)),
              Container(
                margin: EdgeInsets.only(left: 56, right: 30),
                child: SearchComponent(),
              ),
            ],)),

            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.5,
              decoration: BoxDecoration(
                color: Color(0xFF2C3848),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
              ),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  SliderMoviesComponent(
                    title: "RECOMMENDED FOR YOU",
                  ),
                  SliderMoviesComponent(
                    title: "TOP RATED",
                  )
                ],),
              ),
            )

          ],),
        ),
      ),
    );
  }
}

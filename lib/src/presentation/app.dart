import 'package:flutter/material.dart';
import 'package:movieapp/src/presentation/screens/movie/movies_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MoviesPage.routeName,
      routes: {
        MoviesPage.routeName: (context) => MoviesPage()
      },
    );
  }
}

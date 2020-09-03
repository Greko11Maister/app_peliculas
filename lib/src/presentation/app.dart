import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/src/core/bloc/theme/theme_bloc.dart';
import 'package:movieapp/src/presentation/screens/movie/movies_page.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state){
          return  MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: MoviesPage.routeName,
            theme: state.themeData,
            routes: {
              MoviesPage.routeName: (context) => MoviesPage()
            },
          );
        },
      ),
    );
  }
}

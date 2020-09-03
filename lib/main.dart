import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/core/bloc/bloc_observer.dart';
import 'package:movieapp/src/presentation/app.dart';

void main() {
  Bloc.observer = MovieBlocObserver();
  runApp(App());
}

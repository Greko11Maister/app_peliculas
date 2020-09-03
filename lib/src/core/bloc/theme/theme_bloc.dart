
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/src/core/models/app_themes.dart';
part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState>{

  ThemeBloc() : super(ThemeState(themeData: appThemeData[AppTheme.BlueDark], appTheme: AppTheme.BlueDark));
  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) async*{
    switch(event.runtimeType){
      case ThemeChanged:
        yield* _mapChangeThemeToState(event);
        break;
    }
  }

  Stream<ThemeState> _mapChangeThemeToState( ThemeChanged event) async* {
    yield ThemeState(themeData: appThemeData[event.theme], appTheme: event.theme);
  }

}
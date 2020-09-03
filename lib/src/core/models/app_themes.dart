import 'package:flutter/material.dart';

enum AppTheme {
  BlueLight,
  BlueDark,
}

final appThemeData = {
  AppTheme.BlueLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.white,
    backgroundColor: Color(0xFFEEEEEE),
      textTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold
          )
      )
  ),
  AppTheme.BlueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color(0xFF2C3848),
    backgroundColor: Color(0xFF5CA0D3),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold
      )
    )
  ),
};
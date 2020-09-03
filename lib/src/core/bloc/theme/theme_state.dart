part of 'theme_bloc.dart';


class ThemeState extends Equatable {
  final ThemeData themeData;
  final  AppTheme appTheme;

  ThemeState({
    @required this.themeData,
    @required this.appTheme
  });

  @override
  List<Object> get props => [
    themeData,
    appTheme
  ];

  @override
  bool get stringify => true;
}
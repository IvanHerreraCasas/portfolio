import 'package:flutter/material.dart';

class AppTheme {
  static TextTheme lightTextTheme = const TextTheme(
    headline2: TextStyle(
      fontFamily: 'Merryweather',
      fontSize: 60,
    ),
    headline3: TextStyle(
      fontFamily: 'Merryweather',
      color: Color.fromARGB(180, 0, 0, 0),
      fontSize: 48,
    ),
    headline4: TextStyle(
      fontFamily: 'Merryweather',
      fontSize: 30,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontFamily: 'Merryweather',
      fontSize: 24,
      color: Colors.black,
    ),
    headline6: TextStyle(
      fontFamily: 'Work Sans',
      fontSize: 20,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontFamily: 'Work Sans',
      fontSize: 16,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Work Sans',
      fontSize: 16,
    ),
    button: TextStyle(
      fontFamily: 'Work Sans',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: lightTextTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }
}

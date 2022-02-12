import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline2: GoogleFonts.merriweather(
      fontSize: 60,
    ),
    headline3: GoogleFonts.merriweather(
      color: const Color.fromARGB(180, 0, 0, 0),
      fontSize: 48,
    ),
    headline4: GoogleFonts.merriweather(
      fontSize: 30,
      color: Colors.black,
    ),
    headline5: GoogleFonts.merriweather(
      fontSize: 24,
      color: Colors.black,
    ),
    headline6: GoogleFonts.workSans(
      fontSize: 20,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.workSans(
      fontSize: 16,
    ),
    button: GoogleFonts.workSans(
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

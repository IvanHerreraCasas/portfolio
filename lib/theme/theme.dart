import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {

  static TextTheme lightTextTheme = TextTheme(
    headline3: GoogleFonts.breeSerif(fontSize: 48, color: const Color(0xff5C4033),),
    bodyText1: GoogleFonts.workSans(fontSize: 16, color: const Color(0xff483C32),),
    button: GoogleFonts.workSans(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    )
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      textTheme: lightTextTheme,
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 237, 237),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
        ),
      ),
    );
  }
}

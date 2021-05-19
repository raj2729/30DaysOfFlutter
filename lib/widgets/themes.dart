import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    fontFamily: GoogleFonts.lato().fontFamily,
    // Adjusts color automatically
    primarySwatch: Colors.deepPurple,
    primaryTextTheme: GoogleFonts.latoTextTheme(),
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      textTheme: Theme.of(context).textTheme,
      titleTextStyle: TextStyle(
        color: Colors.black,
      ),
    ),
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark,
  );


}

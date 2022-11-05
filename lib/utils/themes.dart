import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.amber,
      fontFamily: GoogleFonts.notoSans().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        toolbarTextStyle: const TextStyle(color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.amber));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.amber,
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.notoSans().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        toolbarTextStyle:
            const TextStyle(color: Color.fromARGB(255, 248, 37, 37)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.amberAccent));
}

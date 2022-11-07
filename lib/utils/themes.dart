import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.white,
      fontFamily: GoogleFonts.notoSans().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        titleTextStyle: const TextStyle(fontSize: 23, color: Colors.black),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.amber));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.amber,
      scaffoldBackgroundColor: Colors.black,
      //brightness: Brightness.dark,
      fontFamily: GoogleFonts.notoSans().fontFamily,
      // ignore: prefer_const_constructors
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        titleTextStyle: const TextStyle(fontSize: 23, color: Colors.white),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.amber));
}

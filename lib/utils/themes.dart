import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const ColorScheme.light().background,
        fontFamily: GoogleFonts.notoSans().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          backgroundColor: const ColorScheme.light().background,
          titleTextStyle:
              const TextStyle(fontSize: 23, color: Colors.blueAccent),
          iconTheme: const IconThemeData(color: Colors.blueAccent),
        ),
        drawerTheme: DrawerThemeData(
            backgroundColor: const ColorScheme.light().background),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const ColorScheme.dark().background,
        fontFamily: GoogleFonts.notoSans().fontFamily,
        // ignore: prefer_const_constructors
        appBarTheme: AppBarTheme(
          backgroundColor: const ColorScheme.dark().background,
          titleTextStyle:
              const TextStyle(fontSize: 23, color: Colors.blueAccent),
          iconTheme: const IconThemeData(color: Colors.blueAccent),
        ),
        drawerTheme: DrawerThemeData(
            backgroundColor: const ColorScheme.dark().background),
      );
}

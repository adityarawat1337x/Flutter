import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: Colors.green
      ),
      theme: ThemeData(
        fontFamily: GoogleFonts.notoSans().fontFamily,
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: "/login",
      routes: {
        "/": (context) => const Login(),
        "/home": (context) => const Home(),
        "/login": (context) => const Login(),
      },
    );
  }
}

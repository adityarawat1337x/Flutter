import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/utils/routes.dart';
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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 99, 108, 248)),
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.HomeRoute: (context) => const Home(),
        MyRoutes.LoginRoute: (context) => const Login(),
      },
    );
  }
}

import "package:flutter/material.dart";
import 'package:flutter_application_1/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double age = 21;
    String name = "aditya";

    return Scaffold(
      //! Drawer
      drawer: const AppDrawer(),

      //! AppBar
      appBar: AppBar(
        title: const Text("Catalogue App"),
        centerTitle: true,
      ),

      //! Body
      body: Center(
        child: Text(
          "$name $age saal ka hai",
          textDirection: TextDirection.ltr,
        ),
      ),
    );
  }
}

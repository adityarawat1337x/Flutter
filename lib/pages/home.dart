import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    double age = 21;
    String name = "aditya";
    // bool isCool = true;
    // var height = 5.8;
    // var secondName = "kumar";
    // const pi = 3.14; // constant value
    // final double gravity =
    //     9.8; // final is used to declare constant value but it can be changed later

    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: Text(
          "$name $age saal ka hai",
          textDirection: TextDirection.rtl,
        ),
      ),
      drawer: const Drawer(
        child: Center(
          child: Text(
            "Drawer",
            textDirection: TextDirection.rtl,
          ),
        ),
      ),
    );
  }
}

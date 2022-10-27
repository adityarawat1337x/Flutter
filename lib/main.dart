import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    methodss(name: "Aditya", age: 23);
    //methodss(age: 23); //errpr
    return const MaterialApp(home: Home());
  }

  methodss({required String name, int age = 21}) {
    print("My name is $name and I am $age years old");
  }
}

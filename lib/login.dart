import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        const SizedBox(height: 20),
        Image.asset("assets/images/login.png", fit: BoxFit.cover),
        const Text(
          "Welcome",
          style: TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 99, 108, 248),
            fontWeight: FontWeight.bold,
          ),
          textScaleFactor: 1.75,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                const Color.fromARGB(255, 99, 108, 248),
              ),
              fixedSize: MaterialStateProperty.all(
                const Size(100, 40),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
          child: const Text("Login"),
        ),
      ]),
    );
  }
}

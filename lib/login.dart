import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String msg = "Welcome";
  bool loggedIn = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Image.asset("assets/images/login.png", fit: BoxFit.cover),
            Text(
              msg,
              style: const TextStyle(
                fontSize: 15,
                color: Color.fromARGB(255, 99, 108, 248),
                fontWeight: FontWeight.bold,
              ),
              textScaleFactor: 1.75,
            ),
            const SizedBox(height: 20),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    onChanged: (value) {
                      msg = value != "" ? "Hello, " + value : "Welcome";
                      loggedIn = false;
                      setState(() {});
                    },
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
            InkWell(
              onTap: () async {
                setState(() {
                  loggedIn = true;
                });
                await Future.delayed(const Duration(milliseconds: 300));
                Navigator.pushNamed(context, MyRoutes.HomeRoute);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 99, 108, 248),
                  borderRadius: loggedIn
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(8),
                ),
                width: loggedIn ? 50 : 100,
                height: loggedIn ? 50 : 45,
                alignment: Alignment.center,
                child: loggedIn
                    ? const Icon(Icons.done, color: Colors.white)
                    : const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
            //   },
            //   style: TextButton.styleFrom(
            //     minimumSize: const Size(120, 40),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //   ),
            //   child: const Text("Login"),
            // ),
          ]),
        ),
      ),
    );
  }
}

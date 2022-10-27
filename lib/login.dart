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
  final _formKey = GlobalKey<FormState>();

  gotoHome(BuildContext context) async {
    if (_formKey.currentState?.validate() == false) return;
    setState(() {
      loggedIn = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    await Navigator.pushNamed(context, MyRoutes.HomeRoute);
    setState(() {
      loggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset("assets/images/login.png", fit: BoxFit.cover),
              const SizedBox(height: 20),
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
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (name) {
                        msg = name != "" ? "Hello, $name" : "Welcome";
                        loggedIn = false;
                        setState(() {});
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Material(
                color: const Color.fromARGB(255, 99, 108, 248),
                borderRadius: loggedIn
                    ? BorderRadius.circular(500)
                    : BorderRadius.circular(8),
                child: InkWell(
                  onTap: () => gotoHome(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    width: loggedIn ? 50 : 100,
                    height: loggedIn ? 50 : 45,
                    alignment: Alignment.center,
                    child: loggedIn
                        ? const Icon(Icons.done, color: Colors.white)
                        : const Text(
                            "Sign In",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

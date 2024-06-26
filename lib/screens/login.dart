// ignore_for_file: use_build_context_synchro

import 'package:bolt_app/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:bolt_app/help/helper_function.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() =>
      _LoginState(); // stores the state of the changing UI, tracks changes of the Loginclass, creates a mutable state for a widget.
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void login() async {
    showDialog(
        context: context,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));
            try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        displayMessageToUser(e.code, context);
      }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 45, 253, 52),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: "BOLT! APP",
                      hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(
                        hintText: "Enter Email",
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password",
                        border: OutlineInputBorder(),
                        hintStyle: TextStyle(color: Colors.black)),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  GestureDetector(
                    onTap: login,
                    child: FloatingActionButton(
                      onPressed: login,
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        const TextSpan(
                            text: 'Dont you have an account?',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black)),
                        TextSpan(
                          text: ' Register',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Register()),
                              );
                            },
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

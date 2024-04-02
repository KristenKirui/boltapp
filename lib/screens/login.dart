import 'package:bolt_app/screens/home_page.dart';
import 'package:bolt_app/screens/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() =>
      _LoginState(); // stores the state of the changing UI, tracks changes of the Loginclass, creates a mutable state for a widget.
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future login() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim());
  }

  @override
  void dispose() {
    emailController.dispose();

    super.dispose();
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => const HomePage(),
                          ),
                        );
                      },
                      backgroundColor: Colors.black,
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

import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bolt_app/help/helper_function.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final phonenumberController = TextEditingController();
  Future<void> _register() async {
    var snackBar = SnackBar(content: Text(""));
    if (passwordController.text != confirmPasswordController.text) {
      snackBar = SnackBar(
        content: Text("Password does not match"),
        backgroundColor: Colors.red,
      );
      return;
    }

    try {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text);
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        displayMessageToUser(e.code, context);
      }

      snackBar = SnackBar(
        content: Text("Registration successful"),
        backgroundColor: Colors.green,
      );
    } catch (e) {
      snackBar = SnackBar(
        content: Text("Registration failed:$e"),
        backgroundColor: Colors.red,
      );
    }
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(90.0),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/836.jpg',
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: "Enter Name", border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: "Enter Email",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter password";
                        }
                        ;
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    TextFormField(
                      controller: confirmPasswordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    TextFormField(
                      controller: phonenumberController,
                      decoration: InputDecoration(
                          hintText: "Enter Phone number",
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    ElevatedButton(
                        onPressed: _register, child: const Text('Register'))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

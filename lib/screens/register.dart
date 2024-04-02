import 'package:bolt_app/screens/home_page.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
       child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(90.0),
            child: Column(
              children: [
                 Image.asset(
                  'assets/images/836.jpg',
                 ),
          const SizedBox(height: 5,),
                const TextField(
                  decoration: InputDecoration(hintText: "Enter Name",
                  border: OutlineInputBorder()),
                ),
                const SizedBox(height: 5,),
                const TextField(
                  decoration: InputDecoration(
                      hintText: "Enter Email", border: OutlineInputBorder()),
                ),
                 const SizedBox(
                  height: 5,
                ),
               const  TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 9,
                ),
                const TextField(decoration: InputDecoration(hintText: "Enter Phone number",border: OutlineInputBorder()),),
                const SizedBox(height: 5,),
                 FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>  const HomePage(),
                      ),
                    );
                  },
                  backgroundColor: Colors.black,
                  child: const Text("Sign Up",style:TextStyle(color: Colors.white),),
                ),
                ],
                 ),
                 
          ),
        ],
      ),
      ),
    );
  }
}


    
  


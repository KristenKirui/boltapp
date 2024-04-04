import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void logout(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Profile",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
        children:  [
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text("Kristen Chemutai"),
            subtitle: Text("+254773704977"),
          ),
          ListTile(
            leading: Icon(Icons.shield),
            title: Text("Login & Security"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("cjesten21@gmail.com"),
          ),
          Divider(
            height: 45,
          ),
          Text(
            "Saved places",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Enter home location"),
          ),
          ListTile(
            leading: Icon(Icons.work),
            title: Text("Enter work location"),
          ),
          ListTile(
            leading: Icon(Icons.add),
            title: Text("Add a place"),
          ),
          Divider(
            height: 35,
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            subtitle: Text("English-GB"),
          ),
          ListTile(
            leading: Icon(Icons.speaker),
            title: Text("Communication preferences"),
          ),
          Divider(
            height: 35,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Log out"),
            onTap: logout, 
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Delete Account"),
          ),
        ],
            ),
      ),
    );
  }
}

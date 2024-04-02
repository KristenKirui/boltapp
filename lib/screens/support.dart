import 'package:flutter/material.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("How can we help?",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.message),
            title: Text("Inbox",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("View open chats"),
          ),
          Text("Get help with something else" ,style: TextStyle(fontWeight: FontWeight.bold),),
          ListTile(
            title: Text("About Bolt"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            title: Text("App and features"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            title: Text("Account and data"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            title: Text("Payments and Pricing"),
            trailing: Icon(Icons.navigate_next),
          ),
          Divider(
            height: 5,
          ),
          ListTile(
            title: Text("Using Bolt"),
            trailing: Icon(Icons.navigate_next),
          ),
        ],
      ),
    );
  }
}

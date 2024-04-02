import 'package:flutter/material.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({super.key});

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white,
        title: const Text("Work profile",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.backpack_outlined),
            title: Text("Add company details"),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Work Email"),
            subtitle: Text("cjesten21@gmail.com", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          ListTile(
            leading: Icon(Icons.card_membership),
            title: Text("Add a payment method"),
          ),
          Divider(
            height: 35,
          ),
          ListTile(
            leading: Icon(Icons.bar_chart),
            title: Text("Reports"),
          ),
          ListTile(
            leading: Icon(Icons.add_to_photos_sharp),
            title: Text("Add expense provider"),
          ),
        ],
      ),

    );
  }
}

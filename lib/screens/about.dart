import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About", style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Rate the app"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.thumb_up),
              title: Text("Like us on Facebook"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.email_outlined),
              title: Text("Solutions for work trips"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.format_shapes),
              title: Text("Careers at Bolt"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.bungalow_rounded),
              title: Text("Legal"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.sticky_note_2),
              title: Text("Acknowledgements"),
            ),
            Divider(height: 5,),
             ListTile(
              leading: Icon(Icons.sticky_note_2),
              title: Text("Privacy"),
            ),
          ],
        ),
    );
  }
}

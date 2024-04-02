//Stateless widget

import 'package:bolt_app/screens/about.dart';
import 'package:bolt_app/screens/payment.dart';
import 'package:bolt_app/screens/profile.dart';
import 'package:bolt_app/screens/promotions.dart';
import 'package:bolt_app/screens/support.dart';
import 'package:bolt_app/screens/trips.dart';
import 'package:bolt_app/screens/work.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            Container(
              height: 100,
              decoration: const BoxDecoration(color: Colors.green),
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Kristen"),
                subtitle: const Text("My Account"),
                onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ProfilePage(),
                  ),
                ),
              },
              ),
            ),
         const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text("Rating 4.5"),
              ],
            ),
           const Divider(
              height: 40,
            ),
             ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text("Payment"),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const PaymentPage(),
                  ),
                ),
              },
              iconColor: Colors.black,
            ),
            ListTile(
                leading: const Icon(Icons.sticky_note_2),
                title: const Text("Promotions"),
                onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const PromotionPage(),
                        ),
                      ),
                    },),
            ListTile(
              leading: const Icon(Icons.timelapse),
              title: const Text("My Trips"),
               onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const TripsPage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: const Icon(Icons.work),
              title: const Text("Work Profile"),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const WorkPage(),
                  ),
                ),
              },
            ),
            ListTile(
              leading: const Icon(Icons.support),
              title: const Text("Support"),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SupportPage()
                  ),
                ),
              },
            ),
            const Divider(
              height: 40,
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const AboutUsPage(),
                  ),
                ),
              },

            ),
            const Divider(
              height: 25,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          'Bolt Appbar',
          style: TextStyle(fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: const Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            child: Text('BOLT'),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "I am a child of Column",
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(30),
              child: TextField(
                decoration: InputDecoration(
                    hintText: "I am a child of Column",
                    border: OutlineInputBorder()),
              )),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Icon(
              Icons.car_rental,
              color: Colors.pink,
              size: 56,
            ),
          ),
          ButtonBar(
            buttonHeight: 34,
            children: [
              TextButton(
                onPressed: null,
                child: Text(
                  'Button A',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

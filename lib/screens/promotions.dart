import 'package:flutter/material.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({super.key});

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const  Text("Promotions",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.card_giftcard),
            title: Text("Get free trips"),
          ),
          ListTile(
            leading: Icon(Icons.sticky_note_2),
            title: Text("Enter promo code"),
          ),
          Divider(height: 40,),

           ListTile(
            contentPadding: EdgeInsets.all(100),
            leading: Icon(Icons.sticky_note_2),
            title: Text("Your promotions will appear here"),
          ),
            
          
        ],

      ),
    );
  }
}

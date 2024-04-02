import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payment method",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: ListView(
          children: [
          const  ListTile(),
             ListTile(leading: Image.asset('assets/images/mpesa.ico'),
              title:const Text("Mpesa"  ),),
       const Divider(
          height: 15,
        ),
             ListTile(leading: Image.asset('assets/images/Airtel logo.jpg'),
              title:const Text("Airtel"),),
 const Divider(
          height: 15,
        ),
             ListTile(
              leading: Image.asset('assets/images/favicon.ico'),

              title:const Text("Equitel"),
             ),
const Divider(
          height: 15,
        ),
             ListTile(
              leading: Image.asset('assets/images/money.png'),
              
              title:const Text("Cash"),),
             const  Divider(
          height: 15,
        ),
        ListTile(
          leading: Image.asset('assets/images/visa.png'),
          title:const Text("Visa"),),
        const Divider(
          height: 15,
        ),
        ListTile(
          leading: Image.asset('assets/images/card.png'),
          title:const Text("MasterCard"),
            ),
            
            

          ],
        ),
        
        
      
      );
  }
}

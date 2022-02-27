import 'package:flutter/material.dart';
class Home_Screen extends StatelessWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: ()=>Navigator.pushNamed(context, '/seller_home'),
            color: Colors.white,
            child: Text('Seller')),
          FlatButton(
            onPressed: ()=>Navigator.pushNamed(context, '/buyer_home'),
            color: Colors.white,
           child: Text('Buyer'))
        ],
      )),
    );
  }
}
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/screens/buyer/buyer_home.dart';
import 'package:ecommerce/screens/seller/seller_home.dart';
import 'package:flutter/material.dart';
import 'screens/Splash_Screen.dart';
import 'screens/Home_Screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(
    MultiProvider(
       providers: [
         ChangeNotifierProvider(create: (_)=>products()),
       ],
       child: const MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/splash':(context)=>SplashScreen(),
        '/home':(context)=>Home_Screen(),
        '/buyer_home':(context)=>Buyer_Home(),
        '/seller_home':(context)=>Seller_Home()
      },
      home: SplashScreen(),
    );
  }
}
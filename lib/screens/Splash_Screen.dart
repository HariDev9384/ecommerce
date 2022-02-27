import 'package:ecommerce/screens/Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: Home_Screen(),
      splash: Icons.home,
      duration: 1000,
      splashTransition: SplashTransition.rotationTransition,
      backgroundColor: Colors.blue,
    );
  }
}
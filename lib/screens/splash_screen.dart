import 'package:flutter/material.dart';
import 'dart:async';
import 'onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash Screen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(
        Duration(seconds: 5),
        () => Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => OnboardingScreen())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      child: Image(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/Splash Screen.png'),
      ),
    ));
  }
}

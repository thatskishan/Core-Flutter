import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.of(context).pushReplacementNamed('home_screen');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff9B8B94),
      body: Center(
        child: SizedBox(
          height: 400,
          width: double.infinity,
          child: Image.asset("Assets/Images/splash-1.png"),
        ),
      ),
    );
  }
}

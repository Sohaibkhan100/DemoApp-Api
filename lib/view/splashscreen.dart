import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task1/view/loginscreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
            image: AssetImage(
                'assets/images/WhatsApp Image 2022-09-11 at 4.43.29 PM.jpeg')),
      ),
    );
  }
}

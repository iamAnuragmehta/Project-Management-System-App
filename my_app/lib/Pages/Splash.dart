import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_app/Pages/Sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // implementing the splash page
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const SignInPage())));
  }

  // Splash Page Layout
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Image.asset('Assets/Splash_Image.jpg')],
        ),
      )),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';

import 'features/auth/Login/presenation/screens/LoginScreen.dart';
class SplashScreen extends StatelessWidget{
  static const String routeName = 'SplashScreen';

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        'assets/images/Splash Screen.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

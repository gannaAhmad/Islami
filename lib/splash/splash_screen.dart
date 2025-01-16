import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_flutter_course/Core/constants/image.dart';

import '../module/sebha/sebha_screen.dart';
import '../module/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, OnboardingScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    var resolution = MediaQuery.of(context).size;
    return Scaffold(
        body: Image.asset(
      Images.splashScreen,
      width: resolution.width,
      height: resolution.height,
      fit: BoxFit.cover,
    ));
  }
}

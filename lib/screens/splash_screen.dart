import 'package:flutter/material.dart';
import 'dart:async';

import 'package:konselq/screens/onboarding/onboarding_page1.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnboardingPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 170.0,
                  width: 170.0,
                  child: LoadingAnimationWidget.discreteCircle(
                    color: Color(0xFF002979),
                    secondRingColor: Color(0xFFFFD10B),
                    thirdRingColor: Colors.grey,
                    size: 170.0,
                  ),
                ),
                Image.asset(
                  'assets/KonselQ.png',
                  height: 140,
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'KonselQ',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                letterSpacing: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

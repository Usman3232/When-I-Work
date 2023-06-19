import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:when_i_work/views/pages/onboarding/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => OnboardingScreen(), transition: Transition.rightToLeft);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("logo"),
      ),
    );
  }
}

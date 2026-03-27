import 'dart:async';
import 'package:flutter/material.dart';
import 'package:remedic/core/services/auth_service.dart';
import 'package:remedic/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:remedic/features/navigator/presentation/app_navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _authService = AuthService();

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      final user = _authService.currentUser;
      if (user != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const AppNavigator()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x000000FF),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),
            Center(child: Image.asset('assets/logo.png', width: 500)),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 60),
              child: Text(
                'Remedic',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:remedic/core/theme/colors.dart';
import '../auth/registration_screen.dart';
import '../auth/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsetsGeometry.directional(top: 20),
              child: Image.asset("assets/welcome.png"),
            ),
            Container(
              margin: EdgeInsetsGeometry.directional(top: 28, bottom: 32),
              child: Column(
                children: [
                  Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 38, color: AppColors.heading),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "Remedic",
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: AppColors.heading),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsetsGeometry.directional(
                start: 20,
                end: 20,
                bottom: 120,
              ),
              child: Text(
                "Stay on track with your medications, every day. Remedic reminds you when it’s time for your medicine, keeps track of your supplies, and helps you manage your complete medical history — all in one place.",
                style: TextStyle(fontSize: 16, color: AppColors.textPrimary),
                textAlign: TextAlign.center,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 320,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonPrimary,
                        foregroundColor: AppColors.buttonPrimaryText,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text("Login", style: TextStyle(fontSize: 16)),
                    ),
                  ),

                  SizedBox(height: 12),

                  SizedBox(
                    width: 320,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.buttonSecondary,
                        foregroundColor: AppColors.buttonSecondaryText,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text("Register", style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

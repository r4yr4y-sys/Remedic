import 'package:flutter/material.dart';
import 'registration_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: EdgeInsetsGeometry.directional(top: size.height * 0.01),
                child: Image.asset("assets/welcome.png")
            ),
            Container(
              margin: EdgeInsetsGeometry.directional(
                  top: size.height * 0.04,
                  bottom: size.height * 0.04
              ),
              child: Text(
                "Welcome to\nRemedic",
                style: TextStyle(
                  fontSize: size.width * 0.1,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                margin: EdgeInsetsGeometry.directional(
                  bottom: size.height * 0.07,
                  start: size.width * 0.05,
                  end: size.width * 0.05,
                ),
                child: Text(
                  "Stay on track with your medications, every day. Remedic reminds you when it’s time for your medicine, keeps track of your supplies, and helps you manage your complete medical history — all in one place.",
                  style: TextStyle(
                    fontSize: size.width * 0.04,
                  ),
                  textAlign: TextAlign.center,
                )
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 0.06,
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
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: size.width * 0.042),
                      ),
                    ),
                  ),

                  SizedBox(height: size.height * 0.01),

                  SizedBox(
                    width: size.width * 0.7,
                    height: size.height * 0.06,
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
                        backgroundColor: Color(0x66666666),
                        foregroundColor: Color(0xEFEFEFEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Register",
                        style: TextStyle(fontSize: size.width * 0.042),
                      ),
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
import 'package:flutter/material.dart';
import 'package:remedic/login_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(
              left: 32,
              right: 32,
              top: 120,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create New Account',
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 38),
                Text(
                  "Please fill in the required information to create your account. We will need your full name, email address and a secure password",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                SizedBox(height:  64),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF121212),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Full Name',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      filled: true,
                      fillColor: const Color(0xFF121212),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF121212),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email Address',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      filled: true,
                      fillColor: const Color(0xFF121212),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF121212),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      filled: true,
                      fillColor: const Color(0xFF121212),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF121212),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                      ),
                      filled: true,
                      fillColor: const Color(0xFF121212),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 120),
                SizedBox(
                  width: 380,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5F5F5),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            'Sign Up ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            )
                        ),
                        SizedBox(width: 6),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontWeight: FontWeight(600),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

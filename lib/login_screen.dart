import 'package:flutter/material.dart';
import 'registration_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                  'Let\'s Sign you in.',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: 32),
                Text(
                    'Welcome back\nYou\'ve been missed!',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 28,
                      height: 1.7
                    )
                ),
                SizedBox(height: 56),
                Text(
                  " Email",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  decoration: BoxDecoration(
                    color: const Color(0xFF121212),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email Address',
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
                SizedBox(height: 22),
                Text(
                  " Password",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
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
                SizedBox(height: 210),
                SizedBox(
                  width: 500,
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
                            'LOG IN',
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
                      "Don't have an account?  ",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegistrationScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
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
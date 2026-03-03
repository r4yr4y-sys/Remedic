import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: const Color(0x00000000),
      ),
      body: Center(
          child:
          Text("Profile Screen")
      ),
    );
  }
}

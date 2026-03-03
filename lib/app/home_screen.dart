import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: const Color(0x00000000),
      ),
      body: Center(
        child:
        Text("Home Screen")
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: const Color(0x00000000),
      ),
      body: Center(
          child:
          Text("Settings Screen")
      ),
    );
  }
}

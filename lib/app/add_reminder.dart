import 'package:flutter/material.dart';

class AddReminderScreen extends StatelessWidget {
  const AddReminderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Reminder"),
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: const Color(0x00000000),
      ),
      body: Center(
          child:
          Text("Add Reminder Screen")
      ),
    );
  }
}
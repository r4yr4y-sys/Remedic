import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("History"),
        titleTextStyle: TextStyle(fontSize: 24),
        backgroundColor: const Color(0x00000000),
      ),
      body: Center(
          child:
          Text("History Page")
      ),
    );
  }
}
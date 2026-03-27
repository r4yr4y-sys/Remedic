import 'package:flutter/material.dart';

class StartTodayWidget extends StatefulWidget {
  const StartTodayWidget({super.key});

  @override
  State<StartTodayWidget> createState() => _StartTodayWidgetState();
}

class _StartTodayWidgetState extends State<StartTodayWidget> {
  bool _isSwitcher = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSwitcher = !_isSwitcher;
        });
      },
      child: Column(
        spacing: 6,
        children: [
          AnimatedContainer(
            width: 60,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.grey[700],
            ),
            duration: Duration(milliseconds: 200),
            child: AnimatedAlign(
              alignment: _isSwitcher
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              duration: Duration(milliseconds: 299),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.grey[500],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(_isSwitcher ? Icons.check : Icons.calendar_month),
              ),
            ),
          ),
          Text("Start Today")
        ],
      ),
    );
  }
}

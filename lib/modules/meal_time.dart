import 'package:flutter/material.dart';

class MealTime extends StatefulWidget {
  const MealTime({super.key});

  @override
  State<MealTime> createState() => _MealTimeState();
}

class _MealTimeState extends State<MealTime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 135,
          margin: EdgeInsets.only(top: 16, bottom: 16, left: 25),
          padding: EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 16),
          decoration: BoxDecoration(
            border: BoxBorder.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            spacing: 4,
            children: [
              Icon(
                Icons.circle,
                size: 12
              ),
              Text("Before Meal", textAlign: TextAlign.center),
            ],
          ),
        ),
        Container(
          width: 120,
          margin: EdgeInsets.only(top: 16, bottom: 16, left: 16),
          padding: EdgeInsets.only(top: 6, bottom: 6, left: 16, right: 16),
          decoration: BoxDecoration(
            border: BoxBorder.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            spacing: 4,
            children: [
              Icon(
                  Icons.circle_outlined,
                  size: 12
              ),
              Text("After Meal", textAlign: TextAlign.center),
            ],
          ),
        ),
      ],
    );
  }
}

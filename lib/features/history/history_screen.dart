import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Text(
                "History",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    dateBox("M", "12", false),
                    dateBox("T", "13", false),
                    dateBox("W", "14", true),
                    dateBox("T", "15", false),
                    dateBox("F", "16", false),
                    dateBox("S", "17", false),
                    dateBox("S", "18", false),
                  ],
                ),
              ),

              SizedBox(height: 30),

              Text(
                "COMPLETED ACTIVITIES",
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2,
                  fontSize: 12,
                ),
              ),

              SizedBox(height: 20),

              Expanded(
                child: ListView(
                  children: List.generate(
                    8,
                        (index) => activityItem(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget dateBox(String day, String date, bool selected) {
    return Container(
      width: 60,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            day,
            style: TextStyle(
              color: selected ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            date,
            style: TextStyle(
              color: selected ? Colors.black : Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget activityItem() {
    return ListTile(
      leading: Icon(Icons.circle, size: 10, color: Colors.grey),
      title: Text(
        "Medicine Taken",
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      subtitle: Text(
        "Wednesday, 12 Oct · 08:00 AM",
        style: TextStyle(color: Colors.grey),
      ),
      trailing: Icon(Icons.check_circle_outline, color: Colors.grey),
    );
  }
}
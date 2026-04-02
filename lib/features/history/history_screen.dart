import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "History",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.left,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[900],
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection("medicines")
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                      return const Center(
                        child: Text(
                          "No history found",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }

                    final medicines = snapshot.data!.docs;

                    return ListView.builder(
                      itemCount: medicines.length,
                      itemBuilder: (context, index) {
                        final data = medicines[index];

                        String title = data['title'];
                        int dosePerTime = data['dosePerTime'];
                        int dosesPerDay = data['dosesPerDay'];
                        String time = data['time'];

                        return ListTile(
                          leading: const Icon(
                            Icons.circle,
                            size: 10,
                            color: Colors.grey,
                          ),

                          title: Text(
                            title,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),

                          subtitle: Text(
                            "$dosePerTime dose • $dosesPerDay times/day • $time",
                            style: const TextStyle(color: Colors.grey),
                          ),

                          trailing: const Icon(
                            Icons.check_circle_outline,
                            color: Colors.grey,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
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
            style: TextStyle(color: selected ? Colors.black : Colors.grey),
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

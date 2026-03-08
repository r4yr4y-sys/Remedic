import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:remedic/modules/medicine_widget.dart';
import 'add_medication.dart';

class OngoingMedications extends StatefulWidget {
  const OngoingMedications({super.key});

  @override
  State<OngoingMedications> createState() => _OngoingMedicationsState();
}

class _OngoingMedicationsState extends State<OngoingMedications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: const Text("  Ongoing Medications",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            )
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[900],
            ),
            child: IconButton(
              icon: const Icon(
                  Icons.add,
                  size: 28,
                  color: Colors.white
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                    const AddMedicationScreen(),
                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 1.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.calendarDay, size: 16, color: Colors.grey),
                  Text(" Today", style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              medicineWidget("Antacids", "Tablet", " 9AM", 2, "Before", true),
              SizedBox(height: 20),
              medicineWidget("Azithromycin - 10 mg", "Capsule", " 10PM", 1, "After", false),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.calendarWeek, size: 16, color: Colors.grey),
                  Text(" Upcoming", style: TextStyle(color: Colors.grey, fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              medicineWidget("Azithromycin - 10 mg", "Injection", " 10PM", 1, "After", true),
            ],
          ),
        ),
      ),
    );
  }
}

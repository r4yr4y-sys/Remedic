import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/theme/colors.dart';
import '../widgets/medicine_widget.dart';
import 'add_medication.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title: const Text(
          "  Ongoing Medications",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 25),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[900],
            ),
            child: IconButton(
              icon: const Icon(Icons.add, size: 28, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const AddMedicationScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                          const begin = Offset(0.0, 1.0);
                          const end = Offset.zero;
                          const curve = Curves.ease;

                          var tween = Tween(
                            begin: begin,
                            end: end,
                          ).chain(CurveTween(curve: curve));

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

      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("medicines").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(child: Text("No medicines added"));
          }

          final medicines = snapshot.data!.docs;

          return ListView.builder(
            padding: const EdgeInsets.all(24),
            itemCount: medicines.length,
            itemBuilder: (context, index) {
              final data = medicines[index];

              String title = data['title'];
              int dosePerTime = data['dosePerTime'];
              int dosesPerDay = data['dosesPerDay'];
              String time = data['time'];

              return Column(
                children: [
                  medicineWidget(
                    title,
                    "Tablet",
                    " $time",
                    dosePerTime,
                    "After",
                    true,
                  ),
                  const SizedBox(height: 20),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

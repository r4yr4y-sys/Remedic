import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/medicine_type.dart';
import '../widgets/custom_slider.dart';
import '../widgets/meal_time.dart';
import '../widgets/start_today_widget.dart';

class AddMedicationScreen extends StatefulWidget {
  const AddMedicationScreen({super.key});

  @override
  State<AddMedicationScreen> createState() => _AddMedicationScreenState();
}

class _AddMedicationScreenState extends State<AddMedicationScreen> {
  int afternoonDose = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const Text(
          "  Add Medication",
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
              icon: const Icon(
                FontAwesomeIcons.xmark,
                size: 18,
                color: Colors.white,
                weight: 10,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 300,
                height: 70,
                margin: EdgeInsets.only(
                  top: 40,
                  bottom: 12,
                  left: 24,
                  right: 24,
                ),
                alignment: AlignmentGeometry.center,
                decoration: BoxDecoration(
                  color: const Color(0xFF1A1A1A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Amlodipine - 5 mg',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    filled: false,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32, left: 16),
                child: StartTodayWidget(),
              ),
            ],
          ),
          SizedBox(height: 40),
          MedicineType(),
          Container(
            alignment: AlignmentGeometry.topLeft,
            margin: EdgeInsets.only(top: 65, left: 25),
            child: Text(
              "Pills Quantity",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            alignment: AlignmentGeometry.topLeft,
            margin: EdgeInsets.only(top: 5, left: 25),
            child: Text(
              "How many pills do you have to take every dose",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 24, left: 12, right: 12),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: AlignmentGeometry.topLeft,
                  margin: EdgeInsets.only(top: 16, left: 25),
                  child: Text(
                    "Per Dose",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
                CustomSlider(
                  value: afternoonDose,
                  onChanged: (val) => setState(() => afternoonDose = val),
                ),
                MealTime(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/medicine_type.dart';
import '../widgets/custom_slider.dart';
import '../widgets/meal_time.dart';
import '../widgets/start_today_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddMedicationScreen extends StatefulWidget {
  const AddMedicationScreen({super.key});

  @override
  State<AddMedicationScreen> createState() => _AddMedicationScreenState();
}

class _AddMedicationScreenState extends State<AddMedicationScreen> {
  final title = TextEditingController();
  final time = TextEditingController();

  int afternoonDose = 1;

  int dosePerTime = 1;
  int dosesPerDay = 1;

  Future<void> addMedicine() async {
    await FirebaseFirestore.instance.collection("medicines").add({
      "title": title.text.trim(),
      "dosePerTime": dosePerTime,
      "dosesPerDay": dosesPerDay,
      "time": time.text.trim(),
    });
  }

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

      body: SingleChildScrollView(
        child: Column(
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
                    controller: title,
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
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CustomSlider(
                    value: dosePerTime,
                    onChanged: (val) => setState(() => dosePerTime = val),
                  ),
                  MealTime(),
                ],
              ),
            ),

            Container(
              alignment: AlignmentGeometry.topLeft,
              margin: EdgeInsets.only(top: 20, left: 25),
              child: Text(
                "Number of doses",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              alignment: AlignmentGeometry.topLeft,
              margin: EdgeInsets.only(top: 5, left: 25),
              child: Text(
                "How many doses do you need everyday",
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
                      "Number of Doses each day",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  CustomSlider(
                    value: dosesPerDay,
                    onChanged: (val) => setState(() => dosesPerDay = val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            SizedBox(
              height: 60,
              width: double.infinity,
              child: Text(
                "When do you want to start [example 8AM or 9PM]",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 70,
              margin: EdgeInsets.only(top: 20, bottom: 30, left: 1, right: 24),
              alignment: AlignmentGeometry.center,
              decoration: BoxDecoration(
                color: const Color(0xFF1A1A1A),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                controller: time,
                decoration: InputDecoration(
                  hintText: '9-Am',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                  filled: false,
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 0),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () async {
                    addMedicine();
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

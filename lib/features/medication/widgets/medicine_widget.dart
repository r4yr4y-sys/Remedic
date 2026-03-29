import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Widget medicineWidget(String medName, String medType, String medTime, int medQuantity, String mealInfo, bool taken) {
  String status = taken ? "  Taken" : "  Missed";
  IconData iconStatus = taken ? Icons.check_circle : Icons.cancel;

  IconData iconType;
  if(medType == 'Tablet') {
    iconType =  FontAwesomeIcons.tablets;
  }
  else if(medType == 'Capsule') {
    iconType =  FontAwesomeIcons.capsules;
  }
  else if(medType == 'Injection') {
    iconType =  Icons.vaccines;
  }
  else {
    iconType =  FontAwesomeIcons.briefcaseMedical;
  }

  return Container(
    height: 240,
    width: 400,
    padding: EdgeInsets.all(24),
    decoration: BoxDecoration(
      color: Colors.grey[900],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(medType, style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.bold)),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(8)),
                  child: Row(children: [Icon(Icons.notifications_none, size: 14), Text(medTime, style: TextStyle(fontSize: 12))]),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 85,
                  height: 75,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 6,
                    children: [
                      Icon(iconType, color: Colors.white, size: 25),
                      Text("$medQuantity Pill", style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 8,
                  children: [
                    Text(medName, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.soup_kitchen_outlined, size: 20, color: Colors.grey),
                        Text("  $mealInfo Meal", style: TextStyle(color: Colors.white70, fontSize: 14)),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 22),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.black,
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(iconStatus, size: 24,), Text(status , style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

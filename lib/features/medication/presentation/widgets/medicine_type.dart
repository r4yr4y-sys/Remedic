import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicineType extends StatefulWidget {
  const MedicineType({super.key});

  @override
  State<MedicineType> createState() => _MedicineTypeState();
}

class _MedicineTypeState extends State<MedicineType> {
  int selectedIndex = -1;

  void selectOption(int index) {
    setState(() {
      selectedIndex = (selectedIndex == index) ? -1 : index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 100,
      margin: EdgeInsets.only(right: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            GestureDetector(
              onTap: () => selectOption(0),
              child: Container(
                width: 110,
                height: 100,
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? Colors.white : Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Icon(
                      FontAwesomeIcons.tablets,
                      size: 32,
                      color: selectedIndex == 0 ? Colors.black : Colors.white,
                    ),
                    Text("Tablet",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 0 ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => selectOption(1),
              child: Container(
                width: 110,
                height: 100,
                margin: EdgeInsets.only(left: 12),
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? Colors.white : Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Image.asset(
                      'assets/capsule.png',
                      scale: 15,
                      color: selectedIndex == 1 ? Colors.black : Colors.white,
                    ),
                    Text("Capsule",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 1 ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => selectOption(2),
              child: Container(
                width: 110,
                height: 100,
                margin: EdgeInsets.only(left: 12),
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: selectedIndex == 2 ? Colors.white : Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Icon(
                      Icons.vaccines,
                      size: 32,
                      color: selectedIndex == 2 ? Colors.black : Colors.white,
                    ),
                    Text("Injection",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 2 ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => selectOption(3),
              child: Container(
                width: 110,
                height: 100,
                margin: EdgeInsets.only(left: 12),
                padding: EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: selectedIndex == 3 ? Colors.white : Colors.grey[700],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    Icon(
                      FontAwesomeIcons.briefcaseMedical,
                      size: 32,
                      color: selectedIndex == 3 ? Colors.black : Colors.white,
                    ),
                    Text("Others",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectedIndex == 3 ? Colors.black : Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  String dropdownValue = 'Light';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Settings"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [Text("Theme : ",style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(width: 5),
                SizedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.menu),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    underline: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: "Light",
                        child: Text('Light  '),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Dark',
                        child: Text('Dark  '),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [Text("Theme : ",style:  TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                SizedBox(width: 5),
                SizedBox(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: const Icon(Icons.menu),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    underline: Container(
                      height: 1,
                      color: Colors.white,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: const [
                      DropdownMenuItem<String>(
                        value: "Light",
                        child: Text('Light  '),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Dark',
                        child: Text('Dark  '),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],

        ),
      ),
    );
  }
}

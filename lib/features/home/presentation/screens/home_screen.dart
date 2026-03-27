import 'package:flutter/material.dart';
import 'package:remedic/core/theme/colors.dart';
import '../../../../features/history/presentation/screens/history_screen.dart';

enum MedicineState { taken, missed, upcoming }

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: Container(
          alignment: AlignmentGeometry.centerLeft,
          margin: EdgeInsets.only(left: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey[900],
                child: Text(
                  "BRS",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25),
                alignment: AlignmentGeometry.center,
                margin: EdgeInsets.only(left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!",
                      style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    ),
                    Text(
                      "Jayed Raihan",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(right: 25),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[900],
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.notifications,
                    size: 18,
                    color: Colors.white,
                    weight: 10,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.card,
                    foregroundColor: AppColors.textPrimary,
                    side: const BorderSide(color: Colors.grey, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: AppColors.background,
                          title: const Text("Today's Medication"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              ListTile(
                                leading: Icon(Icons.medication),
                                title: Text("Paracetamol"),
                                subtitle: Text(
                                  "@2pm 1 capsule \n Status:Taken",
                                ),
                              ),

                              ListTile(
                                leading: Icon(Icons.medication),
                                title: Text("Seclo20"),
                                subtitle: Text(
                                  "@5pm 2 capsule \n Status:Missed",
                                ),
                              ),

                              ListTile(
                                leading: Icon(Icons.medication),
                                title: Text("Kolikata Herbal Tablet"),
                                subtitle: Text(
                                  "@7pm 3 capsule \n Status:Upcoming",
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      const Text(
                        "Today's medication",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            QuickView(
                              medicine: "Paracetamol",
                              schedule: "@2pm 1 capsule",
                              state: MedicineState.taken,
                            ),

                            SizedBox(width: 12),

                            QuickView(
                              medicine: "Seclo20",
                              schedule: "@5pm 2 capsule",
                              state: MedicineState.missed,
                            ),

                            SizedBox(width: 12),

                            QuickView(
                              medicine: "Kolikata Herbal Tablet",
                              schedule: "@7pm 7 capsule",
                              state: MedicineState.upcoming,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),

              SizedBox(
                height: 150,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.card,
                    foregroundColor: AppColors.textPrimary,
                    side: const BorderSide(color: Colors.grey, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Today's Medication"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(101, 138, 92, .3),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ListTile(
                                    leading: Icon(Icons.medication),
                                    title: Text("Paracetamol"),
                                    subtitle: Text("Stock 50/60"),
                                  ),
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(214, 206, 137, .3),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ListTile(
                                    leading: Icon(Icons.medication),
                                    title: Text("Seclo 20"),
                                    subtitle: Text("Stock 30/60"),
                                  ),
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(143, 96, 96, .3),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ListTile(
                                    leading: Icon(Icons.medication),
                                    title: Text("Herbal"),
                                    subtitle: Text("Stock 10/60"),
                                  ),
                                ),
                              ),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(143, 96, 96, .3),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: ListTile(
                                    leading: Icon(Icons.medication),
                                    title: Text("Amlivo 2.5"),
                                    subtitle: Text("Stock 20/60"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Column(
                    children: [
                      const Text(
                        "Your Medicine Cabinet",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            QuickViewCabinet(
                              medicine: "Paracetamol",
                              total: 60,
                              left: 50,
                            ),

                            SizedBox(width: 12),

                            QuickViewCabinet(
                              medicine: "Seclo20",
                              total: 60,
                              left: 30,
                            ),

                            SizedBox(width: 12),

                            QuickViewCabinet(
                              medicine: "Kolikata Herbal Tablet",
                              total: 60,
                              left: 10,
                            ),
                            SizedBox(width: 12),

                            QuickViewCabinet(
                              medicine: "Amlivo 2.5",
                              total: 60,
                              left: 20,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuickView extends StatelessWidget {
  final String medicine;
  final String schedule;
  final IconData icon;
  final MedicineState state;

  const QuickView({
    super.key,
    required this.medicine,
    required this.schedule,
    required this.state,
    this.icon = Icons.medication,
  });

  @override
  Widget build(BuildContext context) {
    // Determine color based on state
    final Color cardColor = state == MedicineState.taken
        ? const Color.fromRGBO(101, 138, 92, .4) // green
        : state == MedicineState.missed
        ? const Color.fromRGBO(143, 96, 96, .3) // red
        : const Color.fromRGBO(132, 134, 137, .3); // gray (upcoming)
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(icon), Text(medicine), Text(schedule)],
        ),
      ),
    );
  }
}

class QuickViewCabinet extends StatelessWidget {
  final String medicine;
  final int total;
  final int left;
  final IconData icon;

  const QuickViewCabinet({
    super.key,
    required this.medicine,
    required this.total,
    required this.left,

    this.icon = Icons.medication,
  });

  @override
  Widget build(BuildContext context) {
    final double ratio = left / total;
    // Determine color based on state
    final Color cardColor = ratio >= 0.75
        ? const Color.fromRGBO(101, 138, 92, .4)
        : // green
          ratio >= 0.4
        ? const Color.fromRGBO(214, 206, 137, .3)
        : // yellow
          const Color.fromRGBO(143, 96, 96, .3); // red
    return DecoratedBox(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(icon), Text(medicine), Text("Stock $left/$total")],
        ),
      ),
    );
  }
}

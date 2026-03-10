import 'package:flutter/material.dart';
import 'history_screen.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                const Text(
                  "Your Adherence History",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: const [
                          SizedBox(height: 24),
                          Text("Sun"),
                          SizedBox(height: 3),
                          Text("Mon"),
                          SizedBox(height: 3),
                          Text("Tue"),
                          SizedBox(height: 3),
                          Text("Wed"),
                          SizedBox(height: 3),
                          Text("Thu"),
                          SizedBox(height: 1),
                          Text("Fri"),
                          SizedBox(height: 0),
                          Text("Sat"),
                        ],
                      ),

                      const SizedBox(width: 10),

                      const Expanded(child: AdherenceHeatmap()),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  height: 150,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
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
                            fontSize: 24,
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
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
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
                                    padding: const EdgeInsets.all(10),
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
                                    padding: const EdgeInsets.all(10),
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
                                    padding: const EdgeInsets.all(10),
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
                                    padding: const EdgeInsets.all(10),
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
                            fontSize: 24,
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
                                left: 50,
                              ),
                              SizedBox(width: 12),

                              QuickViewCabinet(
                                medicine: "Amlivo 2.5",
                                total: 60,
                                left: 20,
                              ),
                              SizedBox(width: 12),

                              QuickViewCabinet(
                                medicine: "Imran Dih pills",
                                total: 360,
                                left: 300,
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

class AdherenceHeatmap extends StatelessWidget {
  const AdherenceHeatmap({super.key});

  Color getColor(int value) {
    switch (value) {
      case 3:
        return const Color.fromRGBO(101, 138, 92, .4); // good
      case 2:
        return const Color.fromRGBO(214, 206, 137, .3); // warning
      case 1:
        return const Color.fromRGBO(143, 96, 96, .3); // bad
      default:
        return const Color.fromRGBO(132, 134, 137, .3); // none
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Dummy data (365 days)
    final List<int> activity = List.generate(
      420,
      (index) => (index * 7 + 3) % 4,
    );

    final List<String> months = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec",
    ];

    const double boxSize = 16;
    const double spacing = 5;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// MONTH LABELS
          Row(
            children: months.map((m) {
              return Padding(
                padding: const EdgeInsets.only(right: 85),
                child: Text(m, style: const TextStyle(fontSize: 14)),
              );
            }).toList(),
          ),

          const SizedBox(height: 8),

          /// HEATMAP GRID
          SizedBox(
            height: (boxSize + spacing) * 7,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                crossAxisSpacing: spacing,
                mainAxisSpacing: spacing,
              ),
              itemCount: activity.length,
              itemBuilder: (context, index) {
                final value = activity[index];

                return GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Day ${index + 1} adherence: $value"),
                        duration: const Duration(milliseconds: 75),
                      ),
                    );
                  },
                  child: Container(
                    width: boxSize,
                    height: boxSize,
                    decoration: BoxDecoration(
                      color: getColor(value),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

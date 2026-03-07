import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text("Home"),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child:
                SizedBox(

                  width: 200,
                  height: 100,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black, // Change Button Color
                      foregroundColor: Colors.white,       // Change Text Color
                      side: const BorderSide(              // Add Border
                        color: Colors.white,
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(       // Control Roundness
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {showDialog(
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
                                subtitle: Text("@2pm 1 capsule"),
                              ),

                              ListTile(
                                leading: Icon(Icons.medication),
                                title: Text("Seclo20"),
                                subtitle: Text("@5pm 2 capsule"),
                              ),

                              ListTile(
                                leading: Icon(Icons.medication),
                                title: Text("Kolikata Herbal Tablet"),
                                subtitle: Text("@7pm 3 capsule"),
                              ),

                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close"),
                            )
                          ],
                        );
                      },
                    );},
                    child: const Text("Today's Medication",textAlign: TextAlign.left,),
                  ),
                ),
                ),





              const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
              child:
              SizedBox(

                width: 200,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Change Button Color
                    foregroundColor: Colors.white,       // Change Text Color
                    side: const BorderSide(              // Add Border
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(       // Control Roundness
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    /*showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text("Medicines of your active medication"),
                        content:  Text("You have no active medications" ),
                      );
                    },
                  );*/ //Eita dibo kono medications na thakle
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Your Cabinet"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: const [

                              ListTile(
                                leading: const Icon(Icons.medication_rounded, color: Colors.black),
                                title: const Text(
                                  "Paracetamol",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                                ),
                                subtitle: const Text("Stock: 48/ 60",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold )),
                                trailing: const Icon(Icons.info),
                                tileColor: Colors.lightGreenAccent

                              ),

                              ListTile(
                                leading: const Icon(Icons.medication_liquid, color: Colors.black),
                                title: const Text(
                                  "Monas40",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                                ),
                                subtitle: const Text("Stock: 35/ 60",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold )),
                                trailing: const Icon(Icons.info),
                                tileColor: Colors.amberAccent,
                              ),

                              ListTile(
                                leading: const Icon(Icons.medical_information_outlined, color: Colors.black),
                                title: const Text(
                                  "Maxpro40",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
                                ),
                                subtitle: const Text("Stock: 10 / 60",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold )),
                                trailing: const Icon(Icons.info),
                                tileColor: Colors.redAccent,
                              ),
/*AlertDialog(
  title: const Text("Your Cabinet"),
  content: Column(
    mainAxisSize: MainAxisSize.min,
    children: [

      // Paracetamol Card
      Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        decoration: BoxDecoration(
          color: Colors.lightGreenAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const ListTile(
          leading: Icon(Icons.medication_rounded, color: Colors.black),
          title: Text(
            "Paracetamol",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black),
          ),
          subtitle: Text("Stock: 48 / 60", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          trailing: Icon(Icons.info),
        ),
      ),

      // Repeat similar Container for other medicines...

    ],
  ),
) LIST TITLE ER EDGE ROUND KORTE CHAISILAM oSTRO LIST TILE ER JAYGAY EITA DITE BOLTESE .....BHUJTESI NA */
                              ListTile(
                                leading: const Icon(Icons.medication_sharp, color: Colors.white),
                                title: const Text(
                                  "finished medicine",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                                ),
                                subtitle: const Text("Stock: 0 / 60",style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold )),
                                trailing: const Icon(Icons.info),
                                tileColor: Colors.black38,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Close"),
                            )
                          ],
                        );
                      },
                    );
                    },
                  child: const Text("Medicine Cabinet",textAlign: TextAlign.left,selectionColor: Colors.white,),
                ),
              ),
        ),

              const SizedBox(height: 20),
        Align(
          alignment: Alignment.centerLeft,
          child:
              SizedBox(

                width: 200,
                height: 100,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black, // Change Button Color
                    foregroundColor: Colors.white,       // Change Text Color
                    side: const BorderSide(              // Add Border
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(       // Control Roundness
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text("add something here",textAlign: TextAlign.left,),
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
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 30),

            Stack(
              alignment: Alignment.bottomRight,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[900],
                  child: Text(
                    "BRS",
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ),

                CircleAvatar(
                  radius: 16,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt,
                    size: 18,
                    color: Colors.black,
                  ),
                )
              ],
            ),

            SizedBox(height: 20),

            Text(
              "B.M. Raihan Saleh",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "rainhan_saleh@remedic.health",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 40),

            Expanded(
              child: ListView(
                children: [

                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),

                  ListTile(
                    leading: Icon(Icons.notifications_none),
                    title: Text("Notifications"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),

                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text("Health Records"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),

                  ListTile(
                    leading: Icon(Icons.security),
                    title: Text("Security"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  ),

                  SizedBox(height: 40),

                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text(
                      "Logout",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

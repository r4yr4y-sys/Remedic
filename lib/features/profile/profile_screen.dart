import 'package:flutter/material.dart';
import 'package:remedic/core/services/auth_service.dart';
import 'package:remedic/features/auth/login_screen.dart';
import '../auth/registration_screen.dart';
import '../history/history_screen.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final _authService = AuthService();

  Future<void> _logout(BuildContext context) async {
    await _authService.signOut();
    if (!context.mounted) return;
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = _authService.currentUser;
    final displayName = user?.displayName ?? 'User';
    final email = user?.email ?? '';
    final initials = displayName.isNotEmpty
        ? displayName.split('').take(3).join('').toUpperCase()
        : 'U';

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 30),

            GestureDetector(
              onTap: () {Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
              },
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey[900],
                    child: Text(
                      initials,
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),

                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.camera_alt, size: 18, color: Colors.black),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            Text(
              displayName,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 5),

            Text(email, style: TextStyle(color: Colors.grey)),

            SizedBox(height: 40),

            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.person_outline),
                    title: Text("Edit Profile"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegistrationScreen()),
                      );
                      },
                  ),

                  // ListTile(
                  //   leading: Icon(Icons.notifications_none),
                  //   title: Text("Notifications"),
                  //   trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  // ),

                  ListTile(
                    leading: Icon(Icons.history),
                    title: Text("Medicine Records"),
                    trailing: Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );
                    },
                  ),

                  // ListTile(
                  //   leading: Icon(Icons.security),
                  //   title: Text("Security"),
                  //   trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  // ),

                  SizedBox(height: 40),

                  ListTile(
                    leading: Icon(Icons.logout, color: Colors.red),
                    title: Text("Logout", style: TextStyle(color: Colors.red)),
                    onTap: () => _logout(context),
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

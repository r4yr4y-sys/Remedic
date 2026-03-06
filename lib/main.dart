import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'registration_screen.dart';
import 'login_screen.dart';
import 'splash_screen.dart';
import 'app_navigator.dart';

void main() {
  runApp(RemedicApp());
}

class RemedicApp extends StatelessWidget {
  const RemedicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Remedic',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF000000),
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        '/app': (context) => const AppNavigator(),
      },
    );
  }
}
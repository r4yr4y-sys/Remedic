import 'package:flutter/material.dart';
import 'package:remedic/core/theme/colors.dart';
import 'features/auth/registration_screen.dart';
import 'features/auth/login_screen.dart';
import 'features/splash/splash_screen.dart';
import 'features/navigator/app_navigator.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

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
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(), // SplashScreen()
        '/register': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        '/app': (context) => const AppNavigator(),
      },
    );
  }
}

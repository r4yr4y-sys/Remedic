import 'package:flutter/material.dart';
import 'package:remedic/core/theme/colors.dart';
import 'features/auth/presentation/screens/registration_screen.dart';
import 'features/auth/presentation/screens/login_screen.dart';
import 'features/splash/presentation/splash_screen.dart';
import 'features/navigator/presentation/app_navigator.dart';

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
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => const AppNavigator(),   // SplashScreen()
        '/register': (context) => const RegistrationScreen(),
        '/login': (context) => const LoginScreen(),
        //'/app': (context) => const AppNavigator(),
      },
    );
  }
}

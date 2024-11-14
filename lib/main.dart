import 'package:flutter/material.dart';
import 'package:login_signup_ui/screens/login_screen.dart';
import 'package:login_signup_ui/screens/signup_screen.dart';
import 'package:login_signup_ui/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/sign': (context) => const SignupScreen(),
      },
    );
  }
}

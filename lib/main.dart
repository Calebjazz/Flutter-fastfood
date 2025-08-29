import 'package:flutter/material.dart';
import 'pages/landing/landing_page.dart';
import 'pages/login_page.dart';
import 'pages/sign_up.dart';
import 'pages/dashboards/user_dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // starting route
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/sign_up': (context) => const SignUp(),
        '/user_dashboard': (context) => const UserDashboard(),
      },
    );
  }
}

import 'package:fastfood/pages/dashboards/drawer/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/landing/landing_page.dart';
import 'pages/login_page.dart';
import 'pages/sign_up.dart';
import 'pages/dashboards/user_dashboard.dart';
import 'pages/dashboards/drawer/theme/themeprovider.dart';
//import 'pages/dashboards/drawer/theme/settings_page.dart'; // Import your SettingsPage

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Get themeProvider from Provider
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: "Fastfood App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
      ),
      themeMode: themeProvider.themeMode, // Use Provider value
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/login': (context) => const LoginPage(),
        '/sign_up': (context) => const SignUp(),
        '/user_dashboard': (context) => UserDashboard(
              usernameController: TextEditingController(),
              passwordController: TextEditingController(),
            ),
        '/settings': (context) => const SettingsPage(), // Settings page route
      },
    );
  }
}

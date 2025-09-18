import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/themeprovider.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
  final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: isDarkMode ? Colors.black : Colors.green,
      ),
      body: const Center(
        child: Text("About this App"),
      ),
    );
  }
}
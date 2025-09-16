import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/themeprovider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Listen to provider so UI updates when theme changes
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Settings"),
      ),
      body: ListView(
        children: [
          // Dark Mode toggle
          ListTile(
            leading: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            title: Text(isDarkMode ? "Dark Mode" : "Light Mode"),
            onTap: () {
              themeProvider.toggleTheme(); // handled in provider (saves to prefs too)
            },
          ),

          // Language selection
          const ListTile(
            leading: Icon(Icons.language),
            title: Text("Language"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          // Notifications settings
          const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),

          // Payments settings
          const ListTile(
            leading: Icon(Icons.payment),
            title: Text("Payments"),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

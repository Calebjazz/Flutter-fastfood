import 'package:fastfood/pages/dashboards/drawer/theme/themeprovider.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/cart.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/favorites.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/home.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/location.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'drawer/settingspage.dart';
import 'drawer/profile.dart';
import 'drawer/about.dart';
import 'drawer/privacy.dart';
import 'drawer/faqs.dart';

class UserDashboard extends StatefulWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  const UserDashboard({
    super.key,
    required this.usernameController,
    required this.passwordController,
  });

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0;

  final List<Widget> pages = const [
    Home(),
    Cart(),
    Favorites(),
    Location(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    final iconColor = isDarkMode ? Colors.white : Colors.black;
    final textColor = isDarkMode ? Colors.white : Colors.black;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fastfood',
          style: TextStyle(fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        backgroundColor: isDarkMode ? Colors.black : Colors.green,
        iconTheme: IconThemeData(color: iconColor),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Caleb Muladi", style: TextStyle(color: textColor)),
              accountEmail: Text("calebmuladi9@gmail.com", style: TextStyle(color: textColor)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.green),
              ),
              decoration: BoxDecoration(color: isDarkMode ? Colors.black : Colors.green),
            ),
            // Settings
            ListTile(
              leading: Icon(
                Icons.settings,
                color: iconColor,
              ),
              title: Text("Settings", style: TextStyle(color: textColor)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            // FAQ
            ListTile(
              leading: Icon(Icons.question_answer, color: iconColor),
              title: Text("FAQS", style: TextStyle(color: textColor)),
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FaqsPage()),
                );
              },
            ),
            // About
            ListTile(
              leading: Icon(Icons.info, color: iconColor),
              title: Text("About", style: TextStyle(color: textColor)),
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            // Privacy
            ListTile(
              leading: Icon(Icons.privacy_tip, color: iconColor),
              title: Text("Privacy", style: TextStyle(color: textColor)),
              onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PrivacyPage()),
                );
              },
            ),
            // Profile
            ListTile(
              leading: Icon(Icons.person, color: iconColor),
              title: Text("Profile", style: TextStyle(color: textColor)),
              onTap: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
            // Logout
            ListTile(
              leading: Icon(Icons.logout, color: iconColor),
              title: Text("Logout", style: TextStyle(color: textColor)),
              onTap: () {
                widget.usernameController.clear();
                widget.passwordController.clear();
                Navigator.pushReplacementNamed(context, '/login');
                 ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Logged Out!", style: TextStyle(color: Colors.white)),
                backgroundColor: Colors.red,
              ),
              );
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: isDarkMode ? Colors.white : Colors.black54,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: isDarkMode ? Colors.white : Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: isDarkMode ? Colors.white : Colors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: isDarkMode ? Colors.white : Colors.black),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, color: isDarkMode ? Colors.white : Colors.black),
            label: 'Location',
          ),
        ],
      ),
    );
  }
}

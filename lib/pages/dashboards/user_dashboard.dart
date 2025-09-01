import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/cart.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/favorites.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/home.dart';
import 'package:fastfood/pages/dashboards/navigation%20bar%20pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    Profile(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fastfood', style: TextStyle(fontFamily: GoogleFonts.robotoMono().fontFamily)),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // Drawer Header
            const UserAccountsDrawerHeader(
              accountName: Text("Caleb Muladi"),
              accountEmail: Text("calebmuladi9@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.orange),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            // Settings
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // FAQ
            ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text("FAQS"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // About
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            // Logout
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                // Clear login fields
                widget.usernameController.clear();
                widget.passwordController.clear();

                // Navigate back to login screen
                Navigator.pushReplacementNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

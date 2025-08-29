import 'package:flutter/material.dart';

class UserDashboard extends StatefulWidget {
  const UserDashboard({super.key});

  @override
  State<UserDashboard> createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    Center(child: Text("Home", style: TextStyle(fontSize: 20,))),
    Center(child: Text("Cart", style: TextStyle(fontSize: 20,))),
    Center(child: Text("Favorites", style: TextStyle(fontSize: 20,))),
    Center(child: Text("Profile", style: TextStyle(fontSize: 20,))),
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
        title: Text('Fastfood'),
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
              //someone should be able to upload a real picture
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, size: 30, color: Colors.orange),
              ),
              decoration: BoxDecoration(color: Colors.orangeAccent),
            ),
            //settings
             ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                Navigator.pop(context); // navigate to setting page
              },
            ),
            //FAQ
            ListTile(
              leading: const Icon(Icons.question_answer),
              title: const Text("FAQS"),
              onTap: () {
                Navigator.pop(context); // navigate to FAQS page
              },
            ),
            //about
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About"),
              onTap: () {
                Navigator.pop(context); // navigate to about page
              },
            ),
            //logout
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {
                Navigator.pop(context); // log out
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
        items: [
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

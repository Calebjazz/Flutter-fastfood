import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final PageController pageController = PageController();
  int currentPage = 0;

  void _goToLogin() {
    Navigator.pushReplacementNamed(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
            children: [
              buildPage(
                "Welcome",
                "Fast food at your fingertips – tasty meals delivered fresh, hot, and fast, right to your door.",
                "assets/images/sausage",
              ),
              buildPage(
                "Order",
                "Select your favorite meals easily – choose your meals quickly and enjoy them wherever you are.",
                "assets/images/burger-king",
              ),
              buildPage(
                "Enjoy",
                "Fast delivery straight to your doorstep so you can savor your favorite meals anytime.",
                "assets/images/kfc",
              ),
            ],
          ),

          // Skip button (optional)
          if (currentPage != 2)
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: _goToLogin,
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),

          // Get Started button for the last page
          if (currentPage == 2)
            Positioned(
              bottom: 60,
              left: MediaQuery.of(context).size.width * 0.25,
              right: MediaQuery.of(context).size.width * 0.25,
              child: ElevatedButton(
                onPressed: _goToLogin,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget buildPage(String title, String subtitle, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        color: Colors.black.withValues(alpha: 0.6), // dark overlay
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 16),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


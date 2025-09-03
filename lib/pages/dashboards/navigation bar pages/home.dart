import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchController = TextEditingController();

  // Track selected category index
  int selectedCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            // Fixed Search Field
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Search for food",
                prefixIcon: const Icon(Icons.search),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    // filter action
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),

            const SizedBox(height: 20),

            // Carousel with 4 sliders
            CarouselSlider(
              options: CarouselOptions(
                height: 160,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                viewportFraction: 0.85,
              ),
              items: [
                buildSlider("assets/images/burger.jpeg", "Delicious Burgers"),
                buildSlider("assets/images/Pizza.jpeg", "Fresh Pizza"),
                buildSlider("assets/images/cocacola.jpeg", "Tasty Drinks"),
                buildSlider("assets/images/desert.jpeg", "Sweet Desserts"),
              ],
            ),

            const SizedBox(height: 20),

            // Aligning the text to the left
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search by Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  fontFamily: GoogleFonts.robotoMono().fontFamily,
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Different categories button
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildCategoryButton("American", 0),
                  const SizedBox(width: 8),
                  _buildCategoryButton("Frech", 1),
                  const SizedBox(width: 8),
                  _buildCategoryButton("Asian", 2),
                  const SizedBox(width: 8),
                  _buildCategoryButton("Italian", 3),
                  const SizedBox(width: 8),
                  _buildCategoryButton("Mexican", 4),
                  const SizedBox(width: 8),
                  _buildCategoryButton("Local🇹🇿", 5),
                  const SizedBox(width: 8),
                ],
              ),
            ),
            // You can place Google Map, Food list, etc. below
          ],
        ),
      ),
    );
  }

  // Helper method to avoid repeating slider code
  Widget buildSlider(String imagePath, String title) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade300,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 6,
                    color: Colors.black,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Fixed category button
  Widget _buildCategoryButton(String text, int index) {
    bool isSelected = selectedCategoryIndex == index;

    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCategoryIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.orangeAccent : Colors.grey[300],
        foregroundColor: isSelected ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(text),
    );
  }
}


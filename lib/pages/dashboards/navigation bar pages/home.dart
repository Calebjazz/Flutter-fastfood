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

  // Track liked items
  List<bool> liked = [false, false, false, false];

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
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              ),
            ),

            const SizedBox(height: 10),

            // Everything below is scrollable
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        buildSlider("assets/images/burger-king", "Delicious Burgers"),
                        buildSlider("assets/images/Pizza.jpeg", "Fresh Pizza"),
                        buildSlider("assets/images/cocacola.jpeg", "Tasty Drinks"),
                        buildSlider("assets/images/desert.jpeg", "Sweet Desserts"),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Categories title
                    Text(
                      'Search Food by Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Different categories button
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _buildCategoryButton("American🇺🇸", 0),
                          const SizedBox(width: 8),
                          _buildCategoryButton("French🇫🇷", 1),
                          const SizedBox(width: 8),
                          _buildCategoryButton("Asian🇨🇳", 2),
                          const SizedBox(width: 8),
                          _buildCategoryButton("Italian🇮🇹", 3),
                          const SizedBox(width: 8),
                          _buildCategoryButton("Mexican🇲🇽", 4),
                          const SizedBox(width: 8),
                          _buildCategoryButton("Local🇹🇿", 5),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Title + See all
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular Foods",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All →",
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),

                    // Product grid
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      childAspectRatio: 0.72,
                      children: [
                        buildProductCard("Hot Dogs", "assets/images/HotDogs.jpeg", 8.99, 0),
                        buildProductCard("Veggi Burger", "assets/images/veggiburger.jpeg", 8.49, 1),
                        buildProductCard("Crispy chicken", "assets/images/GoldenCrispyChicken.jpeg", 10.99, 2),
                        buildProductCard("Fries", "assets/images/kfc", 7.50, 3),
                      ],
                    ),
                  ],
                ),
              ),
            ),
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
        backgroundColor: isSelected ? Colors.orangeAccent : Colors.white54,
        foregroundColor: isSelected ? Colors.white : Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Text(text),
    );
  }

  // Product card with like + add to cart
  Widget buildProductCard(
    String name,
    String imagePath,
    double price,
    int index,
  ) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image with like button
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.asset(
                  imagePath,
                  height: 120,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      liked[index] = !liked[index];
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white70,
                    child: Icon(
                      liked[index] ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 8),

          // Name
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),

          const SizedBox(height: 4),

          // Price + Add button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$${price.toStringAsFixed(2)}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    minimumSize: const Size(40, 30),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("Add", style: TextStyle(fontSize: 12)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


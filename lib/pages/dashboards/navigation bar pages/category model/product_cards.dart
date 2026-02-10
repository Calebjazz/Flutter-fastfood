import 'package:flutter/material.dart';
import 'food_list.dart';

class ProductCards extends StatelessWidget {
  final int selectedCategoryIndex;

  const ProductCards({super.key, required this.selectedCategoryIndex});

  @override
  Widget build(BuildContext context) {
    // Filter foods based on the selected category
    List<FoodItem> filteredFoods = allFoods
        .where((food) => food.categoryIndex == selectedCategoryIndex)
        .toList();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: filteredFoods.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        final food = filteredFoods[index];
        return buildProductCard(food.name, food.imagePath, food.price);
      },
    );
  }

  Widget buildProductCard(String name, String imagePath, double price) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover, width: double.infinity),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text('\$${price.toStringAsFixed(2)}',
                style: const TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }
}

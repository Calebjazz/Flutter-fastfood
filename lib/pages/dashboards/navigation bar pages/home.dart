import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(9),
        child: Column(
          children: [
            SearchBar(
              controller: searchController,
              hintText: 'Search for food',
              leading: const Icon(Icons.search),
              trailing: [
                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // You can place Google Map, Food list, etc. below
          ],
        ),
      ),
    );
  }
}

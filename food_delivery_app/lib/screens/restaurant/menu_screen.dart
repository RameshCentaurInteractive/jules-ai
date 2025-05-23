import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final String restaurantName;

  const MenuScreen({super.key, required this.restaurantName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantName),
      ),
      body: ListView.builder(
        itemCount: 8, // Static count for 8 menu items
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.fastfood),
            title: Text('Menu Item ${index + 1}'),
            subtitle: const Text('Item description detailing ingredients and preparation.'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('\$${((index + 1) * 2.50).toStringAsFixed(2)}'),
                const SizedBox(height: 4),
                ElevatedButton(
                  onPressed: () {
                    // Handle "Add to Cart" logic
                    print('Added Menu Item ${index + 1} to cart');
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    textStyle: const TextStyle(fontSize: 12),
                  ),
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

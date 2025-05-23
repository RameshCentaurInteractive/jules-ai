import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Static data for now
    const int itemCount = 3;
    double totalAmount = 0;
    for (int i = 0; i < itemCount; i++) {
      totalAmount += (i + 1) * 3.00;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: itemCount,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      // Placeholder for remove item
                      print('Remove item ${index + 1}');
                    },
                  ),
                  title: Text('Menu Item Name ${index + 1}'),
                  subtitle: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.remove),
                        onPressed: () {
                          // Placeholder for decrease quantity
                          print('Decrease quantity for item ${index + 1}');
                        },
                        iconSize: 18.0,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                      const Text('Quantity: 1'), // Static for now
                      IconButton(
                        icon: const Icon(Icons.add),
                        onPressed: () {
                          // Placeholder for increase quantity
                          print('Increase quantity for item ${index + 1}');
                        },
                        iconSize: 18.0,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                      ),
                    ],
                  ),
                  trailing: Text('\$${((index + 1) * 3.00).toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Total: \$${totalAmount.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    print('Proceed to Checkout button pressed');
                    // Navigate to CheckoutScreen
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 36),
                  ),
                  child: const Text('Proceed to Checkout'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

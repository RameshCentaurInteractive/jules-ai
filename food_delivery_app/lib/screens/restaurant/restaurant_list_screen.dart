import 'package:flutter/material.dart';

class RestaurantListScreen extends StatelessWidget {
  const RestaurantListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants'),
      ),
      body: ListView.builder(
        itemCount: 5, // Static count for now
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const Icon(Icons.restaurant),
            title: Text('Restaurant Name ${index + 1}'),
            subtitle: const Text('Cuisine Type - Address Snippet'),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                // Navigate to restaurant details screen
                print('Tapped on restaurant ${index + 1}');
              },
            ),
          );
        },
      ),
    );
  }
}

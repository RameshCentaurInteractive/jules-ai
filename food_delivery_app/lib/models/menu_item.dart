class MenuItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String? imageUrl; // Optional
  final String restaurantId;

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
    required this.restaurantId,
  });
}

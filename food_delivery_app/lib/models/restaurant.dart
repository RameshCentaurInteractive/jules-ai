class Restaurant {
  final String id;
  final String name;
  final String cuisineType;
  final String address;
  final double rating;
  final String? imageUrl; // Optional
  final List<String> menuItemIds;

  Restaurant({
    required this.id,
    required this.name,
    required this.cuisineType,
    required this.address,
    required this.rating,
    this.imageUrl,
    required this.menuItemIds,
  });
}

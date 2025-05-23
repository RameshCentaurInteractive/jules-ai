class OrderItem {
  final String id;
  final String menuItemId;
  final int quantity;
  final double priceAtPurchase;

  OrderItem({
    required this.id,
    required this.menuItemId,
    required this.quantity,
    required this.priceAtPurchase,
  });
}

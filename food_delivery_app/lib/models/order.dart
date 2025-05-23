class Order {
  final String id;
  final String userId;
  final String restaurantId;
  final List<String> orderItemIds;
  final double totalAmount;
  final String status;
  final DateTime orderDate;
  final String deliveryAddress;
  final String? paymentMethod; // Optional

  Order({
    required this.id,
    required this.userId,
    required this.restaurantId,
    required this.orderItemIds,
    required this.totalAmount,
    required this.status,
    required this.orderDate,
    required this.deliveryAddress,
    this.paymentMethod,
  });
}

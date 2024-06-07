class CartItem {
  final String name;
  final String imageUrl;
  int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    this.quantity = 1,
  });
}

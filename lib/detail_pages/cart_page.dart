<<<<<<< HEAD
=======
// lib/pages/cart_page.dart

>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/controllers/chart_controllers.dart';

class CartPage extends StatelessWidget {
<<<<<<< HEAD
  CartPage({super.key});

=======
  CartPage({Key? key}) : super(key: key);

  // Mengambil instance CartController
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
      appBar: AppBar(title: const Text('Keranjang')),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return const Center(child: Text('Keranjang Anda kosong'));
=======
      appBar: AppBar(
        title: Text('Keranjang'),
      ),
      body: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Center(
            child: Text('Keranjang Anda kosong'),
          );
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
        }
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
<<<<<<< HEAD
                  final totalPrice = item.price * item.quantity;
                  return Container(
                    padding: const EdgeInsets.all(16),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Image
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            item.imageUrl,
                            width: 80,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        // Product Info
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 4),
                              Text(
                                item.name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Price, Quantity, Total
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\Rp.${item.price.toStringAsFixed(2)}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.remove_circle_outline),
                                  onPressed: () =>
                                      cartController.decreaseQuantity(index),
                                ),
                                Text('${item.quantity}'),
                                IconButton(
                                  icon: const Icon(Icons.add_circle_outline),
                                  onPressed: () =>
                                      cartController.increaseQuantity(index),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '\Rp.${totalPrice.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.orange.shade400,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline,
                                  color: Colors.red),
                              onPressed: () => cartController.removeItem(index),
                            )
                          ],
=======
                  return ListTile(
                    leading: Image.asset(
                      item.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(item.name),
                    subtitle: Text('Jumlah: ${item.quantity}'),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () =>
                              cartController.decreaseQuantity(index),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () =>
                              cartController.increaseQuantity(index),
                        ),
                        IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => cartController.removeItem(index),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
<<<<<<< HEAD
            // Total Price
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
=======
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                    'Total Harga:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
<<<<<<< HEAD
                    '\Rp.${cartController.totalPrice.toStringAsFixed(2)}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
=======
                    'Rp ${cartController.totalPrice.toStringAsFixed(2)}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                  ),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}

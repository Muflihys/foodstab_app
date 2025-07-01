import 'package:get/get.dart';
import 'package:mppl/data/chart_item.dart';

class CartController extends GetxController {
  var cartItems = <CartItem>[].obs;
<<<<<<< HEAD
  bool isTesting = false;
  bool isSnackbarOpen = true;
=======
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  void addToCart(String itemName, String imageUrl, double price) {
    int index = cartItems.indexWhere((item) => item.name == itemName);
    if (index != -1) {
      cartItems[index].quantity += 1;
      cartItems.refresh();
    } else {
      cartItems.add(CartItem(
        name: itemName,
        imageUrl: imageUrl,
        price: price,
        quantity: 1,
      ));
    }
<<<<<<< HEAD
    if (!isTesting) {
      Get.snackbar(
        'Berhasil',
        '$itemName ditambahkan ke keranjang',
        snackPosition: SnackPosition.BOTTOM,
        duration: const Duration(seconds: 2),
      );
    }
=======
    Get.snackbar(
      'Berhasil',
      '$itemName ditambahkan ke keranjang',
      snackPosition: SnackPosition.BOTTOM,
      duration: Duration(seconds: 2),
    );
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
  }

  void removeItem(int index) {
    cartItems.removeAt(index);
  }

  void increaseQuantity(int index) {
    cartItems[index].quantity += 1;
    cartItems.refresh();
  }

  void decreaseQuantity(int index) {
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity -= 1;
      cartItems.refresh();
    }
  }

  double get totalPrice =>
      cartItems.fold(0, (sum, item) => sum + (item.price * item.quantity));
}

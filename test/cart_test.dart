import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mppl/controllers/chart_controllers.dart';

void main() {
  // Inisialisasi CartController sebelum pengujian
  late CartController cartController;

  setUp(() {
    cartController = CartController();
    Get.put(cartController); // Pastikan controller diinisialisasi dengan benar
    cartController.isTesting = true; // Disable snackbar in test mode
  });

  test('addToCart - Menambahkan item baru ke keranjang', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);

    // Verifikasi item ditambahkan ke keranjang
    expect(cartController.cartItems.length, 1);
    expect(cartController.cartItems[0].name, 'Nabati');
    expect(cartController.cartItems[0].price, 12000.0);
    expect(cartController.cartItems[0].quantity, 1);
  });

  test('addToCart - Meningkatkan jumlah item yang sudah ada di keranjang', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);

    // Verifikasi jumlah item diperbarui
    expect(cartController.cartItems.length, 1);
    expect(cartController.cartItems[0].quantity, 2);
  });

  test('increaseQuantity - Meningkatkan jumlah item', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);
    cartController.increaseQuantity(0);

    // Verifikasi bahwa jumlah item bertambah
    expect(cartController.cartItems[0].quantity, 2);
  });

  test('decreaseQuantity - Mengurangi jumlah item', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);
    cartController.increaseQuantity(0);
    cartController.decreaseQuantity(0);

    // Verifikasi bahwa jumlah item berkurang
    expect(cartController.cartItems[0].quantity, 1);
  });

  test('totalPrice - Menghitung harga total dengan benar', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);
    cartController.addToCart('Coklat', 'assets/coklat.jpg', 15000.0);
    cartController.increaseQuantity(0); // Nabati quantity = 2

    // Verifikasi total harga
    expect(cartController.totalPrice, 39000.0);
  });

  test('removeItem - Menghapus item dari keranjang', () {
    cartController.addToCart('Nabati', 'assets/nabati.jpg', 12000.0);
    cartController.removeItem(0);

    // Verifikasi bahwa item dihapus
    expect(cartController.cartItems.isEmpty, true);
  });
}

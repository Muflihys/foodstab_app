// lib/pages/detail_nabati.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/controllers/chart_controllers.dart';
import 'package:mppl/data/data_images.dart';
import 'package:mppl/data/data_namapangan.dart';
import 'cart_page.dart';

class DetailNabati extends StatelessWidget {
<<<<<<< HEAD
  DetailNabati({super.key});
=======
  DetailNabati({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  // Mengambil instance CartController
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
<<<<<<< HEAD
            gradient: const LinearGradient(
=======
            gradient: LinearGradient(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
              colors: [
                Color(0xFF11A168),
                Color(0xFF4CEC79),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
<<<<<<< HEAD
            borderRadius: const BorderRadius.only(
=======
            borderRadius: BorderRadius.only(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
<<<<<<< HEAD
                offset: const Offset(0, 4),
=======
                offset: Offset(0, 4),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                blurRadius: 4,
              ),
            ],
          ),
        ),
<<<<<<< HEAD
        title: const Text(
=======
        title: Text(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          'Nabati',
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
<<<<<<< HEAD
          icon: const Icon(Icons.arrow_back),
=======
          icon: Icon(Icons.arrow_back),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
<<<<<<< HEAD
            icon: const Icon(Icons.shopping_cart),
=======
            icon: Icon(Icons.shopping_cart),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
            color: Colors.white,
            onPressed: () {
              Get.to(() => CartPage());
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
<<<<<<< HEAD
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
=======
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: 6, // Jumlah produk yang akan ditampilkan
        itemBuilder: (context, index) {
          final itemName = AppDataPangan
              .panganNabati[index % AppDataPangan.panganNabati.length];
          final imageUrl = AppDataImage
              .nabatiImages[index % AppDataImage.nabatiImages.length];
<<<<<<< HEAD
          const price = 12000.0; // Contoh harga tetap untuk setiap produk
=======
          final price = 12000.0; // Contoh harga tetap untuk setiap produk
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
<<<<<<< HEAD
                      borderRadius: const BorderRadius.only(
=======
                      borderRadius: BorderRadius.only(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemName,
<<<<<<< HEAD
                          style: const TextStyle(
=======
                          style: TextStyle(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                            fontFamily: "PlusJakartaSans",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Rp. ${price.toStringAsFixed(0)}/kg',
<<<<<<< HEAD
                          style: const TextStyle(
=======
                          style: TextStyle(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                            fontFamily: "PlusJakartaSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
<<<<<<< HEAD
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: const Icon(Icons.add_shopping_cart),
=======
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: Icon(Icons.add_shopping_cart),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                            onPressed: () {
                              cartController.addToCart(
                                  itemName, imageUrl, price);
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/controllers/chart_controllers.dart';
import 'package:mppl/data/data_images.dart';
import 'package:mppl/data/data_namapangan.dart';
import 'cart_page.dart';

class DetailHewani extends StatelessWidget {
  DetailHewani({super.key});

  // Mengambil instance CartController
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xFF11A168),
                Color(0xFF4CEC79),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        title: const Text(
          'Hewani',
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              Get.to(() => CartPage());
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemCount: 6, // Jumlah produk yang akan ditampilkan
        itemBuilder: (context, index) {
          final itemName = AppDataPangan
              .panganHewani[index % AppDataPangan.panganHewani.length];
          final imageUrl = AppDataImage
              .hewaniImages[index % AppDataImage.hewaniImages.length];
          const price = 12000.0; // Contoh harga tetap untuk setiap produk

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
                      borderRadius: const BorderRadius.only(
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
                          style: const TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          'Rp. ${price.toStringAsFixed(0)}/kg',
                          style: const TextStyle(
                            fontFamily: "PlusJakartaSans",
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            icon: const Icon(Icons.add_shopping_cart),
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

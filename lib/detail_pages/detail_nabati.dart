// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/data/chart_item.dart';
import 'package:mppl/data/data_images.dart';
import 'package:mppl/data/data_namapangan.dart';
import 'cart_page.dart';

class DetailNabati extends StatefulWidget {
  const DetailNabati({Key? key}) : super(key: key);

  @override
  State<DetailNabati> createState() => _DetailNabatiState();
}

class _DetailNabatiState extends State<DetailNabati> {
  List<CartItem> cartItems = [];

  void addToCart(String itemName, String imageUrl) {
    setState(() {
      // Periksa apakah item sudah ada dalam keranjang
      int index = cartItems.indexWhere((item) => item.name == itemName);
      if (index != -1) {
        // Jika sudah ada, tambahkan jumlahnya
        cartItems[index].quantity += 1;
      } else {
        // Jika belum ada, tambahkan item baru
        cartItems.add(CartItem(name: itemName, imageUrl: imageUrl));
      }
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$itemName ditambahkan ke keranjang'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF11A168),
                Color(0xFF4CEC79),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28),
              bottomRight: Radius.circular(28),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        title: Text(
          'Nabati',
          style: TextStyle(
            fontFamily: "PlusJakartaSans",
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {
              // Aksi yang dijalankan saat ikon keranjang ditekan
              // Tampilkan isi keranjang atau navigasi ke halaman keranjang
              Get.to(() => CartPage(cartItems: cartItems));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 2, // Jumlah kolom dalam grid
          children: List.generate(6, (index) {
            final itemName = AppDataPangan
                .panganNabati[index % AppDataPangan.panganNabati.length];
            final imageUrl = AppDataImage
                .nabatiImages[index % AppDataImage.nabatiImages.length];
            return GestureDetector(
              onTap: () {
                // Aksi yang dijalankan saat kotak ditekan
                // Get.to(() => NextPage());
              },
              child: Card(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),
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
                          borderRadius: BorderRadius.only(
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
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemName,
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans",
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Rp.12.000/kg',
                              style: TextStyle(
                                fontFamily: "PlusJakartaSans",
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: IconButton(
                                icon: Icon(Icons.add_shopping_cart),
                                onPressed: () {
                                  addToCart(itemName, imageUrl);
                                },
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

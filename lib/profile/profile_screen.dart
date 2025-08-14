// lib/profile/profile_screen.dart

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:mppl/Login/login_screen.dart';
import 'package:mppl/contrains/text_strings.dart';
import 'package:mppl/controllers/chart_controllers.dart';
import 'package:mppl/detail_pages/cart_page.dart';
import 'package:mppl/profile/update_profile_screen.dart';
import 'package:mppl/profile/widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  // Mengambil instance CartController
  final CartController cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Tindakan saat tombol back ditekan, misalnya navigasi kembali
            Get.back();
          },
          icon: const Icon(LineAwesomeIcons.angle_left_solid),
        ),
        title: Text(
          tProfile,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Tindakan saat ikon sun/moon ditekan, misalnya toggle tema
              // Implementasikan sesuai kebutuhan Anda
            },
            icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        image: AssetImage('assets/img/pprofile6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tProfileHeading,
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          tSubHeading,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => const UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide.none,
                    shape: const StadiumBorder(),
                  ),
                  child: const Text(
                    tEditProfile,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Menu
              ProfileMenu(
                  title: "Settings",
                  icon: LineAwesomeIcons.cog_solid,
                  onPress: () {}),
              ProfileMenu(
                  title: "Cart",
                  icon: LineAwesomeIcons.cart_arrow_down_solid,
                  onPress: () => Get.to(() => CartPage())),
              ProfileMenu(
                  title: "toPay",
                  icon: LineAwesomeIcons.wallet_solid,
                  onPress: () => Get.to(() => CartPage())),
              const Divider(
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileMenu(
                  title: "Address",
                  subtitle: "Jalan Karya Wiguna No.84e",
                  icon: LineAwesomeIcons.map,
                  onPress: () {}),
              const SizedBox(height: 30),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Get.offAll(const LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 102, 189, 109),
                      textStyle: const TextStyle(color: Colors.black)),
                  child: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/community/community_screen.dart';
import 'package:mppl/home/home_screen.dart';
import 'package:mppl/profile/profile_screen.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(() => NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
<<<<<<< HEAD
            destinations: const [
=======
            destinations: [
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
              NavigationDestination(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.people_outline), label: 'Community'),
              NavigationDestination(
                  icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
            ],
          )),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

<<<<<<< HEAD
  final screens = [
    const HomeScreen(),
    const CommunityScreen(),
    ProfileScreen()
  ];
=======
  final screens = [HomeScreen(), CommunityScreen(), ProfileScreen()];
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
}

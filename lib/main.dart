import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/auth/auth.dart';
import 'package:mppl/SignUp/signup_screen.dart';
import 'package:mppl/navigation/navigation_menu.dart';
import 'package:mppl/profile/update_profile_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: AuthWrapper(),
      getPages: [
        GetPage(name: '/signUp', page: () => const SignUpScreen()),
        GetPage(
            name: '/updateProfile', page: () => const UpdateProfileScreen()),
        GetPage(name: '/navigate', page: () => const NavigationMenu()),
      ],
    );
  }
}

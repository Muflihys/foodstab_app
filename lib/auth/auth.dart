import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mppl/Login/login_screen.dart';
import 'package:mppl/navigation/navigation_menu.dart';

class AuthWrapper extends StatelessWidget {
<<<<<<< HEAD
  const AuthWrapper({super.key});

=======
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
<<<<<<< HEAD
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return const NavigationMenu();
        } else {
          return const LoginScreen();
=======
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return NavigationMenu();
        } else {
          return LoginScreen();
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
        }
      },
    );
  }
}

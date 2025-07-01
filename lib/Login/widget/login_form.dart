import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/navigation/navigation_menu.dart';

class LoginForm extends StatefulWidget {
<<<<<<< HEAD
  const LoginForm({super.key});
=======
  const LoginForm({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _isPasswordVisible = false;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      ScaffoldMessenger.of(context)
<<<<<<< HEAD
          .showSnackBar(const SnackBar(content: Text('Login successful')));
      Get.offAll(() => const NavigationMenu());
=======
          .showSnackBar(SnackBar(content: Text('Login successful')));
      Get.offAll(() => NavigationMenu());
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Login failed: ${e.message}')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined,
                      color: Color.fromARGB(255, 1, 169, 121)),
                  labelText: 'Email',
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              obscureText: !_isPasswordVisible,
              decoration: InputDecoration(
<<<<<<< HEAD
                prefixIcon: const Icon(
=======
                prefixIcon: Icon(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                  Icons.lock_outline,
                  color: Color.fromARGB(255, 1, 169, 121),
                ),
                labelText: 'Password',
<<<<<<< HEAD
                border: const OutlineInputBorder(),
=======
                border: OutlineInputBorder(),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {}, child: const Text('Forget Password')),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
<<<<<<< HEAD
                  backgroundColor: const Color.fromARGB(255, 151, 217, 127),
=======
                  backgroundColor: Color.fromARGB(255, 151, 217, 127),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                  side: BorderSide.none,
                  shape: const StadiumBorder(),
                ),
                onPressed: _login,
<<<<<<< HEAD
                child: const Text(
=======
                child: Text(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

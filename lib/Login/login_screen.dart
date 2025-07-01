import 'package:flutter/material.dart';
import 'package:mppl/Login/widget/login_form.dart';
import 'package:mppl/Login/widget/login_footer_widget.dart';
import 'package:mppl/Login/widget/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
<<<<<<< HEAD
  const LoginScreen({super.key});
=======
  const LoginScreen({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
<<<<<<< HEAD
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
=======
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                LoginHeaderWidget(),
                SizedBox(
                  height: 30,
                ),
                LoginForm(),
                LoginFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

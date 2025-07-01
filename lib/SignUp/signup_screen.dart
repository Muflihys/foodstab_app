import 'package:flutter/material.dart';
import 'package:mppl/SignUp/widgets/footer_form.dart';
import 'package:mppl/SignUp/widgets/header_form.dart';
import 'package:mppl/SignUp/widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
<<<<<<< HEAD
  const SignUpScreen({super.key});
=======
  const SignUpScreen({Key? key}) : super(key: key);
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
                FormHeaderWidget(),
                SignUpFormWidget(),
                SignUpFooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

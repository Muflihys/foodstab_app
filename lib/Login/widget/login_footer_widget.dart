import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/SignUp/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
<<<<<<< HEAD
  const LoginFooterWidget({super.key});
=======
  const LoginFooterWidget({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: const Image(
              image: AssetImage('assets/login/google.png'),
              width: 20.0,
            ),
            style: ElevatedButton.styleFrom(
<<<<<<< HEAD
              backgroundColor: const Color.fromARGB(255, 151, 217, 127),
=======
              backgroundColor: Color.fromARGB(255, 151, 217, 127),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            label: const Text(
              'Sign in with Google',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 50),
        TextButton(
<<<<<<< HEAD
          onPressed: () => Get.to(const SignUpScreen()),
=======
          onPressed: () => Get.to(SignUpScreen()),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          child: Text.rich(
            TextSpan(
                text: 'Don\'t Have An Account? ',
                style: Theme.of(context).textTheme.bodySmall,
                children: const [
                  TextSpan(
                      text: 'Sign up',
                      style: TextStyle(color: Color.fromARGB(255, 43, 144, 6)))
                ]),
          ),
        ),
      ],
    );
  }
}

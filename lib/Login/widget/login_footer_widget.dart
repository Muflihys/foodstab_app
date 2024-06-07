import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/SignUp/signup_screen.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({Key? key}) : super(key: key);

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
              backgroundColor: Color.fromARGB(255, 151, 217, 127),
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
          onPressed: () => Get.to(SignUpScreen()),
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

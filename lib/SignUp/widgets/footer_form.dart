import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/Login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: const Image(
              image: AssetImage('assets/login/google.png'),
              width: 20.0,
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 151, 217, 127),
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            label: Text('Sign In with Google',
                style: TextStyle(color: Colors.white)),
          ),
        ),
        TextButton(
          onPressed: () => Get.to(LoginScreen()),
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: "Already Have An Account? ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextSpan(
                text: 'Login',
                style: TextStyle(color: Color.fromARGB(255, 43, 144, 6)))
          ])),
        )
      ],
    );
  }
}

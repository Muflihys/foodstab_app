import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mppl/Login/login_screen.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
<<<<<<< HEAD
    super.key,
  });
=======
    Key? key,
  }) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

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
<<<<<<< HEAD
              backgroundColor: const Color.fromARGB(255, 151, 217, 127),
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            label: const Text('Sign In with Google',
=======
              backgroundColor: Color.fromARGB(255, 151, 217, 127),
              side: BorderSide.none,
              shape: const StadiumBorder(),
            ),
            label: Text('Sign In with Google',
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                style: TextStyle(color: Colors.white)),
          ),
        ),
        TextButton(
<<<<<<< HEAD
          onPressed: () => Get.to(const LoginScreen()),
=======
          onPressed: () => Get.to(LoginScreen()),
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: "Already Have An Account? ",
              style: Theme.of(context).textTheme.bodySmall,
            ),
<<<<<<< HEAD
            const TextSpan(
=======
            TextSpan(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
                text: 'Login',
                style: TextStyle(color: Color.fromARGB(255, 43, 144, 6)))
          ])),
        )
      ],
    );
  }
}

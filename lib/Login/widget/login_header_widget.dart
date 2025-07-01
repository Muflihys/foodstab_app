import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
<<<<<<< HEAD
  const LoginHeaderWidget({super.key});
=======
  const LoginHeaderWidget({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage('assets/login/login.png'),
          height: size.height * 0.2,
        ),
<<<<<<< HEAD
        const SizedBox(
=======
        SizedBox(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          height: 30,
        ),
        Text('Login', style: Theme.of(context).textTheme.headlineMedium),
        Text('Please sign in to continue',
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

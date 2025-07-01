import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
<<<<<<< HEAD
  const FormHeaderWidget({super.key});
=======
  const FormHeaderWidget({Key? key}) : super(key: key);
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage('assets/login/signup.png'),
          height: size.height * 0.2,
        ),
<<<<<<< HEAD
        const SizedBox(
=======
        SizedBox(
>>>>>>> 9e945b9e59f46bfe48ed05525d10ed1676943e6a
          height: 30,
        ),
        Text('Sign', style: Theme.of(context).textTheme.headlineMedium),
        Text('Cretae your own profile',
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

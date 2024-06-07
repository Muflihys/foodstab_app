import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({Key? key}) : super(key: key);

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
        SizedBox(
          height: 30,
        ),
        Text('Sign', style: Theme.of(context).textTheme.headlineMedium),
        Text('Cretae your own profile',
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

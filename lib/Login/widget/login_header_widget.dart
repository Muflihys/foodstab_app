import 'package:flutter/material.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({Key? key}) : super(key: key);

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
        SizedBox(
          height: 30,
        ),
        Text('Login', style: Theme.of(context).textTheme.headlineMedium),
        Text('Please sign in to continue',
            style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}

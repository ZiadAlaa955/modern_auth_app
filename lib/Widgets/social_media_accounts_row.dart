import 'package:flutter/material.dart';

class SocialMediaAccountsRow extends StatelessWidget {
  const SocialMediaAccountsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: 30,
        ),
        Image(
          height: 40,
          image: AssetImage('assets/images/facebook.png'),
        ),
        Image(
          height: 40,
          image: AssetImage('assets/images/google.png'),
        ),
        Image(
          height: 40,
          image: AssetImage('assets/images/apple.png'),
        ),
        SizedBox(
          width: 30,
        ),
      ],
    );
  }
}

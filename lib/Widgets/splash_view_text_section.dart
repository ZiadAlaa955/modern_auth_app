import 'package:flutter/material.dart';

class SplashViewTextSection extends StatelessWidget {
  const SplashViewTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'LOREM IPSUM',
          style: TextStyle(
            fontFamily: 'inter',
            fontSize: 22,
            fontWeight: FontWeight.w900,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Lorem Ipsum is a dummy text\n\t\t\t\t\t\t\t used as placeholder',
          style: TextStyle(
            fontFamily: 'inter',
            fontSize: 18,
            color: Colors.grey.shade800,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

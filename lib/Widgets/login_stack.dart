import 'package:flutter/material.dart';

class LoginStack extends StatelessWidget {
  const LoginStack({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.185,
      child: const Stack(
        children: [
          Positioned(
            left: 50,
            child: Image(
              image: AssetImage('assets/images/Rectangle 2.png'),
            ),
          ),
          Positioned(
            left: 0,
            child: Image(
              image: AssetImage('assets/images/Rectangle 1.png'),
            ),
          ),
        ],
      ),
    );
  }
}

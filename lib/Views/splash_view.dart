import 'package:flutter/material.dart';
import 'package:modern_auth_app/Widgets/logo.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 60,
            bottom: 440,
            child: Image(
              image: AssetImage('assets/images/line.png'),
            ),
          ),
          Positioned(
            left: 34,
            bottom: 410,
            child: Image(
              image: AssetImage('assets/images/light.png'),
            ),
          ),
          Positioned(
            left: 120,
            bottom: 470,
            child: Image(
              image: AssetImage('assets/images/line.png'),
            ),
          ),
          Positioned(
            left: 94,
            bottom: 440,
            child: Image(
              image: AssetImage('assets/images/light.png'),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 110,
                ),
                Logo(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

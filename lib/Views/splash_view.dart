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
            top: 240,
            left: 0,
            right: 0,
            child: Image(
              height: 360,
              image: AssetImage('assets/images/welcome.png'),
            ),
          ),
          Positioned(
            left: 60,
            bottom: 470,
            child: Image(
              image: AssetImage('assets/images/line.png'),
            ),
          ),
          Positioned(
            left: 34,
            bottom: 440,
            child: Image(
              image: AssetImage('assets/images/light.png'),
            ),
          ),
          Positioned(
            left: 120,
            bottom: 500,
            child: Image(
              image: AssetImage('assets/images/line.png'),
            ),
          ),
          Positioned(
            left: 94,
            bottom: 470,
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
                Spacer(),
                Text(
                  'LOREM IPSUM',
                  style: TextStyle(
                    fontFamily: 'prime',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:modern_auth_app/Widgets/logo.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 85,
              ),
              Logo(),
            ],
          ),
        ),
      ),
    );
  }
}

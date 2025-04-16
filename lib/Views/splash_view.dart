import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modern_auth_app/Utils/app_router.dart';
import 'package:modern_auth_app/Views/login_view.dart';
import 'package:modern_auth_app/Widgets/logo.dart';
import 'package:modern_auth_app/Widgets/splash_view_text_section.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToSignIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 230,
            left: 0,
            right: 0,
            child: Image(
              height: 320,
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
                  height: 105,
                ),
                Logo(),
                Spacer(),
                SplashViewTextSection(),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void navigateToSignIn() {
    Future.delayed(
      const Duration(seconds: 3),
      () => context.go(AppRouter.loginView),
    );
  }
}

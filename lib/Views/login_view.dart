import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_auth_app/Utils/app_colors.dart';
import 'package:modern_auth_app/Utils/app_router.dart';
import 'package:modern_auth_app/Widgets/auth_navigation_text.dart';
import 'package:modern_auth_app/Widgets/custom_auth_button.dart';
import 'package:modern_auth_app/Widgets/custom_text_field.dart';
import 'package:modern_auth_app/Widgets/logo.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const Positioned(
              left: 50,
              child: Image(
                image: AssetImage('assets/images/Rectangle 2.png'),
              ),
            ),
            const Positioned(
              left: 0,
              child: Image(
                image: AssetImage('assets/images/Rectangle 1.png'),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    const SizedBox(height: 140),
                    const Logo(),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Log in to existing LOGO account',
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 13,
                        color: Colors.grey.shade800,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextField(
                      hintText: 'Username',
                      controller: TextEditingController(),
                      icon: Icons.person_outline_outlined,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      hintText: 'Password',
                      controller: TextEditingController(),
                      icon: Icons.lock_outlined,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontFamily: GoogleFonts.roboto().fontFamily,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const CustomAuthButton(text: 'LOG IN'),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Or sign up using',
                      style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 10,
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
                          width: 10,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AuthNavigationText(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.signupView);
                      },
                      questionText: 'Don’t have an account? ',
                      navigationtext: 'Sign Up',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_auth_app/Widgets/auth_navigation_text.dart';
import 'package:modern_auth_app/Widgets/custom_auth_button.dart';
import 'package:modern_auth_app/Widgets/custom_text_field.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  'Let’s Get Started!',
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Create an account on MNZL to get all features',
                  style: TextStyle(
                    fontFamily: GoogleFonts.roboto().fontFamily,
                    fontSize: 13,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 30),
                CustomTextField(
                  hintText: 'First Name',
                  controller: TextEditingController(),
                  icon: Icons.person_outline_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Last Name',
                  controller: TextEditingController(),
                  icon: Icons.person_outline_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'User Name',
                  controller: TextEditingController(),
                  icon: Icons.person_outline_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Email',
                  controller: TextEditingController(),
                  icon: Icons.email_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Password',
                  controller: TextEditingController(),
                  icon: Icons.lock_outlined,
                ),
                const SizedBox(height: 20),
                CustomTextField(
                  hintText: 'Confirm Password',
                  controller: TextEditingController(),
                  icon: Icons.lock_outlined,
                ),
                const SizedBox(height: 25),
                const CustomAuthButton(text: 'SIGN UP'),
                const SizedBox(height: 20),
                AuthNavigationText(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  questionText: 'Already have an account?',
                  navigationtext: 'Login here',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_auth_app/Utils/app_colors.dart';
import 'package:modern_auth_app/Utils/app_router.dart';
import 'package:modern_auth_app/Widgets/auth_navigation_text.dart';
import 'package:modern_auth_app/Widgets/custom_auth_button.dart';
import 'package:modern_auth_app/Widgets/custom_text_field.dart';
import 'package:modern_auth_app/Widgets/login_stack.dart';
import 'package:modern_auth_app/Widgets/logo.dart';
import 'package:modern_auth_app/Widgets/social_media_accounts_row.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const LoginStack(),
              const Logo(),
              const SizedBox(height: 5),
              Text(
                'Welcome back!',
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 21,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Log in to existing LOGO account',
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 13,
                  color: const Color(0xff515151),
                ),
              ),
              const SizedBox(height: 30),
              CustomTextField(
                hintText: 'Username',
                controller: TextEditingController(),
                icon: Icons.person_outline_outlined,
              ),
              const SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                controller: TextEditingController(),
                icon: Icons.lock_outlined,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(right: 27),
                child: Align(
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
              ),
              const SizedBox(height: 30),
              const CustomAuthButton(text: 'LOG IN'),
              const SizedBox(height: 25),
              Text(
                'Or sign up using',
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              const SocialMediaAccountsRow(),
              const SizedBox(height: 15),
              AuthNavigationText(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.signupView);
                },
                questionText: 'Don’t have an account?',
                navigationtext: 'Sign Up',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

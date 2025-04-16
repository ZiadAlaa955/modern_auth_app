import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modern_auth_app/Utils/app_router.dart';

class AuthNavigationText extends StatelessWidget {
  const AuthNavigationText({
    super.key,
    required this.questionText,
    required this.navigationtext,
    required this.onPressed,
  });

  final String questionText, navigationtext;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          questionText,
          style: TextStyle(
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontSize: 15,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            navigationtext,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontSize: 15,
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}

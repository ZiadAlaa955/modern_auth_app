import 'package:flutter/material.dart';

void main() {
  runApp(const ModernAuthApp());
}

class ModernAuthApp extends StatelessWidget {
  const ModernAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

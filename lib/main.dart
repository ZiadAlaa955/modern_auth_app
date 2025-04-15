import 'package:flutter/material.dart';
import 'package:modern_auth_app/Utils/app_router.dart';

void main() {
  runApp(const ModernAuthApp());
}

class ModernAuthApp extends StatelessWidget {
  const ModernAuthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

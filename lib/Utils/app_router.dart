import 'package:go_router/go_router.dart';
import 'package:modern_auth_app/Views/login_view.dart';
import 'package:modern_auth_app/Views/signup_view.dart';
import 'package:modern_auth_app/Views/splash_view.dart';

class AppRouter {
  static const String splashView = '/';
  static const String loginView = '/login';
  static const String signupView = '/signup';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signupView,
        builder: (context, state) => const SignupView(),
      ),
    ],
  );
}
